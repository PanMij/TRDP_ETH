#include "xparameters.h"
#include "ff.h"
#include "xdevcfg.h"
#include "xil_printf.h"
#include "stdio.h"
#include "sleep.h"

#define kprintf xil_printf

#define SD_FS   "0:"
#define SD_FILE "0:SD_TEST.txt"

static FATFS sd_fatfs;
static BYTE sd_work[FF_MAX_SS];

static FRESULT fatfs_init(FATFS *fatfs, TCHAR *path)
{
    FRESULT res;

    for (int i = 0; i < 10; i++) {
		res = f_mount(fatfs, path, 1);
		xil_printf("No.%d res = %d \r\n", i, res);
		if (res == FR_OK) break;
		sleep(1);
    }
    if(res != FR_OK)
    {
        res = f_mkfs(path, FM_FAT32, 0, sd_work, sizeof(sd_work));
        if (res != FR_OK)
        {
            kprintf("ERROR: Unable to format FATfs.\r\n");
            return res;
        }

        res = f_mount(fatfs, path, 1);
        if(res != FR_OK)
        {
            kprintf("ERROR: f_mount returned %d.\r\n", res);
            return res;
        }
    }
    return res;
}

static FRESULT sd_read_data(char *FileName, uint32_t DestinationAddress, uint32_t ByteLength)
{
    FIL fil;
    FRESULT res;
    UINT br;

    res = f_open(&fil, FileName, FA_READ);
    if(res)
    {
        kprintf("ERROR: %s f_open returned %d\r\n", FileName, res);
        return res;
    }

    res = f_lseek(&fil, 0);
    if(res)
    {
        kprintf("ERROR: %s f_lseek returned %d\r\n", FileName, res);
        return res;
    }

    res = f_read(&fil, (void*)DestinationAddress, ByteLength, &br);
    if(res)
    {
        kprintf("ERROR: %s f_read returned %d\r\n", FileName, res);
        return res;
    }

    res = f_close(&fil);
    if(res)
    {
        kprintf("ERROR: %s f_close returned %d\r\n", FileName, res);
        return res;
    }
    return res;
}

static FRESULT sd_write_data(char *FileName, uint32_t SourceAddress, uint32_t ByteLength)
{
    FIL fil;
    FRESULT res;
    UINT bw;

    res = f_open(&fil, FileName, FA_CREATE_ALWAYS | FA_WRITE);
    if(res)
    {
        kprintf("ERROR: %s f_open returned %d.\r\n", FileName, res);
        return res;
    }

    res = f_lseek(&fil, 0);
    if(res)
    {
        kprintf("ERROR: %s f_lseek returned %d.\r\n", FileName, res);
        return res;
    }

    res = f_write(&fil, (void*) SourceAddress, ByteLength, &bw);
    if(res)
    {
        kprintf("ERROR: %s f_write returned %d.\r\n", FileName, res);
        return res;
    }

    res = f_close(&fil);
    if(res)
    {
        kprintf("ERROR: %s f_close returned %d.\r\n", FileName, res);
        return res;
    }
    return res;
}

static FRESULT sd_rw_test(void)
{
    FRESULT res;
    const char src_str[] = "ZYNQ test SD card write and read!";
    char dest_str[33];
    uint32_t len = strlen(src_str);

    res = sd_write_data(SD_FILE, (uint32_t)src_str, len);
    if(XST_SUCCESS != res)
    {
        kprintf("ERROR: fail to write SD Card.\r\n");
        return res;
    }
    else
    {
        kprintf("Success to write SD Card.\r\n");
    }

    res = sd_read_data(SD_FILE, (uint32_t)dest_str, len);
    if(XST_SUCCESS != res)
    {
        kprintf("ERROR: fail to read SD Card.\r\n");
        return res;
    }
    else
    {
        kprintf("Success to read SD Card; data: %s \r\n", dest_str);
    }

    kprintf("SD Card Write and Read test end.\r\n");
    return res;
 }

static FRESULT scan_files(char *path)
{
    FRESULT res;
    DIR dir;
    UINT i;
    static FILINFO fno;

    res = f_opendir(&dir, path);

    char pathBuff[256];

    if(res == FR_OK)
    {
        for( ; ; )
        {
            res = f_readdir(&dir, &fno);
            if(res != FR_OK || fno.fname[0] == 0)
            {
                break;
            }

            if(fno.fattrib & AM_DIR)
            {
                i = strlen(path);
                sprintf(&path[i], "/%s", fno.fname);
                kprintf("%s \r\n", path);
                res = scan_files(path);
                if(res != FR_OK)
                {
                    break;
                }
                path[i] = 0;
            }
            else
            {
                kprintf("%s/%s \r\n", path, fno.fname);
                strcpy(pathBuff, fno.fname);
            }
        }
    }
    else
    {
        kprintf("Failed - %s", &res);
    }
    f_closedir(&dir);
    return res;
}

int main(void)
{
    kprintf("hello world. \r\n");

    FRESULT res;

    res = fatfs_init(&sd_fatfs, SD_FS);
    if(XST_SUCCESS != res)
    {
        kprintf("ERROR: fail to open SD Card.\r\n");
    }
    else
    {
        kprintf("Success to open SD Card.\r\n");
    }

    sd_rw_test();

    kprintf("Scan Files in %s: \r\n", SD_FS);
    
    scan_files(SD_FS);

    while(1)
    {

    }

    return 0;
}
