#ifndef AXI_ASCON_H
#define AXI_ASCON_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


typedef struct {
    uint64_t array[4];
} u256;

typedef struct {
    uint64_t array[2];
} u128;


int axi_encrypt(u256 c,const u128 m,
				const u128 ad,u128 nsec,
				const u128 npub,const u128 k);
int axi_decrypt(u128 m, u128 nsec,
				const u256 c, const u128 ad,
				const u128 npub, const u128 k);

#endif
