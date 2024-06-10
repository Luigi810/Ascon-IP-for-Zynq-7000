#ifndef TEMP_H
#define TEMP_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int axi_encrypt(uint8_t c[32],const uint8_t m[16],
				const uint8_t ad[16],uint8_t nsec[16],
				const uint8_t npub[16],const uint8_t k[16]);

int axi_decrypt(uint8_t m[16],uint8_t nsec[16],
				const uint8_t c[32],const uint8_t ad[16],
				const uint8_t npub[16],const uint8_t k[16]);

#endif
