/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004083042015_1733832700_init();
    work_m_00000000004237907559_1989334135_init();
    work_m_00000000003020792311_1975822071_init();
    work_m_00000000000190094972_1495752077_init();
    work_m_00000000003150803466_0345418465_init();
    work_m_00000000002823207308_3674772129_init();
    work_m_00000000001386841999_0967961054_init();
    work_m_00000000000549445928_1938225339_init();
    work_m_00000000001858538439_0462304803_init();
    work_m_00000000003133279337_0103510313_init();
    work_m_00000000003833914984_0886308060_init();
    work_m_00000000004008210109_3148384703_init();
    work_m_00000000003964382766_2910632741_init();
    work_m_00000000002336130593_4024466370_init();
    work_m_00000000001407873261_2813788857_init();
    work_m_00000000003873275020_2520395732_init();
    work_m_00000000000420795003_4219274101_init();
    work_m_00000000003226771435_3515808994_init();
    work_m_00000000001891001969_1316523620_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001891001969_1316523620");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
