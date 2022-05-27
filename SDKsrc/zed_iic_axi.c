//----------------------------------------------------------------
//      _____
//     *     *
//    *____   *____
//   * *===*   *==*
//  *___*===*___**  AVNET
//       *======*
//        *====*
//---------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
// 
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2013 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------
//
// Create Date:         Jul 01, 2013
// Design Name:         ZED-IIC
// Module Name:         zed_iic_axi.c
// Project Name:        ZED-IIC
// Target Devices:      Zynq
// Avnet Boards:        ZedBoard
//
// Tool versions:       ISE 14.6
//
// Description:         IIC Hardware Abstraction Layer
//                      => AXI_IIC implementation
//
// Dependencies:        
//
// Revision:            Jul 01, 2013: 1.00 Initial version
//
//----------------------------------------------------------------

#include <stdio.h>
#include <malloc.h>
#include <string.h>

// Located in: microblaze_0/include/
#include "xparameters.h"
#include "xstatus.h"

#include "zed_iic.h"

#if defined(XPAR_XIIC_NUM_INSTANCES)

#include "xiic.h"
#include "xil_io.h"
   
/*
 * The page size determines how much data should be written at a time.
 * The write function should be called with this as a maximum byte count.
 */
#define PAGE_SIZE   2


#define ADV7511_ADDR   0x72
#define CARRIER_HDMI_OUT_CONFIG_LEN  (40)
u8 carrier_hdmi_out_config[CARRIER_HDMI_OUT_CONFIG_LEN][3] =
{
	{ADV7511_ADDR>>1, 0x15, 0x01}, // Input YCbCr 4:2:2 with seperate syncs
	{ADV7511_ADDR>>1, 0x16, 0x38}, // Output format 444, Input Color Depth = 8
                                   //    R0x16[  7] = Output Video Format = 0 (444)
                                   //    R0x16[5:4] = Input Video Color Depth = 11 (8 bits/color)
                                   //    R0x16[3:2] = Input Video Style = 10 (style 1)
                                   //    R0x16[  1] = DDR Input Edge = 0 (falling edge)
                                   //    R0x16[  0] = Output Color Space = 0 (RGB)
#if 0
    // HDTV YCbCr (16to235) to RGB (0to255)
	{ADV7511_ADDR>>1, 0x18, 0xE7}, // Color Space Conversion
                                   //    R0x18[  7] = CSC enable = 1 (CSC enabled)
                                   //    R0x18[6:5] = CSC Scaling Factor = 11 (+/- 4.0, -16384 - 16380)
                                   //    R0x18[4:0] = CSC coefficient A1[12:8] = 00111
	{ADV7511_ADDR>>1, 0x19, 0x34}, //    R0x19[7:0] = CSC coefficient A1[ 7:0] =      00110100
	{ADV7511_ADDR>>1, 0x1A, 0x04}, //    R0x1A[  5] = CSC coefficient update
                                   //    R0x1A[4:0] = CSC coefficient A2[12:8] = 00100
	{ADV7511_ADDR>>1, 0x1B, 0xAD}, //    R0x1B[7:0] = CSC coefficient A2[ 7:0] =      10101101
	{ADV7511_ADDR>>1, 0x1C, 0x00}, //    R0x1C[4:0] = CSC coefficient A3[12:8] = 00000
	{ADV7511_ADDR>>1, 0x1D, 0x00}, //    R0x1D[7:0] = CSC coefficient A3[ 7:0] =      00000000
	{ADV7511_ADDR>>1, 0x1E, 0x1C}, //    R0x1E[4:0] = CSC coefficient A4[12:8] = 11100
	{ADV7511_ADDR>>1, 0x1F, 0x1B}, //    R0x1F[7:0] = CSC coefficient A4[ 7:0] =      00011011
	{ADV7511_ADDR>>1, 0x20, 0x1D}, //    R0x20[4:0] = CSC coefficient B1[12:8] = 11101
	{ADV7511_ADDR>>1, 0x21, 0xDC}, //    R0x21[7:0] = CSC coefficient B1[ 7:0] =      11011100
	{ADV7511_ADDR>>1, 0x22, 0x04}, //    R0x22[4:0] = CSC coefficient B2[12:8] = 00100
	{ADV7511_ADDR>>1, 0x23, 0xAD}, //    R0x23[7:0] = CSC coefficient B2[ 7:0] =      10101101
	{ADV7511_ADDR>>1, 0x24, 0x1F}, //    R0x24[4:0] = CSC coefficient B3[12:8] = 11111
	{ADV7511_ADDR>>1, 0x25, 0x24}, //    R0x25[7:0] = CSC coefficient B3[ 7:0] =      00100100
	{ADV7511_ADDR>>1, 0x26, 0x01}, //    R0x26[4:0] = CSC coefficient B4[12:8] = 00001
	{ADV7511_ADDR>>1, 0x27, 0x35}, //    R0x27[7:0] = CSC coefficient B4[ 7:0] =      00110101
	{ADV7511_ADDR>>1, 0x28, 0x00}, //    R0x28[4:0] = CSC coefficient C1[12:8] = 00000
	{ADV7511_ADDR>>1, 0x29, 0x00}, //    R0x29[7:0] = CSC coefficient C1[ 7:0] =      00000000
	{ADV7511_ADDR>>1, 0x2A, 0x04}, //    R0x2A[4:0] = CSC coefficient C2[12:8] = 00100
	{ADV7511_ADDR>>1, 0x2B, 0xAD}, //    R0x2B[7:0] = CSC coefficient C2[ 7:0] =      10101101
	{ADV7511_ADDR>>1, 0x2C, 0x08}, //    R0x2C[4:0] = CSC coefficient C3[12:8] = 01000
	{ADV7511_ADDR>>1, 0x2D, 0x7C}, //    R0x2D[7:0] = CSC coefficient C3[ 7:0] =      01111100
	{ADV7511_ADDR>>1, 0x2E, 0x1B}, //    R0x2E[4:0] = CSC coefficient C4[12:8] = 11011
	{ADV7511_ADDR>>1, 0x2F, 0x77}, //    R0x2F[7:0] = CSC coefficient C4[ 7:0] =      01110111
#else
	// HDTV YCbCr (16to235) to RGB (16to235)
	{ADV7511_ADDR>>1, 0x18, 0xAC},
	{ADV7511_ADDR>>1, 0x19, 0x53},
	{ADV7511_ADDR>>1, 0x1A, 0x08},
	{ADV7511_ADDR>>1, 0x1B, 0x00},
	{ADV7511_ADDR>>1, 0x1C, 0x00},
	{ADV7511_ADDR>>1, 0x1D, 0x00},
	{ADV7511_ADDR>>1, 0x1E, 0x19},
	{ADV7511_ADDR>>1, 0x1F, 0xD6},
	{ADV7511_ADDR>>1, 0x20, 0x1C},
	{ADV7511_ADDR>>1, 0x21, 0x56},
	{ADV7511_ADDR>>1, 0x22, 0x08},
	{ADV7511_ADDR>>1, 0x23, 0x00},
	{ADV7511_ADDR>>1, 0x24, 0x1E},
	{ADV7511_ADDR>>1, 0x25, 0x88},
	{ADV7511_ADDR>>1, 0x26, 0x02},
	{ADV7511_ADDR>>1, 0x27, 0x91},
	{ADV7511_ADDR>>1, 0x28, 0x1F},
	{ADV7511_ADDR>>1, 0x29, 0xFF},
	{ADV7511_ADDR>>1, 0x2A, 0x08},
	{ADV7511_ADDR>>1, 0x2B, 0x00},
	{ADV7511_ADDR>>1, 0x2C, 0x0E},
	{ADV7511_ADDR>>1, 0x2D, 0x85},
	{ADV7511_ADDR>>1, 0x2E, 0x18},
	{ADV7511_ADDR>>1, 0x2F, 0xBE},
#endif
	{ADV7511_ADDR>>1, 0x41, 0x10}, // Power down control
                                   //    R0x41[  6] = PowerDown = 0 (power-up)
	{ADV7511_ADDR>>1, 0x48, 0x08}, // Video Input Justification
                                   //    R0x48[8:7] = Video Input Justification = 01 (right justified)
	{ADV7511_ADDR>>1, 0x55, 0x00}, // Set RGB in AVinfo Frame
                                   //    R0x55[6:5] = Output Format = 00 (RGB)
	{ADV7511_ADDR>>1, 0x56, 0x28}, // Aspect Ratio
                                   //    R0x56[5:4] = Picture Aspect Ratio = 10 (16:9)
                                   //    R0x56[3:0] = Active Format Aspect Ratio = 1000 (Same as Aspect Ratio)
	{ADV7511_ADDR>>1, 0x98, 0x03}, // ADI Recommended Write
	{ADV7511_ADDR>>1, 0x9A, 0xE0}, // ADI Recommended Write
	{ADV7511_ADDR>>1, 0x9C, 0x30}, // PLL Filter R1 Value
	{ADV7511_ADDR>>1, 0x9D, 0x61}, // Set clock divide
	{ADV7511_ADDR>>1, 0xA2, 0xA4}, // ADI Recommended Write
	{ADV7511_ADDR>>1, 0xA3, 0xA4}, // ADI Recommended Write
	{ADV7511_ADDR>>1, 0xAF, 0x04}, // HDMI/DVI Modes
                                   //    R0xAF[  7] = HDCP Enable = 0 (HDCP disabled)
                                   //    R0xAF[  4] = Frame Encryption = 0 (Current frame NOT HDCP encrypted)
                                   //    R0xAF[3:2] = 01 (fixed)
                                   //    R0xAF[  1] = HDMI/DVI Mode Select = 0 (DVI Mode)
    //{ADV7511_ADDR>>1, 0xBA, 0x00}, // Programmable delay for input video clock = 000 = -1.2ns
	{ADV7511_ADDR>>1, 0xBA, 0x60}, // Programmable delay for input video clock = 011 = no delay
	{ADV7511_ADDR>>1, 0xE0, 0xD0}, // Must be set to 0xD0 for proper operation
	{ADV7511_ADDR>>1, 0xF9, 0x00}  // Fixed I2C Address (This should be set to a non-conflicting I2C address)
};



