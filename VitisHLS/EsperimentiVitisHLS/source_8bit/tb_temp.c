#include "temp.h"

#define ARRAY_SIZE 16

// Prototipo delle funzioni
int axi_encrypt(uint8_t c[32],const uint8_t m[16],
				const uint8_t ad[16],uint8_t nsec[16],
				const uint8_t npub[16],const uint8_t k[16]);

int axi_decrypt(uint8_t m[16],uint8_t nsec[16],
				const uint8_t c[32],const uint8_t ad[16],
				const uint8_t npub[16],const uint8_t k[16]);

int main(){

	uint8_t m[ARRAY_SIZE] = {
		0x12, 0x34, 0x56, 0x78,  // 0x12345678
		0x9a, 0xbc, 0xde, 0xf0,  // 0x9abcdef0
		0x0f, 0xed, 0xcb, 0xa9,  // 0x0fedcba9
		0x87, 0x65, 0x43, 0x21   // 0x87654321
	};

	uint8_t ad[ARRAY_SIZE] = {
		0x11, 0x11, 0x11, 0x11,  // 0x11111111
		0x22, 0x22, 0x22, 0x22,  // 0x22222222
		0x33, 0x33, 0x33, 0x33,  // 0x33333333
		0x44, 0x44, 0x44, 0x44   // 0x44444444
	};

	uint8_t nsec[ARRAY_SIZE] = {
		0x00, 0x00, 0x00, 0x00,  // Non usato
		0x00, 0x00, 0x00, 0x00,  // Non usato
		0x00, 0x00, 0x00, 0x00,  // Non usato
		0x00, 0x00, 0x00, 0x00   // Non usato
	};

	uint8_t npub[ARRAY_SIZE] = {
		0x55, 0x55, 0x55, 0x55,  // 0x55555555
		0x66, 0x66, 0x66, 0x66,  // 0x66666666
		0x77, 0x77, 0x77, 0x77,  // 0x77777777
		0x88, 0x88, 0x88, 0x88   // 0x88888888
	};

	uint8_t k[ARRAY_SIZE] = {
		0xde, 0xad, 0xbe, 0xef,  // 0xdeadbeef
		0xfe, 0xed, 0xfa, 0xce,  // 0xfeedface
		0xab, 0xad, 0x1d, 0xea,  // 0xabad1dea
		0xde, 0xad, 0xc0, 0xde   // 0xdeadc0de
	};

	uint8_t c[32];

	//test delle funzioni sviluppate
	printf("encrypt result: %01x\n", axi_encrypt(c,m,ad,nsec,npub,k));

	printf("decrypt result: %01x\n", axi_decrypt(m,nsec,c,ad,npub,k));

	uint8_t m_confronto[ARRAY_SIZE] = {
			0x12, 0x34, 0x56, 0x78,  // 0x12345678
			0x9a, 0xbc, 0xde, 0xf0,  // 0x9abcdef0
			0x0f, 0xed, 0xcb, 0xa9,  // 0x0fedcba9
			0x87, 0x65, 0x43, 0x21   // 0x87654321
		};

	uint8_t result=1;
	uint8_t i=0;
	for(i=0;i<ARRAY_SIZE;i++){
		if(m[i]!=m_confronto[i])
			result=0;
	}

	if(result)
		printf("successo: m=%02x\n",m[0]);
	return 0;
}

