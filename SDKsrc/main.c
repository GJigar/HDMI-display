#include "stdio.h"
#include "xparameters.h"
#include "zed_iic.h"
#include "xaxivdma.h"
#include "xscugic.h"
#include "xil_cache.h"
#include "vdma_api.h"
#include "ff.h"

#define VDMA_DEVICE_ID		XPAR_AXI_VDMA_0_DEVICE_ID
#define DDR_BASE_ADDR		XPAR_PS7_DDR_0_S_AXI_BASEADDR//DDR存储空间起始地址

#define WIDTH 1920
#define HEIGHT 1080

unsigned int const  FRAME_BUFFER_ADDR =  DDR_BASE_ADDR + 0x1000000 ;//帧缓存地址

void load_sd_bmp(u8 *frame);

int main(){
	zed_iic_t hdmi_out_iic;
	zed_iic_axi_init(&hdmi_out_iic,"IIC Controller",XPAR_AXI_IIC_0_BASEADDR);

	XAxiVdma  vdma_inst;
	//配置并启动VDMA
	run_triple_frame_buffer(
			&vdma_inst,
			VDMA_DEVICE_ID,
			WIDTH,
			HEIGHT,
			FRAME_BUFFER_ADDR,
			0,
			0);

	//读取SD卡中的图片
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
 //在 FatFs 模块上注册 /注销一个工作区 (文件系统对象 )
 status = f_mount(&fatfs,"",0);
 if(status != FR_OK){
 	xil_printf("volume is not FAT format\n");
 	//格式化SD卡
 	f_mkfs("", FM_FAT32, 0, work, sizeof work);
 	f_mount(&fatfs,"",0);
 }

 //打开文件
 f_open(&fil,"1.bmp",FA_READ);

 //移动文件读写指针到文件开头
 f_lseek(&fil,0);

 //读取 BMP 文件头
 f_read(&fil,bmp_head,54,&br);
 xil_printf("1.bmp head: \n\r");
 for(i=0;i<54;i++)
 {
	 xil_printf(" %x",bmp_head[i]);
 }
 //打印 BMP 图片分辨率和大小
 bmp_width = (UINT *)(bmp_head + 0x12);
 bmp_height = (UINT *)(bmp_head + 0x16);
 bmp_size = (UINT *)(bmp_head + 0x22);
 xil_printf("\n width = %d, height = %d, size = %d bytes \n\r",
 *bmp_width,*bmp_height,*bmp_size);

 //读出图片，写入 DDR
 for(i=*bmp_height-1;i>=0;i--){
 f_read(&fil,frame+i*(*bmp_width)*3,(*bmp_width)*3,&br);
 }

 //关闭文件
 f_close(&fil);

 Xil_DCacheFlush(); //刷新 Cache，数据更新至 DDR3 中
 xil_printf("show bmp\n\r");
}

