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
static const char *ng0 = "D:/XilinxProject/New folder/MIPS/Cache.v";
static int ng1[] = {0, 0};
static int ng2[] = {32, 0};
static int ng3[] = {151, 0};
static int ng4[] = {1, 0};
static int ng5[] = {3, 0};
static int ng6[] = {2, 0};
static int ng7[] = {6, 0};
static int ng8[] = {127, 0};
static int ng9[] = {150, 0};
static int ng10[] = {128, 0};



static void Initial_37_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char t25[8];
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
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    char *t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    int t43;

LAB0:    xsi_set_current_line(37, ng0);

LAB2:    xsi_set_current_line(38, ng0);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2728);
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

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB6:    xsi_set_current_line(39, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2088);
    t16 = (t0 + 2088);
    t17 = (t16 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2088);
    t20 = (t19 + 64U);
    t21 = *((char **)t20);
    t22 = (t0 + 2728);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t26 = (t0 + 2088);
    t27 = (t26 + 72U);
    t28 = *((char **)t27);
    t29 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t25, t28, 2, t29, 32, 1);
    t30 = (t14 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t15 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    t37 = (t25 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t36 && t39);
    if (t40 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2728);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2728);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t41 = *((unsigned int *)t15);
    t42 = *((unsigned int *)t25);
    t43 = (t41 + t42);
    xsi_vlogvar_assign_value(t13, t12, 0, t43, 1);
    goto LAB8;

}

static void Always_43_1(char *t0)
{
    char t8[8];
    char t30[8];
    char t41[40];
    char t48[40];
    char t55[8];
    char t59[8];
    char t63[8];
    char t73[8];
    char t99[8];
    char t124[40];
    char t134[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t114;
    char *t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    char *t123;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    int t144;
    int t145;
    int t146;
    int t147;
    int t148;
    int t149;
    int t150;
    int t151;
    int t152;
    int t153;
    int t154;
    int t155;
    int t156;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4216);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 2248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);

LAB56:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 3);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB60;

LAB57:    if (t20 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t8) = 1;

LAB60:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB61;

LAB62:
LAB63:
LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(45, ng0);
    t31 = (t0 + 1208U);
    t32 = *((char **)t31);
    memset(t30, 0, 8);
    t31 = (t30 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t32);
    t35 = (t34 >> 4);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t33);
    t37 = (t36 >> 4);
    *((unsigned int *)t31) = t37;
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 31U);
    t39 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t39 & 31U);
    t40 = (t0 + 2408);
    xsi_vlogvar_assign_value(t40, t30, 0, 0, 4);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t4 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (t11 >> 2);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 2);
    *((unsigned int *)t2) = t14;
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 3U);
    t16 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t16 & 3U);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t8, 0, 0, 4);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2088);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t9 = (t0 + 2088);
    t10 = (t9 + 64U);
    t23 = *((char **)t10);
    t24 = (t0 + 1208U);
    t31 = *((char **)t24);
    memset(t8, 0, 8);
    t24 = (t8 + 4);
    t32 = (t31 + 4);
    t11 = *((unsigned int *)t31);
    t12 = (t11 >> 4);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t32);
    t14 = (t13 >> 4);
    *((unsigned int *)t24) = t14;
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 31U);
    t16 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t16 & 31U);
    xsi_vlog_generic_get_array_select_value(t41, 152, t4, t7, t23, 2, 1, t8, 5, 2);
    t33 = (t0 + 2088);
    t40 = (t33 + 72U);
    t42 = *((char **)t40);
    t43 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t30, 1, t41, t42, 2, t43, 32, 1);
    t44 = (t30 + 4);
    t17 = *((unsigned int *)t44);
    t18 = (~(t17));
    t19 = *((unsigned int *)t30);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(62, ng0);

LAB55:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 3);

LAB16:    goto LAB12;

LAB14:    xsi_set_current_line(48, ng0);

