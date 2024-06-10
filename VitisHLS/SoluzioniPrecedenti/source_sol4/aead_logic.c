#include "aead_logic.h"

void initialize_state(ascon_state_t *s, const unsigned char *k, const unsigned char *npub) {
	  /* load key and nonce */
	  const uint64_t K0 = LOADBYTES(k, 8);
	  const uint64_t K1 = LOADBYTES(k + 8, 8);
	  const uint64_t N0 = LOADBYTES(npub, 8);
	  const uint64_t N1 = LOADBYTES(npub + 8, 8);

	  /* initialize */
	  s->x[0] = ASCON_128_IV;
	  s->x[1] = K0;
	  s->x[2] = K1;
	  s->x[3] = N0;
	  s->x[4] = N1;


	  printstate("init 1st key xor", s);
	  P12(s);
	  s->x[3] ^= K0;
	  s->x[4] ^= K1;
	  printstate("init 2nd key xor", s);
}

void additional_data_func(ascon_state_t *s, const uint8_t *ad_in, size_t adlen){
	/* full associated data blocks */
	while (adlen >= ASCON_128_RATE) {
		s->x[0] ^= LOADBYTES(ad_in, 8);
		printstate("absorb adata", s);
		P6(s);
		ad_in += ASCON_128_RATE;
		adlen -= ASCON_128_RATE;
	}
	/* final associated data block */
	s->x[0] ^= LOADBYTES(ad_in, adlen);
	s->x[0] ^= PAD(adlen);
	printstate("pad adata", s);
	P6(s);
}

void process_data_enc(ascon_state_t *s, const uint8_t *m_in, size_t mlen, uint8_t *c_out) {

	while (mlen >= ASCON_128_RATE) {
		s->x[0] ^= LOADBYTES(m_in, 8);
		STOREBYTES(c_out, s->x[0], 8);
		printstate("absorb plaintext", s);
		P6(s);
		m_in += ASCON_128_RATE;
		c_out += ASCON_128_RATE;
		mlen -= ASCON_128_RATE;
	}
	/* final plaintext block */
	s->x[0] ^= LOADBYTES(m_in, mlen);
	STOREBYTES(c_out, s->x[0], mlen);
	s->x[0] ^= PAD(mlen);
	c_out += mlen;
	printstate("pad plaintext", s);


}

void process_data_dec(ascon_state_t *s, const uint8_t *c_in, size_t clen, uint8_t *m_out){
	/* full ciphertext blocks */
	  clen -= CRYPTO_ABYTES;
	  while (clen >= ASCON_128_RATE) {
	    uint64_t c0 = LOADBYTES(c_in, 8);
	    STOREBYTES(m_out, s->x[0] ^ c0, 8);
	    s->x[0] = c0;
	    printstate("insert ciphertext", s);
	    P6(s);
	    m_out += ASCON_128_RATE;
	    c_in += ASCON_128_RATE;
	    clen -= ASCON_128_RATE;
	  }
	  /* final ciphertext block */
	  uint64_t c0 = LOADBYTES(c_in, clen);
	  STOREBYTES(m_out, s->x[0] ^ c0, clen);
	  s->x[0] = CLEARBYTES(s->x[0], clen);
	  s->x[0] |= c0;
	  s->x[0] ^= PAD(clen);
	  c_in += clen;
	  printstate("pad ciphertext", s);
}

void finalize_state_enc(ascon_state_t *s, const uint8_t *k, uint8_t *c_out) {
    /* finalize */
    s->x[1] ^= LOADBYTES(k, 8);
    s->x[2] ^= LOADBYTES(k + 8, 8);
    printstate("final 1st key xor", s);
    P12(s);
    s->x[3] ^= LOADBYTES(k, 8);
    s->x[4] ^= LOADBYTES(k + 8, 8);
    printstate("final 2nd key xor", s);

    /* set tag */
    STOREBYTES(c_out, s->x[3], 8);
    STOREBYTES(c_out + 8, s->x[4], 8);

}

int finalize_state_dec(ascon_state_t *s, const uint8_t *k, const uint8_t *c_out) {
	/* finalize */
	s->x[1] ^= LOADBYTES(k, 8);
	s->x[2] ^= LOADBYTES(k + 8, 8);
	printstate("final 1st key xor", s);
	P12(s);
	s->x[3] ^= LOADBYTES(k, 8);
	s->x[4] ^= LOADBYTES(k + 8, 8);
	printstate("final 2nd key xor", s);

	/* set tag */
	uint8_t t[16];
	STOREBYTES(t, s->x[3], 8);
	STOREBYTES(t + 8, s->x[4], 8);

	/* verify tag (should be constant time, check compiler output) */
	int i;
	int result = 0;
	for (i = 0; i < CRYPTO_ABYTES; ++i) result |= c_out[i] ^ t[i];
	result = (((result - 1) >> 8) & 1) - 1;
	return result;
}

void ascon_state_set(ascon_state_t *a, ascon_state_t b){
	a->x[0]=b.x[0];
	a->x[1]=b.x[1];
	a->x[2]=b.x[2];
	a->x[3]=b.x[3];
	a->x[4]=b.x[4];
}