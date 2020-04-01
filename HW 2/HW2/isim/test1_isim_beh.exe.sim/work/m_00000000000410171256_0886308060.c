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
static const char *ng0 = "G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 2/HW2/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Cont_28_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t25[8];
    char t26[8];
    char t29[8];
    char t51[8];
    char t85[8];
    char t90[8];
    char t91[8];
    char t93[8];
    char t115[8];
    char t132[8];
    char t133[8];
    char t136[8];
    char t155[8];
    char t156[8];
    char t160[8];
    char t187[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t27;
    char *t28;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t92;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t134;
    char *t135;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t157;
    char *t158;
    char *t159;
    char *t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    char *t184;
    char *t185;
    char *t186;
    char *t188;
    char *t189;
    char *t190;
    char *t191;
    unsigned int t192;
    unsigned int t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    char *t200;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    memset(t4, 0, 8);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t14) != 0)
        goto LAB6;

LAB7:    t21 = (t4 + 4);
    t22 = *((unsigned int *)t4);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB8;

LAB9:    t86 = *((unsigned int *)t4);
    t87 = (~(t86));
    t88 = *((unsigned int *)t21);
    t89 = (t87 || t88);
    if (t89 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t21) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t90, 8);

LAB16:    t184 = (t0 + 3248);
    t188 = (t184 + 56U);
    t189 = *((char **)t188);
    t190 = (t189 + 56U);
    t191 = *((char **)t190);
    memset(t191, 0, 8);
    t192 = 65535U;
    t193 = t192;
    t194 = (t3 + 4);
    t195 = *((unsigned int *)t3);
    t192 = (t192 & t195);
    t196 = *((unsigned int *)t194);
    t193 = (t193 & t196);
    t197 = (t191 + 4);
    t198 = *((unsigned int *)t191);
    *((unsigned int *)t191) = (t198 | t192);
    t199 = *((unsigned int *)t197);
    *((unsigned int *)t197) = (t199 | t193);
    xsi_driver_vfirst_trans(t184, 0, 15);
    t200 = (t0 + 3168);
    *((int *)t200) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t20 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB7;

LAB8:    t27 = (t0 + 1368U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    t27 = (t29 + 4);
    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 1);
    t33 = (t32 & 1);
    *((unsigned int *)t29) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 1);
    t36 = (t35 & 1);
    *((unsigned int *)t27) = t36;
    memset(t26, 0, 8);
    t37 = (t29 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (~(t38));
    t40 = *((unsigned int *)t29);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t37) != 0)
        goto LAB19;

LAB20:    t44 = (t26 + 4);
    t45 = *((unsigned int *)t26);
    t46 = *((unsigned int *)t44);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB21;

LAB22:    t78 = *((unsigned int *)t26);
    t79 = (~(t78));
    t80 = *((unsigned int *)t44);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t44) > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t26) > 0)
        goto LAB27;

LAB28:    memcpy(t25, t85, 8);

LAB29:    goto LAB9;

LAB10:    t82 = (t0 + 1368U);
    t92 = *((char **)t82);
    memset(t93, 0, 8);
    t82 = (t93 + 4);
    t94 = (t92 + 4);
    t95 = *((unsigned int *)t92);
    t96 = (t95 >> 1);
    t97 = (t96 & 1);
    *((unsigned int *)t93) = t97;
    t98 = *((unsigned int *)t94);
    t99 = (t98 >> 1);
    t100 = (t99 & 1);
    *((unsigned int *)t82) = t100;
    memset(t91, 0, 8);
    t101 = (t93 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (~(t102));
    t104 = *((unsigned int *)t93);
    t105 = (t104 & t103);
    t106 = (t105 & 1U);
    if (t106 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t101) != 0)
        goto LAB35;

LAB36:    t108 = (t91 + 4);
    t109 = *((unsigned int *)t91);
    t110 = *((unsigned int *)t108);
    t111 = (t109 || t110);
    if (t111 > 0)
        goto LAB37;

LAB38:    t128 = *((unsigned int *)t91);
    t129 = (~(t128));
    t130 = *((unsigned int *)t108);
    t131 = (t129 || t130);
    if (t131 > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t108) > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t91) > 0)
        goto LAB43;

