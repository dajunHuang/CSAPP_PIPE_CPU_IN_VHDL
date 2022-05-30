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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_0769597595;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_0769597595_init();
    ieee_p_1242562249_init();
    work_a_3632637935_3212880686_init();
    work_a_0031227014_3212880686_init();
    work_a_4124359120_3212880686_init();
    work_a_3219856015_3212880686_init();
    work_a_0067639045_3212880686_init();
    work_a_1238395495_3212880686_init();
    work_a_4095883993_3212880686_init();
    work_a_3948585444_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_4228583400_3212880686_init();
    work_a_1632567566_3212880686_init();
    work_a_3224213119_3212880686_init();
    work_a_0354762624_3212880686_init();
    work_a_1941380655_2372691052_init();


    xsi_register_tops("work_a_1941380655_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_0769597595 = xsi_get_engine_memory("work_p_0769597595");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