////////////////////////////////////////////////////////////////////////
// Context Data
////////////////////////////////////////////////////////////////////////

struct struct_zed_iic_axi_t
{
	u32 CoreAddress;
};
typedef struct struct_zed_iic_axi_t zed_iic_axi_t;

////////////////////////////////////////////////////////////////////////
// I2C Functions
////////////////////////////////////////////////////////////////////////

// Forward declarations
int zed_iic_axi_GpoRead ( zed_iic_t *pIIC, u32 *pGpioData );
int zed_iic_axi_GpoWrite( zed_iic_t *pIIC, u32 GpioData );
int zed_iic_axi_IicWrite( zed_iic_t *pIIC, u8 ChipAddress, u8 RegAddress,
                                           u8 *pBuffer, u8 ByteCount);
int zed_iic_axi_IicRead ( zed_iic_t *pIIC, u8 ChipAddress, u8 RegAddress,
                                           u8 *pBuffer, u8 ByteCount);
int zed_iic_axi_IicEWrite( zed_iic_t *pIIC, u8 ChipAddress, u16 RegAddress,
                                            u8 *pBuffer, u8 ByteCount);
int zed_iic_axi_IicERead ( zed_iic_t *pIIC, u8 ChipAddress, u16 RegAddress,
                                            u8 *pBuffer, u8 ByteCount);

