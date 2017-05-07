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
static const char *ng0 = "C:/users/crossover/Desktop/My Mac Desktop/CC311_S1617_14100251/DataMemory_S1617_14100251.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3063503673_3212880686_p_0(char *t0)
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
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 1908);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1052U);
    t9 = *((char **)t2);
    t2 = (t0 + 868U);
    t10 = *((char **)t2);
    t2 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t11);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t16 = (t9 + t15);
    t17 = (t0 + 1952);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 8U);
    xsi_driver_first_trans_delta(t17, 0U, 8U, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t2 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t2);
    t12 = (t11 + 1);
    t22 = (t12 - 0);
    t13 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t12);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t9 = (t3 + t15);
    t10 = (t0 + 1952);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 8U);
    xsi_driver_first_trans_delta(t10, 8U, 8U, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t2 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t2);
    t12 = (t11 + 2);
    t22 = (t12 - 0);
    t13 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t12);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t9 = (t3 + t15);
    t10 = (t0 + 1952);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 8U);
    xsi_driver_first_trans_delta(t10, 16U, 8U, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t2 = (t0 + 868U);
    t6 = *((char **)t2);
    t2 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t2);
    t12 = (t11 + 3);
    t22 = (t12 - 0);
    t13 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t12);
    t14 = (8U * t13);
    t15 = (0 + t14);
    t9 = (t3 + t15);
    t10 = (t0 + 1952);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 8U);
    xsi_driver_first_trans_delta(t10, 24U, 8U, 0LL);
    goto LAB3;

LAB5:    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 776U);
    t9 = *((char **)t2);
    t13 = (31 - 31);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t9 + t15);
    t10 = (t0 + 868U);
    t16 = *((char **)t10);
    t10 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t16, t10);
    t12 = (t11 - 0);
    t23 = (t12 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t17 = (t0 + 1988);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t2, 8U);
    xsi_driver_first_trans_delta(t17, t25, 8U, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t13 = (31 - 23);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t6 = (t0 + 868U);
    t9 = *((char **)t6);
    t6 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t6);
    t12 = (t11 + 1);
    t22 = (t12 - 0);
    t23 = (t22 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t10 = (t0 + 1988);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t10, t25, 8U, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t13 = (31 - 15);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t6 = (t0 + 868U);
    t9 = *((char **)t6);
    t6 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t6);
    t12 = (t11 + 2);
    t22 = (t12 - 0);
    t23 = (t22 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t10 = (t0 + 1988);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t10, t25, 8U, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t13 = (31 - 7);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t3 + t15);
    t6 = (t0 + 868U);
    t9 = *((char **)t6);
    t6 = (t0 + 3952U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t6);
    t12 = (t11 + 3);
    t22 = (t12 - 0);
    t23 = (t22 * 1);
    t24 = (8U * t23);
    t25 = (0U + t24);
    t10 = (t0 + 1988);
    t16 = (t10 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 8U);
    xsi_driver_first_trans_delta(t10, t25, 8U, 0LL);
    goto LAB3;

LAB10:    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB12;

}


extern void work_a_3063503673_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3063503673_3212880686_p_0};
	xsi_register_didat("work_a_3063503673_3212880686", "isim/SingleCycle_S1617_14100251_isim_beh.exe.sim/work/a_3063503673_3212880686.didat");
	xsi_register_executes(pe);
}