LAB44:    memcpy(t90, t132, 8);

LAB45:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 16, t25, 16, t90, 16);
    goto LAB16;

LAB14:    memcpy(t3, t25, 8);
    goto LAB16;

LAB17:    *((unsigned int *)t26) = 1;
    goto LAB20;

LAB19:    t43 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB20;

LAB21:    t48 = (t0 + 1048U);
    t49 = *((char **)t48);
    t48 = (t0 + 1208U);
    t50 = *((char **)t48);
    t52 = *((unsigned int *)t49);
    t53 = *((unsigned int *)t50);
    t54 = (t52 | t53);
    *((unsigned int *)t51) = t54;
    t48 = (t49 + 4);
    t55 = (t50 + 4);
    t56 = (t51 + 4);
    t57 = *((unsigned int *)t48);
    t58 = *((unsigned int *)t55);
    t59 = (t57 | t58);
    *((unsigned int *)t56) = t59;
    t60 = *((unsigned int *)t56);
    t61 = (t60 != 0);
    if (t61 == 1)
        goto LAB30;

LAB31:
LAB32:    goto LAB22;

LAB23:    t82 = (t0 + 1048U);
    t83 = *((char **)t82);
    t82 = (t0 + 1208U);
    t84 = *((char **)t82);
    memset(t85, 0, 8);
    xsi_vlog_unsigned_minus(t85, 16, t83, 16, t84, 16);
    goto LAB24;

LAB25:    xsi_vlog_unsigned_bit_combine(t25, 16, t51, 16, t85, 16);
    goto LAB29;

LAB27:    memcpy(t25, t51, 8);
    goto LAB29;

LAB30:    t62 = *((unsigned int *)t51);
    t63 = *((unsigned int *)t56);
    *((unsigned int *)t51) = (t62 | t63);
    t64 = (t49 + 4);
    t65 = (t50 + 4);
    t66 = *((unsigned int *)t64);
    t67 = (~(t66));
    t68 = *((unsigned int *)t49);
    t69 = (t68 & t67);
    t70 = *((unsigned int *)t65);
    t71 = (~(t70));
    t72 = *((unsigned int *)t50);
    t73 = (t72 & t71);
    t74 = (~(t69));
    t75 = (~(t73));
    t76 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t76 & t74);
    t77 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t77 & t75);
    goto LAB32;

LAB33:    *((unsigned int *)t91) = 1;
    goto LAB36;

LAB35:    t107 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB36;

LAB37:    t112 = (t0 + 1048U);
    t113 = *((char **)t112);
    t112 = (t0 + 1208U);
    t114 = *((char **)t112);
    t116 = *((unsigned int *)t113);
    t117 = *((unsigned int *)t114);
    t118 = (t116 ^ t117);
    *((unsigned int *)t115) = t118;
    t112 = (t113 + 4);
    t119 = (t114 + 4);
    t120 = (t115 + 4);
    t121 = *((unsigned int *)t112);
    t122 = *((unsigned int *)t119);
    t123 = (t121 | t122);
    *((unsigned int *)t120) = t123;
    t124 = *((unsigned int *)t120);
    t125 = (t124 != 0);
    if (t125 == 1)
        goto LAB46;

LAB47:
LAB48:    goto LAB38;

LAB39:    t134 = (t0 + 1368U);
    t135 = *((char **)t134);
    memset(t136, 0, 8);
    t134 = (t136 + 4);
    t137 = (t135 + 4);
    t138 = *((unsigned int *)t135);
    t139 = (t138 >> 2);
    t140 = (t139 & 1);
    *((unsigned int *)t136) = t140;
    t141 = *((unsigned int *)t137);
    t142 = (t141 >> 2);
    t143 = (t142 & 1);
    *((unsigned int *)t134) = t143;
    memset(t133, 0, 8);
    t144 = (t136 + 4);
    t145 = *((unsigned int *)t144);
    t146 = (~(t145));
    t147 = *((unsigned int *)t136);
    t148 = (t147 & t146);
    t149 = (t148 & 1U);
    if (t149 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t144) != 0)
        goto LAB51;

