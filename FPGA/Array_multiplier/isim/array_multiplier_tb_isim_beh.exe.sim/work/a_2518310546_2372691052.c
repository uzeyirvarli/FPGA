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
static const char *ng0 = "F:/uzeyir/uygulamalar/FPGA_Lesson_projects/Donem_sonu_projesi/Array_multiplier/array_multiplier_tb.vhd";



static void work_a_2518310546_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 6416);
    t4 = (t0 + 3800);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3800);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2518310546_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 6420);
    t4 = (t0 + 3864);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3864);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2518310546_2372691052_p_2(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 6424);
    t4 = (t0 + 3928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3928);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2518310546_2372691052_p_3(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 6428);
    t4 = (t0 + 3992);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, t1);
    t9 = (t0 + 3992);
    xsi_driver_intertial_reject(t9, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2518310546_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2518310546_2372691052_p_0,(void *)work_a_2518310546_2372691052_p_1,(void *)work_a_2518310546_2372691052_p_2,(void *)work_a_2518310546_2372691052_p_3};
	xsi_register_didat("work_a_2518310546_2372691052", "isim/array_multiplier_tb_isim_beh.exe.sim/work/a_2518310546_2372691052.didat");
	xsi_register_executes(pe);
}