/******************************************************************************
* This function initializes the IIC controller.
*
* @param    CoreAddress contains the address of the IIC core.
*
* @return   If successfull, returns 1.  Otherwise, returns 0.
*
* @note     None.
*
******************************************************************************/
int zed_iic_axi_init( zed_iic_t *pIIC, char szName[], u32 CoreAddress )
{
   XStatus Status;
   u8 StatusReg;
   u32 timeout = 10000;

   //zed_iic_axi_t *pContext = (zed_iic_axi_t *)malloc( sizeof(zed_iic_axi_t) );
   //if ( pContext == NULL )
   //{
   //   xil_printf("Failed to allocate context data for FMC-IIC-AXI implementation\n\r" );
   //   return 0;
   //}
   zed_iic_axi_t *pContext = (zed_iic_axi_t *) (pIIC->ContextBuffer);
   if ( sizeof(zed_iic_axi_t) > ZED_IIC_CONTEXT_BUFFER_SIZE )
   {
      xil_printf("ZED_IIC_CONTEXT_BUFFER_SIZE is not large enough for fic_iic_xps_t structure (increase to %d)\n\r", sizeof(zed_iic_axi_t) );
      return 0;
   }

   pContext->CoreAddress = CoreAddress;

   /*
    * Initialize the IIC Core.
    */
   Status = XIic_DynInit(pContext->CoreAddress);
   if(Status != XST_SUCCESS)
   {
      xil_printf("Failed to initialize I2C chain\n\r" );
      return 0;
   }

   /*
    * Check to see if the core was initialized successfully
	*/ 
  do
  {
    StatusReg = Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET);
    //xil_printf("[%s] Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET) => 0x%02X\n\r", pContext->szName, StatusReg );
    StatusReg = StatusReg & (XIIC_SR_RX_FIFO_EMPTY_MASK |
                             XIIC_SR_TX_FIFO_EMPTY_MASK |
                             XIIC_SR_BUS_BUSY_MASK);
  } while ( (timeout-- > 0) &&
            (StatusReg != (XIIC_SR_RX_FIFO_EMPTY_MASK | XIIC_SR_TX_FIFO_EMPTY_MASK)) );

   /*
    * Initialize the IIC structure
	*/ 
   pIIC->uVersion = 1;
   strcpy( pIIC->szName, szName );
   pIIC->pContext = (void *)pContext;
   pIIC->fpIicRead   = &zed_iic_axi_IicRead;
   pIIC->fpIicWrite  = &zed_iic_axi_IicWrite;


   //u8 num_bytes;

   int i;

   for ( i = 0; i < CARRIER_HDMI_OUT_CONFIG_LEN; i++ )
   {
      //xil_printf( "[ZedBoard HDMI] IIC Write - Device = 0x%02X, Address = 0x%02X, Data = 0x%02X\n\r", carrier_hdmi_out_config[i][0]<<1, carrier_hdmi_out_config[i][1], carrier_hdmi_out_config[i][2] );
      pIIC->fpIicWrite(pIIC, carrier_hdmi_out_config[i][0], carrier_hdmi_out_config[i][1], &(carrier_hdmi_out_config[i][2]), 1 );
   }

   return 1;
}