LAB52:    t151 = (t133 + 4);
    t152 = *((unsigned int *)t133);
    t153 = *((unsigned int *)t151);
    t154 = (t152 || t153);
    if (t154 > 0)
        goto LAB53;

LAB54:    t180 = *((unsigned int *)t133);
    t181 = (~(t180));
    t182 = *((unsigned int *)t151);
    t183 = (t181 || t182);
    if (t183 > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t151) > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t133) > 0)
        goto LAB59;

LAB60:    memcpy(t132, t187, 8);

LAB61:    goto LAB40;

LAB41:    xsi_vlog_unsigned_bit_combine(t90, 16, t115, 16, t132, 16);
    goto LAB45;

LAB43:    memcpy(t90, t115, 8);
    goto LAB45;

LAB46:    t126 = *((unsigned int *)t115);
    t127 = *((unsigned int *)t120);
    *((unsigned int *)t115) = (t126 | t127);
    goto LAB48;

LAB49:    *((unsigned int *)t133) = 1;
    goto LAB52;

LAB51:    t150 = (t133 + 4);
    *((unsigned int *)t133) = 1;
    *((unsigned int *)t150) = 1;
    goto LAB52;

LAB53:    t157 = (t0 + 1048U);
    t158 = *((char **)t157);
    t157 = (t0 + 1208U);
    t159 = *((char **)t157);
    memset(t160, 0, 8);
    t157 = (t158 + 4);
    if (*((unsigned int *)t157) != 0)
        goto LAB63;

LAB62:    t161 = (t159 + 4);
    if (*((unsigned int *)t161) != 0)
        goto LAB63;

LAB66:    if (*((unsigned int *)t158) > *((unsigned int *)t159))
        goto LAB64;

LAB65:    memset(t156, 0, 8);
    t163 = (t160 + 4);
    t164 = *((unsigned int *)t163);
    t165 = (~(t164));
    t166 = *((unsigned int *)t160);
    t167 = (t166 & t165);
    t168 = (t167 & 1U);
    if (t168 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t163) != 0)
        goto LAB69;

LAB70:    t170 = (t156 + 4);
    t171 = *((unsigned int *)t156);
    t172 = *((unsigned int *)t170);
    t173 = (t171 || t172);
    if (t173 > 0)
        goto LAB71;

LAB72:    t175 = *((unsigned int *)t156);
    t176 = (~(t175));
    t177 = *((unsigned int *)t170);
    t178 = (t176 || t177);
    if (t178 > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t170) > 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t156) > 0)
        goto LAB77;

LAB78:    memcpy(t155, t179, 8);

LAB79:    goto LAB54;

LAB55:    t184 = (t0 + 1048U);
    t185 = *((char **)t184);
    t184 = (t0 + 1208U);
    t186 = *((char **)t184);
    memset(t187, 0, 8);
    xsi_vlog_unsigned_add(t187, 16, t185, 16, t186, 16);
    goto LAB56;

LAB57:    xsi_vlog_unsigned_bit_combine(t132, 16, t155, 16, t187, 16);
    goto LAB61;

LAB59:    memcpy(t132, t155, 8);
    goto LAB61;

LAB63:    t162 = (t160 + 4);
    *((unsigned int *)t160) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB65;

LAB64:    *((unsigned int *)t160) = 1;
    goto LAB65;

LAB67:    *((unsigned int *)t156) = 1;
    goto LAB70;

LAB69:    t169 = (t156 + 4);
    *((unsigned int *)t156) = 1;
    *((unsigned int *)t169) = 1;
    goto LAB70;

LAB71:    t174 = ((char*)((ng1)));
    goto LAB72;

LAB73:    t179 = ((char*)((ng2)));
    goto LAB74;

LAB75:    xsi_vlog_unsigned_bit_combine(t155, 16, t174, 16, t179, 16);
    goto LAB79;

LAB77:    memcpy(t155, t174, 8);
    goto LAB79;

}


extern void work_m_00000000000410171256_0886308060_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("work_m_00000000000410171256_0886308060", "isim/test1_isim_beh.exe.sim/work/m_00000000000410171256_0886308060.didat");
	xsi_register_executes(pe);
}