LAB17:    xsi_set_current_line(50, ng0);
    t45 = (t0 + 2088);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t49 = (t0 + 2088);
    t50 = (t49 + 72U);
    t51 = *((char **)t50);
    t52 = (t0 + 2088);
    t53 = (t52 + 64U);
    t54 = *((char **)t53);
    t56 = (t0 + 1208U);
    t57 = *((char **)t56);
    memset(t55, 0, 8);
    t56 = (t55 + 4);
    t58 = (t57 + 4);
    t22 = *((unsigned int *)t57);
    t25 = (t22 >> 4);
    *((unsigned int *)t55) = t25;
    t26 = *((unsigned int *)t58);
    t27 = (t26 >> 4);
    *((unsigned int *)t56) = t27;
    t28 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t28 & 31U);
    t29 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t29 & 31U);
    xsi_vlog_generic_get_array_select_value(t48, 152, t47, t51, t54, 2, 1, t55, 5, 2);
    memset(t59, 0, 8);
    t60 = (t59 + 4);
    t61 = (t48 + 32);
    t62 = (t48 + 36);
    t34 = *((unsigned int *)t61);
    t35 = (t34 >> 0);
    *((unsigned int *)t59) = t35;
    t36 = *((unsigned int *)t62);
    t37 = (t36 >> 0);
    *((unsigned int *)t60) = t37;
    t38 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t38 & 8388607U);
    t39 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t39 & 8388607U);
    t64 = (t0 + 1208U);
    t65 = *((char **)t64);
    memset(t63, 0, 8);
    t64 = (t63 + 4);
    t66 = (t65 + 4);
    t67 = *((unsigned int *)t65);
    t68 = (t67 >> 9);
    *((unsigned int *)t63) = t68;
    t69 = *((unsigned int *)t66);
    t70 = (t69 >> 9);
    *((unsigned int *)t64) = t70;
    t71 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t71 & 8388607U);
    t72 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t72 & 8388607U);
    memset(t73, 0, 8);
    t74 = (t59 + 4);
    t75 = (t63 + 4);
    t76 = *((unsigned int *)t59);
    t77 = *((unsigned int *)t63);
    t78 = (t76 ^ t77);
    t79 = *((unsigned int *)t74);
    t80 = *((unsigned int *)t75);
    t81 = (t79 ^ t80);
    t82 = (t78 | t81);
    t83 = *((unsigned int *)t74);
    t84 = *((unsigned int *)t75);
    t85 = (t83 | t84);
    t86 = (~(t85));
    t87 = (t82 & t86);
    if (t87 != 0)
        goto LAB21;

LAB18:    if (t85 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t73) = 1;

LAB21:    t89 = (t73 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t73);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(57, ng0);

LAB54:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 3, t5, 32);
    t6 = (t0 + 2248);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 3);

LAB24:    goto LAB16;

LAB20:    t88 = (t73 + 4);
    *((unsigned int *)t73) = 1;
    *((unsigned int *)t88) = 1;
    goto LAB21;

LAB22:    xsi_set_current_line(50, ng0);

LAB25:    xsi_set_current_line(51, ng0);
    t95 = (t0 + 2568);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    t98 = ((char*)((ng5)));
    memset(t99, 0, 8);
    t100 = (t97 + 4);
    t101 = (t98 + 4);
    t102 = *((unsigned int *)t97);
    t103 = *((unsigned int *)t98);
    t104 = (t102 ^ t103);
    t105 = *((unsigned int *)t100);
    t106 = *((unsigned int *)t101);
    t107 = (t105 ^ t106);
    t108 = (t104 | t107);
    t109 = *((unsigned int *)t100);
    t110 = *((unsigned int *)t101);
    t111 = (t109 | t110);
    t112 = (~(t111));
    t113 = (t108 & t112);
    if (t113 != 0)
        goto LAB29;

LAB26:    if (t111 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t99) = 1;

LAB29:    t115 = (t99 + 4);
    t116 = *((unsigned int *)t115);
    t117 = (~(t116));
    t118 = *((unsigned int *)t99);
    t119 = (t118 & t117);
    t120 = (t119 != 0);
    if (t120 > 0)
        goto LAB30;

