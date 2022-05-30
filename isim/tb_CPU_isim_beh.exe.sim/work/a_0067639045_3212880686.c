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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Dajun/Desktop/y86_64_CPU_SEQ/D_Register.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0067639045_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 776U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2780);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2816);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1052U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2852);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1144U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2888);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1236U);
    t3 = *((char **)t1);
    t1 = (t0 + 2924);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 64U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1328U);
    t3 = *((char **)t1);
    t1 = (t0 + 2960);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 64U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 2780);
    t10 = (t3 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2816);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2852);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)15;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2888);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t7 = (t4 + 40U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)15;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(64U);
    memset(t1, 0, 64U);
    t3 = t1;
    memset(t3, (unsigned char)2, 64U);
    t4 = (t0 + 2924);
    t7 = (t4 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 64U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(64U);
    memset(t1, 0, 64U);
    t3 = t1;
    memset(t3, (unsigned char)2, 64U);
    t4 = (t0 + 2960);
    t7 = (t4 + 32U);
    t10 = *((char **)t7);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 64U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB9;

}


extern void work_a_0067639045_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0067639045_3212880686_p_0};
	xsi_register_didat("work_a_0067639045_3212880686", "isim/tb_CPU_isim_beh.exe.sim/work/a_0067639045_3212880686.didat");
	xsi_register_executes(pe);
}