/******************************************************************************
* This function writes a buffer of bytes to the IIC chip.
*
* @param    ChipAddress contains the address of the chip.
* @param    RegAddress contains the address of the register to write to.
* @param    pBuffer contains the address of the data to write.
* @param    ByteCount contains the number of bytes in the buffer to be written.
*           Note that this should not exceed the page size as noted by the 
*           constant PAGE_SIZE.
*
* @return   The number of bytes written, a value less than that which was
*           specified as an input indicates an error.
*
* @note     None.
*
******************************************************************************/
int zed_iic_axi_IicWrite(zed_iic_t *pIIC, u8 ChipAddress, u8 RegAddress,
                                          u8 *pBuffer, u8 ByteCount)
{
  u8 SentByteCount;
  u8 WriteBuffer[PAGE_SIZE + 1];
  u8 Index;
  u8 StatusReg;
  zed_iic_axi_t *pContext = (zed_iic_axi_t *)(pIIC->pContext);

#if 1
  // Make sure all the Fifo's are cleared and Bus is Not busy.
  do
  {
    StatusReg = Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET);
    //xil_printf("[%s] Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET) => 0x%02X\n\r", pContext->szName, StatusReg );
    StatusReg = StatusReg & (XIIC_SR_RX_FIFO_EMPTY_MASK |
                             XIIC_SR_TX_FIFO_EMPTY_MASK |
                             XIIC_SR_BUS_BUSY_MASK);
  } while (StatusReg != (XIIC_SR_RX_FIFO_EMPTY_MASK |
			                XIIC_SR_TX_FIFO_EMPTY_MASK));
#endif

  /*
   * A temporary write buffer must be used which contains both the address
   * and the data to be written, put the address in first 
   */
  WriteBuffer[0] = RegAddress;

  /*
   * Put the data in the write buffer following the address.
   */
  for (Index = 0; Index < ByteCount; Index++)
  {
    WriteBuffer[Index + 1] = pBuffer[Index];
  }

  /*
   * Write data at the specified address.
   */
  SentByteCount = XIic_DynSend(pContext->CoreAddress, ChipAddress, WriteBuffer,
                               ByteCount + 1, XIIC_STOP);
  if (SentByteCount < 1) { SentByteCount = 1; }
                               
  // Return the number of bytes written.
  return SentByteCount - 1;
}