LAB31:
LAB32:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB36;

LAB33:    if (t20 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t8) = 1;

LAB36:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB37;

LAB38:
LAB39:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB43;

LAB40:    if (t20 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t8) = 1;

LAB43:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB44;

LAB45:
LAB46:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB50;

LAB47:    if (t20 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t8) = 1;

LAB50:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB51;

LAB52:
LAB53:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB24;

LAB28:    t114 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t114) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(51, ng0);
    t121 = (t0 + 2088);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    t125 = (t0 + 2088);
    t126 = (t125 + 72U);
    t127 = *((char **)t126);
    t128 = (t0 + 2088);
    t129 = (t128 + 64U);
    t130 = *((char **)t129);
    t131 = (t0 + 2408);
    t132 = (t131 + 56U);
    t133 = *((char **)t132);
    xsi_vlog_generic_get_array_select_value(t124, 152, t123, t127, t130, 2, 1, t133, 4, 2);
    memset(t134, 0, 8);
    t135 = (t134 + 4);
    t136 = (t124 + 4);
    t137 = *((unsigned int *)t124);
    t138 = (t137 >> 0);
    *((unsigned int *)t134) = t138;
    t139 = *((unsigned int *)t136);
    t140 = (t139 >> 0);
    *((unsigned int *)t135) = t140;
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t141 & 4294967295U);
    t142 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t142 & 4294967295U);
    t143 = (t0 + 1928);
    xsi_vlogvar_assign_value(t143, t134, 0, 0, 32);
    goto LAB32;

LAB35:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(52, ng0);
    t23 = (t0 + 2088);
    t24 = (t23 + 56U);
    t31 = *((char **)t24);
    t32 = (t0 + 2088);
    t33 = (t32 + 72U);
    t40 = *((char **)t33);
    t42 = (t0 + 2088);
    t43 = (t42 + 64U);
    t44 = *((char **)t43);
    t45 = (t0 + 2408);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    xsi_vlog_generic_get_array_select_value(t41, 152, t31, t40, t44, 2, 1, t47, 4, 2);
    memset(t30, 0, 8);
    t49 = (t30 + 4);
    t50 = (t41 + 8);
    t51 = (t41 + 12);
    t34 = *((unsigned int *)t50);
    t35 = (t34 >> 0);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t51);
    t37 = (t36 >> 0);
    *((unsigned int *)t49) = t37;
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t39 & 4294967295U);
    t52 = (t0 + 1928);
    xsi_vlogvar_assign_value(t52, t30, 0, 0, 32);
    goto LAB39;

LAB42:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(53, ng0);
    t23 = (t0 + 2088);
    t24 = (t23 + 56U);
    t31 = *((char **)t24);
    t32 = (t0 + 2088);
    t33 = (t32 + 72U);
    t40 = *((char **)t33);
    t42 = (t0 + 2088);
    t43 = (t42 + 64U);
    t44 = *((char **)t43);
    t45 = (t0 + 2408);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    xsi_vlog_generic_get_array_select_value(t41, 152, t31, t40, t44, 2, 1, t47, 4, 2);
    memset(t30, 0, 8);
    t49 = (t30 + 4);
    t50 = (t41 + 16);
    t51 = (t41 + 20);
    t34 = *((unsigned int *)t50);
    t35 = (t34 >> 0);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t51);
    t37 = (t36 >> 0);
    *((unsigned int *)t49) = t37;
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t39 & 4294967295U);
    t52 = (t0 + 1928);
    xsi_vlogvar_assign_value(t52, t30, 0, 0, 32);
    goto LAB46;

