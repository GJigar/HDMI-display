#include "stdio.h"
#include "xparameters.h"
#include "zed_iic.h"
#include "xaxivdma.h"
#include "xscugic.h"
#include "xil_cache.h"
#include "vdma_api.h"
#include "ff.h"

#define VDMA_DEVICE_ID		XPAR_AXI_VDMA_0_DEVICE_ID
#define DDR_BASE_ADDR		XPAR_PS7_DDR_0_S_AXI_BASEADDR//DDR�洢�ռ���ʼ��ַ

#define WIDTH 1920
#define HEIGHT 1080

unsigned int const  FRAME_BUFFER_ADDR =  DDR_BASE_ADDR + 0x1000000 ;//֡�����ַ

void load_sd_bmp(u8 *frame);

int main(){
	zed_iic_t hdmi_out_iic;
	zed_iic_axi_init(&hdmi_out_iic,"IIC Controller",XPAR_AXI_IIC_0_BASEADDR);

	XAxiVdma  vdma_inst;
	//���ò�����VDMA
	run_triple_frame_buffer(
			&vdma_inst,
			VDMA_DEVICE_ID,
			WIDTH,
			HEIGHT,
			FRAME_BUFFER_ADDR,
			0,
			0);

	//��ȡSD���е�ͼƬ
	load_sd_bmp((u8*)FRAME_BUFFER_ADDR);

	return 0;
}

void load_sd_bmp(u8 *frame)
{
 static FATFS fatfs;
 FIL fil;
 u8 bmp_head[54];
 UINT *bmp_width,*bmp_height,*bmp_size;
 UINT br;
 int i;
 BYTE work[FF_MAX_SS];
 FRESULT status;
 //�� FatFs ģ����ע�� /ע��һ�������� (�ļ�ϵͳ���� )
 status = f_mount(&fatfs,"",0);
 if(status != FR_OK){
 	xil_printf("volume is not FAT format\n");
 	//��ʽ��SD��
 	f_mkfs("", FM_FAT32, 0, work, sizeof work);
 	f_mount(&fatfs,"",0);
 }

 //���ļ�
 f_open(&fil,"1.bmp",FA_READ);

 //�ƶ��ļ���дָ�뵽�ļ���ͷ
 f_lseek(&fil,0);

 //��ȡ BMP �ļ�ͷ
 f_read(&fil,bmp_head,54,&br);
 xil_printf("1.bmp head: \n\r");
 for(i=0;i<54;i++)
 {
	 xil_printf(" %x",bmp_head[i]);
 }
 //��ӡ BMP ͼƬ�ֱ��ʺʹ�С
 bmp_width = (UINT *)(bmp_head + 0x12);
 bmp_height = (UINT *)(bmp_head + 0x16);
 bmp_size = (UINT *)(bmp_head + 0x22);
 xil_printf("\n width = %d, height = %d, size = %d bytes \n\r",
 *bmp_width,*bmp_height,*bmp_size);

 //����ͼƬ��д�� DDR
 for(i=*bmp_height-1;i>=0;i--){
 f_read(&fil,frame+i*(*bmp_width)*3,(*bmp_width)*3,&br);
 }

 //�ر��ļ�
 f_close(&fil);

 Xil_DCacheFlush(); //ˢ�� Cache�����ݸ����� DDR3 ��
 xil_printf("show bmp\n\r");
}

