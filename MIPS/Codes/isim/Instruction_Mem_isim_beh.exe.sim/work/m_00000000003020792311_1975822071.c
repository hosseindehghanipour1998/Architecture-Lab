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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/Instruction_Mem.v";
static int ng1[] = {0, 0};
static int ng2[] = {256, 0};
static int ng3[] = {2, 0};
static int ng4[] = {1, 0};



static void Initial_30_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:    xsi_set_current_line(34, ng0);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB8:    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB9;

LAB10:
LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 1608);
    t16 = (t0 + 1608);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 1608);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 1768);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB7;

LAB9:    xsi_set_current_line(35, ng0);
    t12 = (t0 + 1768);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    t17 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_signed_rshift(t14, 32, t16, 32, t17, 32);
    t18 = (t0 + 1608);
    t19 = (t0 + 1608);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 1608);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 1768);
    t28 = (t25 + 56U);
    t37 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t15, t36, t21, t24, 2, 1, t37, 32, 1);
    t38 = (t15 + 4);
    t26 = *((unsigned int *)t38);
    t27 = (!(t26));
    t39 = (t36 + 4);
    t29 = *((unsigned int *)t39);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB11;

LAB12:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 1768);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB8;

LAB11:    t32 = *((unsigned int *)t15);
    t33 = *((unsigned int *)t36);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t18, t14, 0, *((unsigned int *)t36), t35);
    goto LAB12;

}

static void Cont_38_1(char *t0)
{
    char t3[8];
    char t6[8];
    char t15[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
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
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1608);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = (t0 + 1608);
    t11 = (t10 + 64U);
    t12 = *((char **)t11);
    t13 = (t0 + 1048U);
    t14 = *((char **)t13);
    t13 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t14, 16, t13, 32);
    xsi_vlog_generic_get_array_select_value(t6, 8, t5, t9, t12, 2, 1, t15, 32, 2);
    t16 = (t0 + 1608);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t20 = (t0 + 1608);
    t21 = (t20 + 72U);
    t22 = *((char **)t21);
    t23 = (t0 + 1608);
    t24 = (t23 + 64U);
    t25 = *((char **)t24);
    t26 = (t0 + 1048U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t19, 8, t18, t22, t25, 2, 1, t27, 16, 2);
    xsi_vlogtype_concat(t3, 16, 16, 2U, t19, 8, t6, 8);
    t26 = (t0 + 3336);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memset(t31, 0, 8);
    t32 = 65535U;
    t33 = t32;
    t34 = (t3 + 4);
    t35 = *((unsigned int *)t3);
    t32 = (t32 & t35);
    t36 = *((unsigned int *)t34);
    t33 = (t33 & t36);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t38 | t32);
    t39 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t39 | t33);
    xsi_driver_vfirst_trans(t26, 0, 15);
    t40 = (t0 + 3256);
    *((int *)t40) = 1;

LAB1:    return;
}


extern void work_m_00000000003020792311_1975822071_init()
{
	static char *pe[] = {(void *)Initial_30_0,(void *)Cont_38_1};
	xsi_register_didat("work_m_00000000003020792311_1975822071", "isim/Instruction_Mem_isim_beh.exe.sim/work/m_00000000003020792311_1975822071.didat");
	xsi_register_executes(pe);
}
