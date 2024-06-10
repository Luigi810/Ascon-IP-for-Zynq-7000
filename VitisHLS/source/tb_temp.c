#include "axi_ascon.h"

#define ARRAY_SIZE 16

// Prototipo delle funzioni

int axi_encrypt(u256 c,const u128 m,
				const u128 ad,u128 nsec,
				const u128 npub,const u128 k);
int axi_decrypt(u128 m, u128 nsec,
				const u256 c, const u128 ad,
				const u128 npub, const u128 k);


int main(){

	u128 m;
	m.array[0] = 0x123456789abcdef0;  // 0x12345678// 0x9abcdef0
	m.array[1] = 0x0fedcba987654321;   // 0x0fedcba9// 0x87654321

	u128 ad;
	ad.array[0] = 0x1111111122222222;  // 0x11111111// 0x22222222
	ad.array[1] = 0x3333333344444444;   // 0x33333333// 0x44444444

	u128 nsec;
	nsec.array[0] = 0x0000000000000000;  // Non usato
	nsec.array[1] = 0x0000000000000000;   // Non usato

	u128 npub;
	npub.array[0] = 0x5555555566666666;  // 0x66666666
	npub.array[1] = 0x7777777788888888;   // 0x88888888

	u128 k;
	k.array[0] = 0xdeadbeeffeedface;  // 0xdeadbeef0xfeedface
	k.array[1] = 0xabad1deadeadc0de;   // 0xabad1dea0xdeadc0de

	u256 c;

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
		if(m.array[i]!=m_confronto[i])
			result=0;
	}

	if(result)
		printf("successo: m=%llx\n",m.array[0]);
	return 0;
}

