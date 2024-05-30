#include "temp.h"
#include <stdint.h>

#include "ascon.h"
#include "crypto_aead.h"

//prototipo funzione in aead.c
int crypto_aead_decrypt(unsigned char* m, unsigned long long* mlen,
                        unsigned char* nsec, const unsigned char* c,
                        unsigned long long clen, const unsigned char* ad,
                        unsigned long long adlen, const unsigned char* npub,
                        const unsigned char* k);




int axi_decrypt(uint8_t m[16],uint8_t nsec[16],
				const uint8_t c[32],const uint8_t ad[16],
				const uint8_t npub[16],const uint8_t k[16]){

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

	int result=crypto_aead_decrypt(m, &mlen, nsec, c, clen, ad, adlen, npub, k);

	return mlen;
}




//prototipo funzione in aead.c
int crypto_aead_encrypt(unsigned char* c, unsigned long long* clen,
                        const unsigned char* m, unsigned long long mlen,
                        const unsigned char* ad, unsigned long long adlen,
                        const unsigned char* nsec, const unsigned char* npub,
                        const unsigned char* k);


int axi_encrypt(uint8_t c[32],const uint8_t m[16],
				const uint8_t ad[16],uint8_t nsec[16],
				const uint8_t npub[16],const uint8_t k[16]){


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



	int result=crypto_aead_encrypt(c, &clen, m, mlen, ad, adlen, nsec, npub, k);

	return clen;
}



