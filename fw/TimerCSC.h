

// New CSC: "TimerCSC"
// Bitfields: 33

#ifndef TimerCSC_33_h
#include <stdint.h>
#define TimerCSC_33_h 1

// Interface 0: "default_interface"
//   Registers (Units): 20

// Interface: default_interface
  // Register: "CH0_CTRLSTAT"
    #define CH0_CTRLSTAT       *(volatile uint32_t*) (0)  //0x00
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_TimEn_CH0       0     //  T  ,  T  ,  T  ,  F  ;    [1];  0
    #define bf_ResIM_CH0       1     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CntIM_CH0       4     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_OvfIntEn_CH0    7     //  T  ,  T  ,  T  ,  F  ;    [1];  0
  // Register: "CH0_ACTVAL"
    #define CH0_ACTVAL         *(volatile uint32_t*) (4)  //0x04
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_ACTVAL_CH0      0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH0_MAXVAL"
    #define CH0_MAXVAL         *(volatile uint32_t*) (8)  //0x08
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_MAXVAL_CH0      0     //  T  ,  T  ,  T  ,  F  ;   [32];  0
  // Register: "CH0_CCUCTRL0"
    #define CH0_CCUCTRL0       *(volatile uint32_t*) (12)  //0x0c
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM0_CH0        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM0_CH0      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH0_CCUVAL0"
    #define CH0_CCUVAL0        *(volatile uint32_t*) (16)  //0x10
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL0_CH0     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CTRLSTAT"
    #define CH1_CTRLSTAT       *(volatile uint32_t*) (20)  //0x14
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_TimEn_CH1       0     //  T  ,  T  ,  T  ,  F  ;    [1];  0
    #define bf_ResIM_CH1       1     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CntIM_CH1       4     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_OvfIntEn_CH1    7     //  T  ,  T  ,  T  ,  F  ;    [1];  0
  // Register: "CH1_ACTVAL"
    #define CH1_ACTVAL         *(volatile uint32_t*) (24)  //0x18
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_ACTVAL_CH1      0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_MAXVAL"
    #define CH1_MAXVAL         *(volatile uint32_t*) (28)  //0x1c
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_MAXVAL_CH1      0     //  T  ,  T  ,  T  ,  F  ;   [32];  0
  // Register: "CH1_CCUCTRL0"
    #define CH1_CCUCTRL0       *(volatile uint32_t*) (32)  //0x20
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM0_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM0_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL0"
    #define CH1_CCUVAL0        *(volatile uint32_t*) (36)  //0x24
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL0_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CCUCTRL1"
    #define CH1_CCUCTRL1       *(volatile uint32_t*) (40)  //0x28
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM1_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM1_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL1"
    #define CH1_CCUVAL1        *(volatile uint32_t*) (44)  //0x2c
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL1_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CCUCTRL2"
    #define CH1_CCUCTRL2       *(volatile uint32_t*) (48)  //0x30
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM2_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM2_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL2"
    #define CH1_CCUVAL2        *(volatile uint32_t*) (52)  //0x34
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL2_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CCUCTRL3"
    #define CH1_CCUCTRL3       *(volatile uint32_t*) (56)  //0x38
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM3_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM3_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL3"
    #define CH1_CCUVAL3        *(volatile uint32_t*) (60)  //0x3c
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL3_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CCUCTRL4"
    #define CH1_CCUCTRL4       *(volatile uint32_t*) (64)  //0x40
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM4_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM4_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL4"
    #define CH1_CCUVAL4        *(volatile uint32_t*) (68)  //0x44
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL4_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0
  // Register: "CH1_CCUCTRL5"
    #define CH1_CCUCTRL5       *(volatile uint32_t*) (72)  //0x48
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCM5_CH1        0     //  T  ,  T  ,  T  ,  F  ;    [3];  0
    #define bf_CapIM5_CH1      3     //  T  ,  T  ,  T  ,  F  ;    [3];  0
  // Register: "CH1_CCUVAL5"
    #define CH1_CCUVAL5        *(volatile uint32_t*) (76)  //0x4c
    // Contained Bitfields: Position // SwRd, SwWr, HwRd, HwWr; [Size];  Default Value
    #define bf_CCUVAL5_CH1     0     //  T  ,  T  ,  T  ,  T  ;   [32];  0

#endif


