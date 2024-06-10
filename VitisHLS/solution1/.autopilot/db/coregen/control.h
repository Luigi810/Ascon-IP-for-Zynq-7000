// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x18 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x1c : Data signal of c
//        bit 31~0 - c[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x28 : Data signal of m
//        bit 31~0 - m[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of ad
//        bit 31~0 - ad[31:0] (Read/Write)
// 0x34 : Data signal of ad
//        bit 31~0 - ad[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of nsec
//        bit 31~0 - nsec[31:0] (Read/Write)
// 0x40 : Data signal of nsec
//        bit 31~0 - nsec[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of npub
//        bit 31~0 - npub[31:0] (Read/Write)
// 0x4c : Data signal of npub
//        bit 31~0 - npub[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x58 : Data signal of k
//        bit 31~0 - k[63:32] (Read/Write)
// 0x5c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL   0x00
#define CONTROL_ADDR_GIE       0x04
#define CONTROL_ADDR_IER       0x08
#define CONTROL_ADDR_ISR       0x0c
#define CONTROL_ADDR_AP_RETURN 0x10
#define CONTROL_BITS_AP_RETURN 32
#define CONTROL_ADDR_C_DATA    0x18
#define CONTROL_BITS_C_DATA    64
#define CONTROL_ADDR_M_DATA    0x24
#define CONTROL_BITS_M_DATA    64
#define CONTROL_ADDR_AD_DATA   0x30
#define CONTROL_BITS_AD_DATA   64
#define CONTROL_ADDR_NSEC_DATA 0x3c
#define CONTROL_BITS_NSEC_DATA 64
#define CONTROL_ADDR_NPUB_DATA 0x48
#define CONTROL_BITS_NPUB_DATA 64
#define CONTROL_ADDR_K_DATA    0x54
#define CONTROL_BITS_K_DATA    64
