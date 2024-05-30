#include "temp.h"

#define ARRAY_SIZE 16

// Prototipo delle funzioni
int axi_encrypt(uint64_t c[4],const uint64_t m[2],
				const uint64_t ad[2],uint64_t nsec[2],
				const uint64_t npub[2],const uint64_t k[2]);

int axi_decrypt(uint64_t m[2],uint64_t nsec[2],
				const uint64_t c[4],const uint64_t ad[2],
				const uint64_t npub[2],const uint64_t k[2]);


int main(){

	uint64_t m[ARRAY_SIZE] = {
		0x123456789abcdef0,  // 0x12345678// 0x9abcdef0
		0x0fedcba987654321   // 0x0fedcba9// 0x87654321
	};

	uint64_t ad[ARRAY_SIZE] = {
		0x1111111122222222,  // 0x11111111// 0x22222222
		0x3333333344444444   // 0x33333333// 0x44444444
	};

	uint64_t nsec[ARRAY_SIZE] = {
		0x0000000000000000,  // Non usato
		0x0000000000000000   // Non usato
	};

	uint64_t npub[ARRAY_SIZE] = {
		0x5555555566666666,  // 0x66666666
		0x7777777788888888   // 0x88888888
	};

	uint64_t k[ARRAY_SIZE] = {
		0xdeadbeeffeedface,  // 0xdeadbeef0xfeedface
		0xabad1deadeadc0de   // 0xabad1dea0xdeadc0de
	};

	uint64_t c[32];

	//test delle funzioni sviluppate
	printf("encrypt result: %01x\n", axi_encrypt(c,m,ad,nsec,npub,k));

	printf("decrypt result: %01x\n", axi_decrypt(m,nsec,c,ad,npub,k));

	uint64_t m_confronto[ARRAY_SIZE] = {
			0x123456789abcdef0,  // 0x123456780x9abcdef0
			0x0fedcba987654321   // 0x0fedcba90x87654321
		};

	uint8_t result=1;
	uint8_t i=0;
	for(i=0;i<ARRAY_SIZE;i++){
		if(m[i]!=m_confronto[i])
			result=0;
	}

	if(result)
		printf("successo: m=%llx\n",m[0]);
	return 0;
}

