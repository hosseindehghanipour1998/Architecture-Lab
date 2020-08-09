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
static const char *ng0 = "G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/Data_Mem.v";
static int ng1[] = {0, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {2, 0};
static int ng4[] = {1, 0};



static void Initial_33_0(char *t0)
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

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2408);
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

LAB5:    xsi_set_current_line(37, ng0);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB8:    t1 = (t0 + 2408);
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
LAB4:    xsi_set_current_line(35, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2248);
    t16 = (t0 + 2248);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2248);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2408);
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

LAB7:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB7;

LAB9:    xsi_set_current_line(38, ng0);
    t12 = (t0 + 2408);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    t17 = ((char*)((ng4)));
    memset(t14, 0, 8);
    xsi_vlog_signed_rshift(t14, 32, t16, 32, t17, 32);
    t18 = (t0 + 2248);
    t19 = (t0 + 2248);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2248);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 2408);
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

LAB12:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB8;

LAB11:    t32 = *((unsigned int *)t15);
    t33 = *((unsigned int *)t36);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t18, t14, 0, *((unsigned int *)t36), t35);
    goto LAB12;

}

static void Always_41_1(char *t0)
{
    char t6[8];
    char t28[8];
    char t32[8];
    char t41[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    int t61;
    unsigned int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);

LAB13:    xsi_set_current_line(44, ng0);
    t29 = (t0 + 2248);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t33 = (t0 + 2248);
    t34 = (t33 + 72U);
    t35 = *((char **)t34);
    t36 = (t0 + 2248);
    t37 = (t36 + 64U);
    t38 = *((char **)t37);
    t39 = (t0 + 1528U);
    t40 = *((char **)t39);
    t39 = ((char*)((ng4)));
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 32, t40, 16, t39, 32);
    xsi_vlog_generic_get_array_select_value(t32, 8, t31, t35, t38, 2, 1, t41, 32, 2);
    t42 = (t0 + 2248);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t46 = (t0 + 2248);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = (t0 + 2248);
    t50 = (t49 + 64U);
    t51 = *((char **)t50);
    t52 = (t0 + 1528U);
    t53 = *((char **)t52);
    xsi_vlog_generic_get_array_select_value(t45, 8, t44, t48, t51, 2, 1, t53, 16, 2);
    xsi_vlogtype_concat(t28, 16, 16, 2U, t45, 8, t32, 8);
    t52 = (t0 + 2088);
    xsi_vlogvar_assign_value(t52, t28, 0, 0, 16);
    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(47, ng0);

LAB21:    xsi_set_current_line(48, ng0);
    t21 = (t0 + 1688U);
    t22 = *((char **)t21);
    memset(t28, 0, 8);
    t21 = (t28 + 4);
    t29 = (t22 + 4);
    t54 = *((unsigned int *)t22);
    t55 = (t54 >> 8);
    *((unsigned int *)t28) = t55;
    t56 = *((unsigned int *)t29);
    t57 = (t56 >> 8);
    *((unsigned int *)t21) = t57;
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & 255U);
    t59 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t59 & 255U);
    t30 = (t0 + 2248);
    t31 = (t0 + 2248);
    t33 = (t31 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 2248);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = (t0 + 1528U);
    t39 = *((char **)t38);
    xsi_vlog_generic_convert_array_indices(t32, t41, t34, t37, 2, 1, t39, 16, 2);
    t38 = (t32 + 4);
    t60 = *((unsigned int *)t38);
    t61 = (!(t60));
    t40 = (t41 + 4);
    t62 = *((unsigned int *)t40);
    t63 = (!(t62));
    t64 = (t61 && t63);
    if (t64 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 2248);
    t7 = (t0 + 2248);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 2248);
    t29 = (t22 + 64U);
    t30 = *((char **)t29);
    t31 = (t0 + 1528U);
    t33 = *((char **)t31);
    t31 = ((char*)((ng4)));
    memset(t41, 0, 8);
    xsi_vlog_unsigned_add(t41, 32, t33, 16, t31, 32);
    xsi_vlog_generic_convert_array_indices(t28, t32, t21, t30, 2, 1, t41, 32, 2);
    t34 = (t28 + 4);
    t15 = *((unsigned int *)t34);
    t61 = (!(t15));
    t35 = (t32 + 4);
    t16 = *((unsigned int *)t35);
    t63 = (!(t16));
    t64 = (t61 && t63);
    if (t64 == 1)
        goto LAB24;

LAB25:    goto LAB20;

LAB22:    t65 = *((unsigned int *)t32);
    t66 = *((unsigned int *)t41);
    t67 = (t65 - t66);
    t68 = (t67 + 1);
    xsi_vlogvar_assign_value(t30, t28, 0, *((unsigned int *)t41), t68);
    goto LAB23;

LAB24:    t17 = *((unsigned int *)t28);
    t18 = *((unsigned int *)t32);
    t67 = (t17 - t18);
    t68 = (t67 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t32), t68);
    goto LAB25;

}


extern void work_m_00000000001407873261_2813788857_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Always_41_1};
	xsi_register_didat("work_m_00000000001407873261_2813788857", "isim/Data_Mem_Test_1_isim_beh.exe.sim/work/m_00000000001407873261_2813788857.didat");
	xsi_register_executes(pe);
}