/******************************************************************************
* This function reads a number of bytes from an IIC chip into a
* specified buffer.
*
* @param    ChipAddress contains the address of the IIC core.
* @param    RegAddress contains the address of the register to write to.
* @param    pBuffer contains the address of the data buffer to be filled.
* @param    ByteCount contains the number of bytes in the buffer to be read.
*           This value is constrained by the page size of the device such
*           that up to 64K may be read in one call.
*
* @return   The number of bytes read. A value less than the specified input
*           value indicates an error.
*
* @note     None.
*
******************************************************************************/
int zed_iic_axi_IicRead(zed_iic_t *pIIC, u8 ChipAddress, u8 RegAddress,
                                         u8 *pBuffer, u8 ByteCount)
{
  u8 ReceivedByteCount = 0;
  u8 SentByteCount = 0;
  u8 ControlReg;
  u8 StatusReg;
  int cnt = 0;
  zed_iic_axi_t *pContext = (zed_iic_axi_t *)(pIIC->pContext);

#if 1
  // Make sure all the Fifo's are cleared and Bus is Not busy.
  do
  {
    StatusReg = Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET);
    //xil_printf("[%s] Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET) => 0x%02X\n\r", pContext->szName, StatusReg );
    StatusReg = StatusReg & (XIIC_SR_RX_FIFO_EMPTY_MASK |
	                          XIIC_SR_TX_FIFO_EMPTY_MASK |
                             XIIC_SR_BUS_BUSY_MASK);
    if ((StatusReg & XIIC_SR_RX_FIFO_EMPTY_MASK) != XIIC_SR_RX_FIFO_EMPTY_MASK)
    {
      /*
       * The RX buffer is not empty and it is assumed there is a stale
       * message in there.  Attempt to clear out the RX buffer, otherwise
       * this loop spins forever.
       */
      XIic_ReadReg(pContext->CoreAddress, XIIC_DRR_REG_OFFSET);
    }

	/*
	 * Check to see if the bus is busy.  Since we are master, if the bus is
	 * still busy that means that arbitration has been lost.
	 *
	 * According to Product Guide PG090, October 16, 2012:
	 *
	 * Control Register (0x100), Bit 2 MSMS:
	 *
	 * "Master/Slave Mode Select. When this bit is changed from 0 to 1,
	 * the AXI IIC bus interface generates a START condition in master
	 * mode. When this bit is cleared, a STOP condition is generated and
	 * the AXI IIC bus interface switches to slave mode. When this bit is
	 * cleared by the hardware, because arbitration for the bus has been
	 * lost, a STOP condition is not generated. (See also Interrupt(0):
	 * Arbitration Lost in Chapter 3.)"
	 *
	 * According to this, it should be okay to clear the master/slave mode
	 * select to clear a false start condition with a stop and regain
	 * arbitration over the bus.
	 */
    if ((StatusReg & XIIC_SR_BUS_BUSY_MASK) == XIIC_SR_BUS_BUSY_MASK)
    {
    	ControlReg = Xil_In8(pContext->CoreAddress + XIIC_CR_REG_OFFSET);
    	ControlReg = ControlReg & 0xFB;  // Clear the MSMS bit.
    	Xil_Out8(pContext->CoreAddress + XIIC_CR_REG_OFFSET, ControlReg);
    }
  } while (StatusReg != (XIIC_SR_RX_FIFO_EMPTY_MASK |
			                XIIC_SR_TX_FIFO_EMPTY_MASK));
#endif

  // Position the Read pointer to specific location.
  do
  {
    StatusReg = Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET);
    //xil_printf("[%s] Xil_In8(pContext->CoreAddress + XIIC_SR_REG_OFFSET) => 0x%02X\n\r", pContext->szName, StatusReg );
    if(!(StatusReg & XIIC_SR_BUS_BUSY_MASK))
    {
      SentByteCount = XIic_DynSend(pContext->CoreAddress, ChipAddress, 
                                  (u8 *)&RegAddress, 1,
    								        XIIC_REPEATED_START);
    }
    cnt++;
  }while(SentByteCount != 1 && (cnt < 100));
  
  // Error writing chip address so return SentByteCount
  if (SentByteCount < 1) { return SentByteCount; }

  // Receive the data.
  ReceivedByteCount = XIic_DynRecv(pContext->CoreAddress, ChipAddress, pBuffer, 
                                   ByteCount);

  // Return the number of bytes received.
  return ReceivedByteCount;
}


#endif // defined(XPAR_XIIC_NUM_INSTANCES)
