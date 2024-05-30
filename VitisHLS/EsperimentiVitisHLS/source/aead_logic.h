#ifndef AEAD_LOGIC_H
#define AEAD_LOGIC_H

#include "api.h"
#include "ascon.h"
#include "crypto_aead.h"
#include "permutations.h"
#include "printstate.h"
#include "word.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void ascon_state_set(ascon_state_t *a, ascon_state_t b);

void initialize_state(ascon_state_t *s, const unsigned char *k, const unsigned char *npub);
void additional_data_func(ascon_state_t *s, const uint8_t *ad_in, size_t adlen);
void process_data_enc(ascon_state_t *s, const uint8_t *m_in, size_t mlen, uint8_t *c_out);
void process_data_dec(ascon_state_t *s, const uint8_t *c_in, size_t clen, uint8_t *m_out);

#endif
