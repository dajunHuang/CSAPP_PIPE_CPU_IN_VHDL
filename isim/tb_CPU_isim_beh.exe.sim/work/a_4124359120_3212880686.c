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
static const char *ng0 = "C:/Users/Dajun/Desktop/y86_64_CPU_SEQ/Select_PC.vhd";



static void work_a_4124359120_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)7);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 960U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)9);
    if (t17 != 0)
        goto LAB8;

LAB9:
LAB10:    t23 = (t0 + 592U);
    t24 = *((char **)t23);
    t23 = (t0 + 2044);
    t25 = (t23 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 64U);
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t29 = (t0 + 2000);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 868U);
    t9 = *((char **)t2);
    t2 = (t0 + 2044);
    t10 = (t2 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 64U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    t14 = (t0 + 1052U);
    t18 = *((char **)t14);
    t14 = (t0 + 2044);
    t19 = (t14 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 64U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB11:    goto LAB2;

}


extern void work_a_4124359120_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4124359120_3212880686_p_0};
	xsi_register_didat("work_a_4124359120_3212880686", "isim/tb_CPU_isim_beh.exe.sim/work/a_4124359120_3212880686.didat");
	xsi_register_executes(pe);
}
