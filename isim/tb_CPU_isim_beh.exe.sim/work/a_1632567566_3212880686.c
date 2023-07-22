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
static const char *ng0 = "C:/Users/Dajun/Desktop/y86_64_CPU_SEQ/DATA_MEMORY.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_0769597595;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2045698577_1035706684(char *, char *, char *, char *, int );


static void work_a_1632567566_3212880686_p_0(char *t0)
{
    char t15[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    static char *nl0[] = {&&LAB14, &&LAB14, &&LAB14, &&LAB14, &&LAB12, &&LAB14, &&LAB14, &&LAB14, &&LAB13, &&LAB14, &&LAB12, &&LAB14};

LAB0:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)4);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 592U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)10);
    t2 = t9;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t3 = (t0 + 592U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)8);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 2460);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 868U);
    t13 = *((char **)t3);
    t3 = (t0 + 1224U);
    t14 = *((char **)t3);
    t3 = (t14 + 0);
    memcpy(t3, t13, 64U);
    xsi_set_current_line(48, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t1 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t1);
    goto **((char **)t3);

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1224U);
    t4 = *((char **)t3);
    t3 = (t0 + 4532U);
    t7 = ieee_p_1242562249_sub_2045698577_1035706684(IEEE_P_1242562249, t15, t4, t3, 32);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t15);
    t10 = (t0 + 1360U);
    t13 = *((char **)t10);
    t10 = (t13 + 0);
    *((int *)t10) = t16;
    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1360U);
    t4 = *((char **)t3);
    t16 = *((int *)t4);
    t17 = (t16 + 7);
    t3 = ((WORK_P_0769597595) + 672U);
    t7 = *((char **)t3);
    t18 = *((int *)t7);
    t1 = (t17 < t18);
    if (t1 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB3;

LAB12:    xsi_set_current_line(49, ng0);
    t7 = (t0 + 776U);
    t10 = *((char **)t7);
    t7 = (t0 + 1292U);
    t13 = *((char **)t7);
    t7 = (t13 + 0);
    memcpy(t7, t10, 64U);
    goto LAB11;

LAB13:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t3 = (t0 + 1292U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    memcpy(t3, t4, 64U);
    goto LAB11;

LAB14:    xsi_set_current_line(51, ng0);
    goto LAB11;

LAB15:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1292U);
    t10 = *((char **)t3);
    t19 = (63 - 7);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t10 + t21);
    t13 = (t0 + 1360U);
    t14 = *((char **)t13);
    t22 = *((int *)t14);
    t23 = (t22 - 0);
    t24 = (t23 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t13 = (t0 + 2512);
    t27 = (t13 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t3, 8U);
    xsi_driver_first_trans_delta(t13, t26, 8U, 0LL);
    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 15);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 1);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 23);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 2);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 31);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 3);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 39);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 4);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 47);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 5);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 55);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 6);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1292U);
    t4 = *((char **)t3);
    t19 = (63 - 63);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t3 = (t4 + t21);
    t7 = (t0 + 1360U);
    t10 = *((char **)t7);
    t16 = *((int *)t10);
    t17 = (t16 + 7);
    t18 = (t17 - 0);
    t24 = (t18 * 1);
    t25 = (8U * t24);
    t26 = (0U + t25);
    t7 = (t0 + 2512);
    t13 = (t7 + 32U);
    t14 = *((char **)t13);
    t27 = (t14 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t3, 8U);
    xsi_driver_first_trans_delta(t7, t26, 8U, 0LL);
    goto LAB16;

}

static void work_a_1632567566_3212880686_p_1(char *t0)
{
    char t18[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    static char *nl0[] = {&&LAB14, &&LAB14, &&LAB14, &&LAB14, &&LAB14, &&LAB12, &&LAB14, &&LAB14, &&LAB14, &&LAB13, &&LAB14, &&LAB13};

LAB0:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)5);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 592U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)11);
    t2 = t9;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t3 = (t0 + 592U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)9);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(97, ng0);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t18, 0, 64);
    t4 = (t0 + 2548);
    t7 = (t4 + 32U);
    t10 = *((char **)t7);
    t13 = (t10 + 40U);
    t15 = *((char **)t13);
    memcpy(t15, t3, 64U);
    xsi_driver_first_trans_fast_port(t4);

LAB3:    t3 = (t0 + 2468);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 592U);
    t13 = *((char **)t3);
    t14 = *((unsigned char *)t13);
    t3 = (char *)((nl0) + t14);
    goto **((char **)t3);

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 1428U);
    t4 = *((char **)t3);
    t3 = (t0 + 4564U);
    t7 = ieee_p_1242562249_sub_2045698577_1035706684(IEEE_P_1242562249, t18, t4, t3, 32);
    t19 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t18);
    t10 = (t0 + 1496U);
    t13 = *((char **)t10);
    t10 = (t13 + 0);
    *((int *)t10) = t19;
    xsi_set_current_line(85, ng0);
    t3 = (t0 + 1496U);
    t4 = *((char **)t3);
    t19 = *((int *)t4);
    t20 = (t19 + 7);
    t3 = ((WORK_P_0769597595) + 672U);
    t7 = *((char **)t3);
    t21 = *((int *)t7);
    t1 = (t20 < t21);
    if (t1 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB3;

LAB12:    xsi_set_current_line(78, ng0);
    t15 = (t0 + 868U);
    t16 = *((char **)t15);
    t15 = (t0 + 1428U);
    t17 = *((char **)t15);
    t15 = (t17 + 0);
    memcpy(t15, t16, 64U);
    goto LAB11;

LAB13:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t3 = (t0 + 1428U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    memcpy(t3, t4, 64U);
    goto LAB11;

LAB14:    xsi_set_current_line(80, ng0);
    goto LAB11;

LAB15:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 1052U);
    t10 = *((char **)t3);
    t3 = (t0 + 1496U);
    t13 = *((char **)t3);
    t22 = *((int *)t13);
    t23 = (t22 - 0);
    t24 = (t23 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t22);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t10 + t26);
    t15 = (t0 + 1564U);
    t16 = *((char **)t15);
    t27 = (63 - 7);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t15 = (t16 + t29);
    memcpy(t15, t3, 8U);
    xsi_set_current_line(87, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 1);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 15);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(88, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 2);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 23);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(89, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 3);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 31);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(90, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 4);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 39);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(91, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 5);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 47);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(92, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 6);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 55);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(93, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 1496U);
    t7 = *((char **)t3);
    t19 = *((int *)t7);
    t20 = (t19 + 7);
    t21 = (t20 - 0);
    t24 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t20);
    t25 = (8U * t24);
    t26 = (0 + t25);
    t3 = (t4 + t26);
    t10 = (t0 + 1564U);
    t13 = *((char **)t10);
    t27 = (63 - 63);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t10 = (t13 + t29);
    memcpy(t10, t3, 8U);
    xsi_set_current_line(94, ng0);
    t3 = (t0 + 1564U);
    t4 = *((char **)t3);
    t3 = (t0 + 2548);
    t7 = (t3 + 32U);
    t10 = *((char **)t7);
    t13 = (t10 + 40U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 64U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB16;

}


extern void work_a_1632567566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632567566_3212880686_p_0,(void *)work_a_1632567566_3212880686_p_1};
	xsi_register_didat("work_a_1632567566_3212880686", "isim/tb_CPU_isim_beh.exe.sim/work/a_1632567566_3212880686.didat");
	xsi_register_executes(pe);
}
