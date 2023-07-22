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
static const char *ng0 = "Function srca ended without a return statement";
static const char *ng1 = "Function srcb ended without a return statement";
static const char *ng2 = "Function dste ended without a return statement";
static const char *ng3 = "Function dstm ended without a return statement";



unsigned char work_p_0769597595_sub_1358020565_3680156918(char *t1, unsigned char t2, unsigned char t3)
{
    char t5[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB5, &&LAB5, &&LAB3, &&LAB5, &&LAB3, &&LAB5, &&LAB3, &&LAB5, &&LAB5, &&LAB4, &&LAB3, &&LAB4};

LAB0:    t6 = (t5 + 4U);
    *((unsigned char *)t6) = t2;
    t7 = (t5 + 5U);
    *((unsigned char *)t7) = t3;
    t8 = (char *)((nl0) + t2);
    goto **((char **)t8);

LAB2:    xsi_error(ng0);
    t0 = 0;

LAB1:    return t0;
LAB3:    t0 = t3;
    goto LAB1;

LAB4:    t0 = (unsigned char)4;
    goto LAB1;

LAB5:    t0 = (unsigned char)15;
    goto LAB1;

LAB6:    goto LAB2;

LAB7:    goto LAB2;

LAB8:    goto LAB2;

}

unsigned char work_p_0769597595_sub_1337319780_3680156918(char *t1, unsigned char t2, unsigned char t3)
{
    char t5[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB5, &&LAB5, &&LAB5, &&LAB5, &&LAB3, &&LAB3, &&LAB3, &&LAB5, &&LAB4, &&LAB4, &&LAB4, &&LAB4};

LAB0:    t6 = (t5 + 4U);
    *((unsigned char *)t6) = t2;
    t7 = (t5 + 5U);
    *((unsigned char *)t7) = t3;
    t8 = (char *)((nl0) + t2);
    goto **((char **)t8);

LAB2:    xsi_error(ng1);
    t0 = 0;

LAB1:    return t0;
LAB3:    t0 = t3;
    goto LAB1;

LAB4:    t0 = (unsigned char)4;
    goto LAB1;

LAB5:    t0 = (unsigned char)15;
    goto LAB1;

LAB6:    goto LAB2;

LAB7:    goto LAB2;

LAB8:    goto LAB2;

}

unsigned char work_p_0769597595_sub_1162306516_3680156918(char *t1, unsigned char t2, unsigned char t3, unsigned char t4)
{
    char t6[8];
    unsigned char t0;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB3, &&LAB4, &&LAB6, &&LAB6, &&LAB4, &&LAB6, &&LAB5, &&LAB5, &&LAB5, &&LAB5};

LAB0:    t7 = (t6 + 4U);
    *((unsigned char *)t7) = t2;
    t8 = (t6 + 5U);
    *((unsigned char *)t8) = t3;
    t9 = (t6 + 6U);
    *((unsigned char *)t9) = t4;
    t10 = (char *)((nl0) + t2);
    goto **((char **)t10);

LAB2:    xsi_error(ng2);
    t0 = 0;

LAB1:    return t0;
LAB3:    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    t0 = (unsigned char)15;
    goto LAB1;

LAB4:    t0 = t3;
    goto LAB1;

LAB5:    t0 = (unsigned char)4;
    goto LAB1;

LAB6:    t0 = (unsigned char)15;
    goto LAB1;

LAB7:    t0 = t3;
    goto LAB1;

LAB8:    goto LAB2;

LAB10:    goto LAB8;

LAB11:    goto LAB8;

LAB12:    goto LAB2;

LAB13:    goto LAB2;

LAB14:    goto LAB2;

}

unsigned char work_p_0769597595_sub_772799588_3680156918(char *t1, unsigned char t2, unsigned char t3)
{
    char t5[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB3, &&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB3};

LAB0:    t6 = (t5 + 4U);
    *((unsigned char *)t6) = t2;
    t7 = (t5 + 5U);
    *((unsigned char *)t7) = t3;
    t8 = (char *)((nl0) + t2);
    goto **((char **)t8);

LAB2:    xsi_error(ng3);
    t0 = 0;

LAB1:    return t0;
LAB3:    t0 = t3;
    goto LAB1;

LAB4:    t0 = (unsigned char)15;
    goto LAB1;

LAB5:    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_p_0769597595_init()
{
	static char *se[] = {(void *)work_p_0769597595_sub_1358020565_3680156918,(void *)work_p_0769597595_sub_1337319780_3680156918,(void *)work_p_0769597595_sub_1162306516_3680156918,(void *)work_p_0769597595_sub_772799588_3680156918};
	xsi_register_didat("work_p_0769597595", "isim/tb_CPU_isim_beh.exe.sim/work/p_0769597595.didat");
	xsi_register_subprogram_executes(se);
}