LAB49:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(54, ng0);
    t23 = (t0 + 2088);
    t24 = (t23 + 56U);
    t31 = *((char **)t24);
    t32 = (t0 + 2088);
    t33 = (t32 + 72U);
    t40 = *((char **)t33);
    t42 = (t0 + 2088);
    t43 = (t42 + 64U);
    t44 = *((char **)t43);
    t45 = (t0 + 2408);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    xsi_vlog_generic_get_array_select_value(t41, 152, t31, t40, t44, 2, 1, t47, 4, 2);
    memset(t30, 0, 8);
    t49 = (t30 + 4);
    t50 = (t41 + 24);
    t51 = (t41 + 28);
    t34 = *((unsigned int *)t50);
    t35 = (t34 >> 0);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t51);
    t37 = (t36 >> 0);
    *((unsigned int *)t49) = t37;
    t38 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t38 & 4294967295U);
    t39 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t39 & 4294967295U);
    t52 = (t0 + 1928);
    xsi_vlogvar_assign_value(t52, t30, 0, 0, 32);
    goto LAB53;

LAB59:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB60;

LAB61:    xsi_set_current_line(69, ng0);

LAB64:    xsi_set_current_line(70, ng0);
    t23 = (t0 + 3704);
    xsi_process_wait(t23, 1000LL);
    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB65:    xsi_set_current_line(70, ng0);
    t24 = ((char*)((ng4)));
    t31 = (t0 + 2088);
    t32 = (t0 + 2088);
    t33 = (t32 + 72U);
    t40 = *((char **)t33);
    t42 = (t0 + 2088);
    t43 = (t42 + 64U);
    t44 = *((char **)t43);
    t45 = (t0 + 1208U);
    t46 = *((char **)t45);
    memset(t59, 0, 8);
    t45 = (t59 + 4);
    t47 = (t46 + 4);
    t34 = *((unsigned int *)t46);
    t35 = (t34 >> 4);
    *((unsigned int *)t59) = t35;
    t36 = *((unsigned int *)t47);
    t37 = (t36 >> 4);
    *((unsigned int *)t45) = t37;
    t38 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t38 & 31U);
    t39 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t39 & 31U);
    xsi_vlog_generic_convert_array_indices(t30, t55, t40, t44, 2, 1, t59, 5, 2);
    t49 = (t0 + 2088);
    t50 = (t49 + 72U);
    t51 = *((char **)t50);
    t52 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t63, t51, 2, t52, 32, 1);
    t53 = (t30 + 4);
    t67 = *((unsigned int *)t53);
    t144 = (!(t67));
    t54 = (t55 + 4);
    t68 = *((unsigned int *)t54);
    t145 = (!(t68));
    t146 = (t144 && t145);
    t56 = (t63 + 4);
    t69 = *((unsigned int *)t56);
    t147 = (!(t69));
    t148 = (t146 && t147);
    if (t148 == 1)
        goto LAB66;

LAB67:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3704);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB66:    t70 = *((unsigned int *)t55);
    t71 = *((unsigned int *)t63);
    t149 = (t70 + t71);
    xsi_vlogvar_assign_value(t31, t24, 0, t149, 1);
    goto LAB67;

LAB68:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    t3 = (t0 + 2088);
    t5 = (t0 + 2088);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t9 = (t0 + 2088);
    t10 = (t9 + 64U);
    t23 = *((char **)t10);
    t24 = (t0 + 1208U);
    t31 = *((char **)t24);
    memset(t55, 0, 8);
    t24 = (t55 + 4);
    t32 = (t31 + 4);
    t11 = *((unsigned int *)t31);
    t12 = (t11 >> 4);
    *((unsigned int *)t55) = t12;
    t13 = *((unsigned int *)t32);
    t14 = (t13 >> 4);
    *((unsigned int *)t24) = t14;
    t15 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t15 & 31U);
    t16 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t16 & 31U);
    xsi_vlog_generic_convert_array_indices(t8, t30, t7, t23, 2, 1, t55, 5, 2);
    t33 = (t0 + 2088);
    t40 = (t33 + 72U);
    t42 = *((char **)t40);
    t43 = ((char*)((ng8)));
    t44 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t59, t63, t73, ((int*)(t42)), 2, t43, 32, 1, t44, 32, 1);
    t45 = (t8 + 4);
    t17 = *((unsigned int *)t45);
    t144 = (!(t17));
    t46 = (t30 + 4);
    t18 = *((unsigned int *)t46);
    t145 = (!(t18));
    t146 = (t144 && t145);
    t47 = (t59 + 4);
    t19 = *((unsigned int *)t47);
    t147 = (!(t19));
    t148 = (t146 && t147);
    t49 = (t63 + 4);
    t20 = *((unsigned int *)t49);
    t149 = (!(t20));
    t150 = (t148 && t149);
    t50 = (t73 + 4);
    t21 = *((unsigned int *)t50);
    t151 = (!(t21));
    t152 = (t150 && t151);
    if (t152 == 1)
        goto LAB69;

