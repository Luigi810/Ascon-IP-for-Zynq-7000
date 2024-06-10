#ifndef AXI_ASCON_H
#define AXI_ASCON_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int axi_encrypt(uint64_t c[4],const uint64_t m[2],
				const uint64_t ad[2],uint64_t nsec[2],
				const uint64_t npub[2],const uint64_t k[2]);

int axi_decrypt(uint64_t m[2],uint64_t nsec[2],
				const uint64_t c[4],const uint64_t ad[2],
				const uint64_t npub[2],const uint64_t k[2]);

#endif
