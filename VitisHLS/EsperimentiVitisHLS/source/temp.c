#include "temp.h"
#include <stdint.h>

#include "ascon.h"
#include "crypto_aead.h"

void u64_to_u8_array(uint64_t a, uint8_t *b){

	#pragma HLS PIPELINE

	int i=0;
	for(i=0;i<8;i++){
		b[7-i]=(a>>i*8)&0xff;
	}
}

//prototipo funzione in aead.c
int crypto_aead_decrypt(unsigned char* m, unsigned long long* mlen,
                        unsigned char* nsec, const unsigned char* c,
                        unsigned long long clen, const unsigned char* ad,
                        unsigned long long adlen, const unsigned char* npub,
                        const unsigned char* k);

int axi_decrypt(uint64_t m[2],uint64_t nsec[2],
				const uint64_t c[4],const uint64_t ad[2],
				const uint64_t npub[2],const uint64_t k[2]){

	#pragma HLS INTERFACE m_axi port=m offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=nsec offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=ad offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=npub offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=k offset=slave bundle=gmem

	#pragma HLS INTERFACE s_axilite port=m bundle=control
	#pragma HLS INTERFACE s_axilite port=nsec bundle=control
	#pragma HLS INTERFACE s_axilite port=c bundle=control
	#pragma HLS INTERFACE s_axilite port=ad bundle=control
	#pragma HLS INTERFACE s_axilite port=npub bundle=control
	#pragma HLS INTERFACE s_axilite port=k bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control


	unsigned long long mlen; //parametro di output
	unsigned long long clen=32;
	unsigned long long adlen=16;


	uint8_t m_u8[16];
	uint8_t nsec_u8[16];
	uint8_t c_u8[32];
	uint8_t ad_u8[16];
	uint8_t npub_u8[16];
	uint8_t k_u8[16];

	u64_to_u8_array(m[0], &m_u8[0]);	//output
	u64_to_u8_array(m[1], &m_u8[8]);

	u64_to_u8_array(nsec[0], &nsec_u8[0]);
	u64_to_u8_array(nsec[1], &nsec_u8[8]);

	u64_to_u8_array(c[0], &c_u8[0]);
	u64_to_u8_array(c[1], &c_u8[8]);
	u64_to_u8_array(c[2], &c_u8[16]);
	u64_to_u8_array(c[3], &c_u8[24]);

	u64_to_u8_array(ad[0], &ad_u8[0]);
	u64_to_u8_array(ad[1], &ad_u8[8]);

	u64_to_u8_array(npub[0], &npub_u8[0]);
	u64_to_u8_array(npub[1], &npub_u8[8]);

	u64_to_u8_array(k[0], &k_u8[0]);
	u64_to_u8_array(k[1], &k_u8[8]);


	int result=crypto_aead_decrypt(m_u8, &mlen, nsec_u8, c_u8, clen, ad_u8, adlen, npub_u8, k_u8);

	return mlen;
}




//prototipo funzione in aead.c
int crypto_aead_encrypt(unsigned char* c, unsigned long long* clen,
                        const unsigned char* m, unsigned long long mlen,
                        const unsigned char* ad, unsigned long long adlen,
                        const unsigned char* nsec, const unsigned char* npub,
                        const unsigned char* k);


int axi_encrypt(uint64_t c[4],const uint64_t m[2],
				const uint64_t ad[2],uint64_t nsec[2],
				const uint64_t npub[2],const uint64_t k[2]){


	#pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=m offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=ad offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=nsec offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=npub offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=k offset=slave bundle=gmem

	#pragma HLS INTERFACE s_axilite port=c bundle=control
	#pragma HLS INTERFACE s_axilite port=m bundle=control
	#pragma HLS INTERFACE s_axilite port=ad bundle=control
	#pragma HLS INTERFACE s_axilite port=nsec bundle=control
	#pragma HLS INTERFACE s_axilite port=npub bundle=control
	#pragma HLS INTERFACE s_axilite port=k bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control


	unsigned long long mlen=16;
	unsigned long long clen;//parametro di output
	unsigned long long adlen=16;

	uint8_t c_u8[32];
	uint8_t m_u8[16];
	uint8_t ad_u8[16];
	uint8_t nsec_u8[16];
	uint8_t npub_u8[16];
	uint8_t k_u8[16];

	u64_to_u8_array(c[0], &c_u8[0]);	//output
	u64_to_u8_array(c[1], &c_u8[8]);
	u64_to_u8_array(c[2], &c_u8[16]);
	u64_to_u8_array(c[3], &c_u8[24]);

	u64_to_u8_array(m[0], &m_u8[0]);
	u64_to_u8_array(m[1], &m_u8[8]);

	u64_to_u8_array(ad[0], &ad_u8[0]);
	u64_to_u8_array(ad[1], &ad_u8[8]);

	u64_to_u8_array(nsec[0], &nsec_u8[0]);
	u64_to_u8_array(nsec[1], &nsec_u8[8]);

	u64_to_u8_array(npub[0], &npub_u8[0]);
	u64_to_u8_array(npub[1], &npub_u8[8]);

	u64_to_u8_array(k[0], &k_u8[0]);
	u64_to_u8_array(k[1], &k_u8[8]);

	int result=crypto_aead_encrypt(c_u8, &clen, m_u8, mlen, ad_u8, adlen, nsec_u8, npub_u8, k_u8);

	return clen;
}