LAB70:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3704);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB69:    t22 = *((unsigned int *)t73);
    t153 = (t22 + 0);
    t25 = *((unsigned int *)t30);
    t26 = *((unsigned int *)t63);
    t154 = (t25 + t26);
    t27 = *((unsigned int *)t59);
    t28 = *((unsigned int *)t63);
    t155 = (t27 - t28);
    t156 = (t155 + 1);
    xsi_vlogvar_assign_value(t3, t4, t153, t154, t156);
    goto LAB70;

LAB71:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t5 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 9);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t5);
    t14 = (t13 >> 9);
    *((unsigned int *)t3) = t14;
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 8388607U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 8388607U);
    t6 = (t0 + 2088);
    t7 = (t0 + 2088);
    t9 = (t7 + 72U);
    t10 = *((char **)t9);
    t23 = (t0 + 2088);
    t24 = (t23 + 64U);
    t31 = *((char **)t24);
    t32 = (t0 + 1208U);
    t33 = *((char **)t32);
    memset(t59, 0, 8);
    t32 = (t59 + 4);
    t40 = (t33 + 4);
    t17 = *((unsigned int *)t33);
    t18 = (t17 >> 4);
    *((unsigned int *)t59) = t18;
    t19 = *((unsigned int *)t40);
    t20 = (t19 >> 4);
    *((unsigned int *)t32) = t20;
    t21 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t21 & 31U);
    t22 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t22 & 31U);
    xsi_vlog_generic_convert_array_indices(t30, t55, t10, t31, 2, 1, t59, 5, 2);
    t42 = (t0 + 2088);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng9)));
    t46 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t63, t73, t99, ((int*)(t44)), 2, t45, 32, 1, t46, 32, 1);
    t47 = (t30 + 4);
    t25 = *((unsigned int *)t47);
    t144 = (!(t25));
    t49 = (t55 + 4);
    t26 = *((unsigned int *)t49);
    t145 = (!(t26));
    t146 = (t144 && t145);
    t50 = (t63 + 4);
    t27 = *((unsigned int *)t50);
    t147 = (!(t27));
    t148 = (t146 && t147);
    t51 = (t73 + 4);
    t28 = *((unsigned int *)t51);
    t149 = (!(t28));
    t150 = (t148 && t149);
    t52 = (t99 + 4);
    t29 = *((unsigned int *)t52);
    t151 = (!(t29));
    t152 = (t150 && t151);
    if (t152 == 1)
        goto LAB72;

LAB73:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB63;

LAB72:    t34 = *((unsigned int *)t99);
    t153 = (t34 + 0);
    t35 = *((unsigned int *)t55);
    t36 = *((unsigned int *)t73);
    t154 = (t35 + t36);
    t37 = *((unsigned int *)t63);
    t38 = *((unsigned int *)t73);
    t155 = (t37 - t38);
    t156 = (t155 + 1);
    xsi_vlogvar_assign_value(t6, t8, t153, t154, t156);
    goto LAB73;

}


extern void work_m_00000000001545862606_2386836622_init()
{
	static char *pe[] = {(void *)Initial_37_0,(void *)Always_43_1};
	xsi_register_didat("work_m_00000000001545862606_2386836622", "isim/mips_complete_test_isim_beh.exe.sim/work/m_00000000001545862606_2386836622.didat");
	xsi_register_executes(pe);
}
