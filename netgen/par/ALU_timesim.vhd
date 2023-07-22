--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_timesim.vhd
-- /___/   /\     Timestamp: Sun Apr 17 12:20:33 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf ALU.pcf -rpw 100 -tpw 0 -ar Structure -tm ALU -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ALU.ncd ALU_timesim.vhd 
-- Device	: 3s5000fg900-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: ALU.ncd
-- Output file	: C:\Users\djhuang_1\Desktop\zazong\FPGA\y86_64_CPU_SEQ\netgen\par\ALU_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ALU
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ALU is
  port (
    clk : in STD_LOGIC := 'X'; 
    Cnd : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    valE : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    icode : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    valA : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    valB : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    valC : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    ifun : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal ifun_0_IBUF_2681 : STD_LOGIC; 
  signal ifun_2_IBUF_2683 : STD_LOGIC; 
  signal valA_0_IBUF_2684 : STD_LOGIC; 
  signal valA_1_IBUF_2685 : STD_LOGIC; 
  signal valA_2_IBUF_2686 : STD_LOGIC; 
  signal valA_3_IBUF_2687 : STD_LOGIC; 
  signal valA_4_IBUF_2689 : STD_LOGIC; 
  signal valA_5_IBUF_2691 : STD_LOGIC; 
  signal valA_6_IBUF_2693 : STD_LOGIC; 
  signal valA_7_IBUF_2695 : STD_LOGIC; 
  signal valC_0_IBUF_2696 : STD_LOGIC; 
  signal valA_8_IBUF_2698 : STD_LOGIC; 
  signal valC_1_IBUF_2699 : STD_LOGIC; 
  signal valA_9_IBUF_2701 : STD_LOGIC; 
  signal valC_2_IBUF_2702 : STD_LOGIC; 
  signal valC_3_IBUF_2704 : STD_LOGIC; 
  signal valC_4_IBUF_2706 : STD_LOGIC; 
  signal valC_5_IBUF_2708 : STD_LOGIC; 
  signal valC_6_IBUF_2710 : STD_LOGIC; 
  signal valC_7_IBUF_2711 : STD_LOGIC; 
  signal valE_0_2712 : STD_LOGIC; 
  signal valC_8_IBUF_2713 : STD_LOGIC; 
  signal valE_1_2714 : STD_LOGIC; 
  signal valC_9_IBUF_2715 : STD_LOGIC; 
  signal valE_2_2716 : STD_LOGIC; 
  signal valE_3_2717 : STD_LOGIC; 
  signal valE_4_2718 : STD_LOGIC; 
  signal valE_5_2719 : STD_LOGIC; 
  signal valE_6_2720 : STD_LOGIC; 
  signal valE_7_2721 : STD_LOGIC; 
  signal valE_8_2722 : STD_LOGIC; 
  signal valE_9_2723 : STD_LOGIC; 
  signal icode_0_IBUF_2724 : STD_LOGIC; 
  signal icode_1_IBUF_2725 : STD_LOGIC; 
  signal icode_2_IBUF_2726 : STD_LOGIC; 
  signal icode_3_IBUF_2727 : STD_LOGIC; 
  signal valA_10_IBUF_2728 : STD_LOGIC; 
  signal valA_11_IBUF_2729 : STD_LOGIC; 
  signal valA_20_IBUF_2730 : STD_LOGIC; 
  signal valA_12_IBUF_2731 : STD_LOGIC; 
  signal valA_21_IBUF_2732 : STD_LOGIC; 
  signal valA_13_IBUF_2733 : STD_LOGIC; 
  signal valA_30_IBUF_2734 : STD_LOGIC; 
  signal valA_22_IBUF_2735 : STD_LOGIC; 
  signal valA_14_IBUF_2736 : STD_LOGIC; 
  signal valA_31_IBUF_2737 : STD_LOGIC; 
  signal valA_23_IBUF_2738 : STD_LOGIC; 
  signal valA_15_IBUF_2739 : STD_LOGIC; 
  signal valA_40_IBUF_2740 : STD_LOGIC; 
  signal valA_32_IBUF_2741 : STD_LOGIC; 
  signal valA_24_IBUF_2742 : STD_LOGIC; 
  signal valA_16_IBUF_2743 : STD_LOGIC; 
  signal valA_41_IBUF_2744 : STD_LOGIC; 
  signal valA_33_IBUF_2745 : STD_LOGIC; 
  signal valA_25_IBUF_2746 : STD_LOGIC; 
  signal valA_17_IBUF_2747 : STD_LOGIC; 
  signal valA_50_IBUF_2749 : STD_LOGIC; 
  signal valA_42_IBUF_2750 : STD_LOGIC; 
  signal valA_34_IBUF_2751 : STD_LOGIC; 
  signal valA_26_IBUF_2752 : STD_LOGIC; 
  signal valA_18_IBUF_2753 : STD_LOGIC; 
  signal valA_51_IBUF_2755 : STD_LOGIC; 
  signal valA_43_IBUF_2756 : STD_LOGIC; 
  signal valA_35_IBUF_2757 : STD_LOGIC; 
  signal valA_27_IBUF_2758 : STD_LOGIC; 
  signal valA_19_IBUF_2759 : STD_LOGIC; 
  signal valA_60_IBUF_2762 : STD_LOGIC; 
  signal valA_52_IBUF_2763 : STD_LOGIC; 
  signal valA_44_IBUF_2764 : STD_LOGIC; 
  signal valA_36_IBUF_2765 : STD_LOGIC; 
  signal valA_28_IBUF_2766 : STD_LOGIC; 
  signal valA_61_IBUF_2769 : STD_LOGIC; 
  signal valA_53_IBUF_2770 : STD_LOGIC; 
  signal valA_45_IBUF_2771 : STD_LOGIC; 
  signal valA_37_IBUF_2772 : STD_LOGIC; 
  signal valA_29_IBUF_2773 : STD_LOGIC; 
  signal valA_62_IBUF_2777 : STD_LOGIC; 
  signal valA_54_IBUF_2778 : STD_LOGIC; 
  signal valA_46_IBUF_2779 : STD_LOGIC; 
  signal valA_38_IBUF_2780 : STD_LOGIC; 
  signal valA_63_IBUF_2784 : STD_LOGIC; 
  signal valA_55_IBUF_2785 : STD_LOGIC; 
  signal valA_47_IBUF_2786 : STD_LOGIC; 
  signal valA_39_IBUF_2787 : STD_LOGIC; 
  signal valA_56_IBUF_2792 : STD_LOGIC; 
  signal valA_48_IBUF_2793 : STD_LOGIC; 
  signal valA_57_IBUF_2798 : STD_LOGIC; 
  signal valA_49_IBUF_2799 : STD_LOGIC; 
  signal valC_10_IBUF_2800 : STD_LOGIC; 
  signal valA_58_IBUF_2806 : STD_LOGIC; 
  signal valC_11_IBUF_2807 : STD_LOGIC; 
  signal valA_59_IBUF_2813 : STD_LOGIC; 
  signal valC_20_IBUF_2814 : STD_LOGIC; 
  signal valC_12_IBUF_2815 : STD_LOGIC; 
  signal valC_21_IBUF_2821 : STD_LOGIC; 
  signal valC_13_IBUF_2822 : STD_LOGIC; 
  signal valC_30_IBUF_2828 : STD_LOGIC; 
  signal valC_22_IBUF_2829 : STD_LOGIC; 
  signal valC_14_IBUF_2830 : STD_LOGIC; 
  signal valC_31_IBUF_2835 : STD_LOGIC; 
  signal valC_23_IBUF_2836 : STD_LOGIC; 
  signal valC_15_IBUF_2837 : STD_LOGIC; 
  signal valC_40_IBUF_2842 : STD_LOGIC; 
  signal valC_32_IBUF_2843 : STD_LOGIC; 
  signal valC_24_IBUF_2844 : STD_LOGIC; 
  signal valC_16_IBUF_2845 : STD_LOGIC; 
  signal valC_41_IBUF_2848 : STD_LOGIC; 
  signal valC_33_IBUF_2849 : STD_LOGIC; 
  signal valC_25_IBUF_2850 : STD_LOGIC; 
  signal valC_17_IBUF_2851 : STD_LOGIC; 
  signal valC_50_IBUF_2854 : STD_LOGIC; 
  signal valC_42_IBUF_2855 : STD_LOGIC; 
  signal valC_34_IBUF_2856 : STD_LOGIC; 
  signal valC_26_IBUF_2857 : STD_LOGIC; 
  signal valC_18_IBUF_2858 : STD_LOGIC; 
  signal valC_51_IBUF_2860 : STD_LOGIC; 
  signal valC_43_IBUF_2861 : STD_LOGIC; 
  signal valC_35_IBUF_2862 : STD_LOGIC; 
  signal valC_27_IBUF_2863 : STD_LOGIC; 
  signal valC_19_IBUF_2864 : STD_LOGIC; 
  signal valC_60_IBUF_2866 : STD_LOGIC; 
  signal valC_52_IBUF_2867 : STD_LOGIC; 
  signal valC_44_IBUF_2868 : STD_LOGIC; 
  signal valC_36_IBUF_2869 : STD_LOGIC; 
  signal valC_28_IBUF_2870 : STD_LOGIC; 
  signal valC_61_IBUF_2871 : STD_LOGIC; 
  signal valC_53_IBUF_2872 : STD_LOGIC; 
  signal valC_45_IBUF_2873 : STD_LOGIC; 
  signal valC_37_IBUF_2874 : STD_LOGIC; 
  signal valC_29_IBUF_2875 : STD_LOGIC; 
  signal valC_62_IBUF_2876 : STD_LOGIC; 
  signal valC_54_IBUF_2877 : STD_LOGIC; 
  signal valC_46_IBUF_2878 : STD_LOGIC; 
  signal valC_38_IBUF_2879 : STD_LOGIC; 
  signal valC_63_IBUF_2880 : STD_LOGIC; 
  signal valC_55_IBUF_2881 : STD_LOGIC; 
  signal valC_47_IBUF_2882 : STD_LOGIC; 
  signal valC_39_IBUF_2883 : STD_LOGIC; 
  signal valC_56_IBUF_2884 : STD_LOGIC; 
  signal valC_48_IBUF_2885 : STD_LOGIC; 
  signal valC_57_IBUF_2886 : STD_LOGIC; 
  signal valC_49_IBUF_2887 : STD_LOGIC; 
  signal valE_10_2888 : STD_LOGIC; 
  signal valC_58_IBUF_2889 : STD_LOGIC; 
  signal valE_11_2890 : STD_LOGIC; 
  signal valC_59_IBUF_2891 : STD_LOGIC; 
  signal valE_20_2892 : STD_LOGIC; 
  signal valE_12_2893 : STD_LOGIC; 
  signal valE_21_2894 : STD_LOGIC; 
  signal valE_13_2895 : STD_LOGIC; 
  signal valE_30_2896 : STD_LOGIC; 
  signal valE_22_2897 : STD_LOGIC; 
  signal valE_14_2898 : STD_LOGIC; 
  signal valE_31_2899 : STD_LOGIC; 
  signal valE_23_2900 : STD_LOGIC; 
  signal valE_15_2901 : STD_LOGIC; 
  signal valE_40_2902 : STD_LOGIC; 
  signal valE_32_2903 : STD_LOGIC; 
  signal valE_24_2904 : STD_LOGIC; 
  signal valE_16_2905 : STD_LOGIC; 
  signal valE_41_2906 : STD_LOGIC; 
  signal valE_33_2907 : STD_LOGIC; 
  signal valE_25_2908 : STD_LOGIC; 
  signal valE_17_2909 : STD_LOGIC; 
  signal valE_50_2910 : STD_LOGIC; 
  signal valE_42_2911 : STD_LOGIC; 
  signal valE_34_2912 : STD_LOGIC; 
  signal valE_26_2913 : STD_LOGIC; 
  signal valE_18_2914 : STD_LOGIC; 
  signal valE_51_2915 : STD_LOGIC; 
  signal valE_43_2916 : STD_LOGIC; 
  signal valE_35_2917 : STD_LOGIC; 
  signal valE_27_2918 : STD_LOGIC; 
  signal valE_19_2919 : STD_LOGIC; 
  signal valE_60_2920 : STD_LOGIC; 
  signal valE_52_2921 : STD_LOGIC; 
  signal valE_44_2922 : STD_LOGIC; 
  signal valE_36_2923 : STD_LOGIC; 
  signal valE_28_2924 : STD_LOGIC; 
  signal valE_61_2925 : STD_LOGIC; 
  signal valE_53_2926 : STD_LOGIC; 
  signal valE_45_2927 : STD_LOGIC; 
  signal valE_37_2928 : STD_LOGIC; 
  signal valE_29_2929 : STD_LOGIC; 
  signal valE_62_2930 : STD_LOGIC; 
  signal valE_54_2931 : STD_LOGIC; 
  signal valE_46_2932 : STD_LOGIC; 
  signal valE_38_2933 : STD_LOGIC; 
  signal valE_63_2934 : STD_LOGIC; 
  signal valE_55_2935 : STD_LOGIC; 
  signal valE_47_2936 : STD_LOGIC; 
  signal valE_39_2937 : STD_LOGIC; 
  signal valE_56_2938 : STD_LOGIC; 
  signal valE_48_2939 : STD_LOGIC; 
  signal valE_57_2940 : STD_LOGIC; 
  signal valE_49_2941 : STD_LOGIC; 
  signal valE_58_2942 : STD_LOGIC; 
  signal valE_59_2943 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal ALU_E_mux0001_0_312 : STD_LOGIC; 
  signal ALU_fun_0_1_2950 : STD_LOGIC; 
  signal ALU_fun_2_1_2951 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal ALU_E_mux0001_0_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_1_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_0_311 : STD_LOGIC; 
  signal ALU_E_mux0001_2_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_0_31_2980 : STD_LOGIC; 
  signal ALU_E_mux0001_3_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_4_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_5_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_6_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_7_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_8_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_9_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_10_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_11_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_20_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_12_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_21_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_13_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_30_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_22_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_14_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_31_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_23_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_15_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_40_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_32_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_24_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_16_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_41_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_33_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_25_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_17_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_50_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_42_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_34_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_26_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_18_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_51_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_43_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_35_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_27_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_19_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_60_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_52_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_44_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_36_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_28_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_61_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_53_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_45_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_37_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_29_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_62_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_54_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_46_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_38_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_63_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_55_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_47_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_39_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_56_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_48_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_57_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_49_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_58_351_SW0_O : STD_LOGIC; 
  signal ALU_E_mux0001_59_351_SW0_O : STD_LOGIC; 
  signal ALU_A_or0002_0 : STD_LOGIC; 
  signal ALU_A_or0001 : STD_LOGIC; 
  signal ALU_A_or0000 : STD_LOGIC; 
  signal ALU_fun_not0001_0 : STD_LOGIC; 
  signal ALU_B_not0001_0 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal ifun_0_INBUF : STD_LOGIC; 
  signal ifun_1_INBUF : STD_LOGIC; 
  signal ifun_2_INBUF : STD_LOGIC; 
  signal valA_0_INBUF : STD_LOGIC; 
  signal valA_1_INBUF : STD_LOGIC; 
  signal valA_2_INBUF : STD_LOGIC; 
  signal valA_3_INBUF : STD_LOGIC; 
  signal valB_0_INBUF : STD_LOGIC; 
  signal valA_4_INBUF : STD_LOGIC; 
  signal valB_1_INBUF : STD_LOGIC; 
  signal valA_5_INBUF : STD_LOGIC; 
  signal valB_2_INBUF : STD_LOGIC; 
  signal valA_6_INBUF : STD_LOGIC; 
  signal valB_3_INBUF : STD_LOGIC; 
  signal valA_7_INBUF : STD_LOGIC; 
  signal valC_0_INBUF : STD_LOGIC; 
  signal valB_4_INBUF : STD_LOGIC; 
  signal valA_8_INBUF : STD_LOGIC; 
  signal valC_1_INBUF : STD_LOGIC; 
  signal valB_5_INBUF : STD_LOGIC; 
  signal valA_9_INBUF : STD_LOGIC; 
  signal valC_2_INBUF : STD_LOGIC; 
  signal valB_6_INBUF : STD_LOGIC; 
  signal valC_3_INBUF : STD_LOGIC; 
  signal valB_7_INBUF : STD_LOGIC; 
  signal valC_4_INBUF : STD_LOGIC; 
  signal valB_8_INBUF : STD_LOGIC; 
  signal valC_5_INBUF : STD_LOGIC; 
  signal valB_9_INBUF : STD_LOGIC; 
  signal valC_6_INBUF : STD_LOGIC; 
  signal valC_7_INBUF : STD_LOGIC; 
  signal valE_0_O : STD_LOGIC; 
  signal valC_8_INBUF : STD_LOGIC; 
  signal valE_1_O : STD_LOGIC; 
  signal valC_9_INBUF : STD_LOGIC; 
  signal valE_2_O : STD_LOGIC; 
  signal valE_3_O : STD_LOGIC; 
  signal valE_4_O : STD_LOGIC; 
  signal valE_5_O : STD_LOGIC; 
  signal valE_6_O : STD_LOGIC; 
  signal valE_7_O : STD_LOGIC; 
  signal valE_8_O : STD_LOGIC; 
  signal valE_9_O : STD_LOGIC; 
  signal icode_0_INBUF : STD_LOGIC; 
  signal icode_1_INBUF : STD_LOGIC; 
  signal icode_2_INBUF : STD_LOGIC; 
  signal icode_3_INBUF : STD_LOGIC; 
  signal valA_10_INBUF : STD_LOGIC; 
  signal valA_11_INBUF : STD_LOGIC; 
  signal valA_20_INBUF : STD_LOGIC; 
  signal valA_12_INBUF : STD_LOGIC; 
  signal valA_21_INBUF : STD_LOGIC; 
  signal valA_13_INBUF : STD_LOGIC; 
  signal valA_30_INBUF : STD_LOGIC; 
  signal valA_22_INBUF : STD_LOGIC; 
  signal valA_14_INBUF : STD_LOGIC; 
  signal valA_31_INBUF : STD_LOGIC; 
  signal valA_23_INBUF : STD_LOGIC; 
  signal valA_15_INBUF : STD_LOGIC; 
  signal valA_40_INBUF : STD_LOGIC; 
  signal valA_32_INBUF : STD_LOGIC; 
  signal valA_24_INBUF : STD_LOGIC; 
  signal valA_16_INBUF : STD_LOGIC; 
  signal valA_41_INBUF : STD_LOGIC; 
  signal valA_33_INBUF : STD_LOGIC; 
  signal valA_25_INBUF : STD_LOGIC; 
  signal valA_17_INBUF : STD_LOGIC; 
  signal valB_10_INBUF : STD_LOGIC; 
  signal valA_50_INBUF : STD_LOGIC; 
  signal valA_42_INBUF : STD_LOGIC; 
  signal valA_34_INBUF : STD_LOGIC; 
  signal valA_26_INBUF : STD_LOGIC; 
  signal valA_18_INBUF : STD_LOGIC; 
  signal valB_11_INBUF : STD_LOGIC; 
  signal valA_51_INBUF : STD_LOGIC; 
  signal valA_43_INBUF : STD_LOGIC; 
  signal valA_35_INBUF : STD_LOGIC; 
  signal valA_27_INBUF : STD_LOGIC; 
  signal valA_19_INBUF : STD_LOGIC; 
  signal valB_20_INBUF : STD_LOGIC; 
  signal valB_12_INBUF : STD_LOGIC; 
  signal valA_60_INBUF : STD_LOGIC; 
  signal valA_52_INBUF : STD_LOGIC; 
  signal valA_44_INBUF : STD_LOGIC; 
  signal valA_36_INBUF : STD_LOGIC; 
  signal valA_28_INBUF : STD_LOGIC; 
  signal valB_21_INBUF : STD_LOGIC; 
  signal valB_13_INBUF : STD_LOGIC; 
  signal valA_61_INBUF : STD_LOGIC; 
  signal valA_53_INBUF : STD_LOGIC; 
  signal valA_45_INBUF : STD_LOGIC; 
  signal valA_37_INBUF : STD_LOGIC; 
  signal valA_29_INBUF : STD_LOGIC; 
  signal valB_30_INBUF : STD_LOGIC; 
  signal valB_22_INBUF : STD_LOGIC; 
  signal valB_14_INBUF : STD_LOGIC; 
  signal valA_62_INBUF : STD_LOGIC; 
  signal valA_54_INBUF : STD_LOGIC; 
  signal valA_46_INBUF : STD_LOGIC; 
  signal valA_38_INBUF : STD_LOGIC; 
  signal valB_31_INBUF : STD_LOGIC; 
  signal valB_23_INBUF : STD_LOGIC; 
  signal valB_15_INBUF : STD_LOGIC; 
  signal valA_63_INBUF : STD_LOGIC; 
  signal valA_55_INBUF : STD_LOGIC; 
  signal valA_47_INBUF : STD_LOGIC; 
  signal valA_39_INBUF : STD_LOGIC; 
  signal valB_40_INBUF : STD_LOGIC; 
  signal valB_32_INBUF : STD_LOGIC; 
  signal valB_24_INBUF : STD_LOGIC; 
  signal valB_16_INBUF : STD_LOGIC; 
  signal valA_56_INBUF : STD_LOGIC; 
  signal valA_48_INBUF : STD_LOGIC; 
  signal valB_41_INBUF : STD_LOGIC; 
  signal valB_33_INBUF : STD_LOGIC; 
  signal valB_25_INBUF : STD_LOGIC; 
  signal valB_17_INBUF : STD_LOGIC; 
  signal valA_57_INBUF : STD_LOGIC; 
  signal valA_49_INBUF : STD_LOGIC; 
  signal valC_10_INBUF : STD_LOGIC; 
  signal valB_50_INBUF : STD_LOGIC; 
  signal valB_42_INBUF : STD_LOGIC; 
  signal valB_34_INBUF : STD_LOGIC; 
  signal valB_26_INBUF : STD_LOGIC; 
  signal valB_18_INBUF : STD_LOGIC; 
  signal valA_58_INBUF : STD_LOGIC; 
  signal valC_11_INBUF : STD_LOGIC; 
  signal valB_51_INBUF : STD_LOGIC; 
  signal valB_43_INBUF : STD_LOGIC; 
  signal valB_35_INBUF : STD_LOGIC; 
  signal valB_27_INBUF : STD_LOGIC; 
  signal valB_19_INBUF : STD_LOGIC; 
  signal valA_59_INBUF : STD_LOGIC; 
  signal valC_20_INBUF : STD_LOGIC; 
  signal valC_12_INBUF : STD_LOGIC; 
  signal valB_60_INBUF : STD_LOGIC; 
  signal valB_52_INBUF : STD_LOGIC; 
  signal valB_44_INBUF : STD_LOGIC; 
  signal valB_36_INBUF : STD_LOGIC; 
  signal valB_28_INBUF : STD_LOGIC; 
  signal valC_21_INBUF : STD_LOGIC; 
  signal valC_13_INBUF : STD_LOGIC; 
  signal valB_61_INBUF : STD_LOGIC; 
  signal valB_53_INBUF : STD_LOGIC; 
  signal valB_45_INBUF : STD_LOGIC; 
  signal valB_37_INBUF : STD_LOGIC; 
  signal valB_29_INBUF : STD_LOGIC; 
  signal valC_30_INBUF : STD_LOGIC; 
  signal valC_22_INBUF : STD_LOGIC; 
  signal valC_14_INBUF : STD_LOGIC; 
  signal valB_62_INBUF : STD_LOGIC; 
  signal valB_54_INBUF : STD_LOGIC; 
  signal valB_46_INBUF : STD_LOGIC; 
  signal valB_38_INBUF : STD_LOGIC; 
  signal valC_31_INBUF : STD_LOGIC; 
  signal valC_23_INBUF : STD_LOGIC; 
  signal valC_15_INBUF : STD_LOGIC; 
  signal valB_63_INBUF : STD_LOGIC; 
  signal valB_55_INBUF : STD_LOGIC; 
  signal valB_47_INBUF : STD_LOGIC; 
  signal valB_39_INBUF : STD_LOGIC; 
  signal valC_40_INBUF : STD_LOGIC; 
  signal valC_32_INBUF : STD_LOGIC; 
  signal valC_24_INBUF : STD_LOGIC; 
  signal valC_16_INBUF : STD_LOGIC; 
  signal valB_56_INBUF : STD_LOGIC; 
  signal valB_48_INBUF : STD_LOGIC; 
  signal valC_41_INBUF : STD_LOGIC; 
  signal valC_33_INBUF : STD_LOGIC; 
  signal valC_25_INBUF : STD_LOGIC; 
  signal valC_17_INBUF : STD_LOGIC; 
  signal valB_57_INBUF : STD_LOGIC; 
  signal valB_49_INBUF : STD_LOGIC; 
  signal valC_50_INBUF : STD_LOGIC; 
  signal valC_42_INBUF : STD_LOGIC; 
  signal valC_34_INBUF : STD_LOGIC; 
  signal valC_26_INBUF : STD_LOGIC; 
  signal valC_18_INBUF : STD_LOGIC; 
  signal valB_58_INBUF : STD_LOGIC; 
  signal valC_51_INBUF : STD_LOGIC; 
  signal valC_43_INBUF : STD_LOGIC; 
  signal valC_35_INBUF : STD_LOGIC; 
  signal valC_27_INBUF : STD_LOGIC; 
  signal valC_19_INBUF : STD_LOGIC; 
  signal valB_59_INBUF : STD_LOGIC; 
  signal valC_60_INBUF : STD_LOGIC; 
  signal valC_52_INBUF : STD_LOGIC; 
  signal valC_44_INBUF : STD_LOGIC; 
  signal valC_36_INBUF : STD_LOGIC; 
  signal valC_28_INBUF : STD_LOGIC; 
  signal valC_61_INBUF : STD_LOGIC; 
  signal valC_53_INBUF : STD_LOGIC; 
  signal valC_45_INBUF : STD_LOGIC; 
  signal valC_37_INBUF : STD_LOGIC; 
  signal valC_29_INBUF : STD_LOGIC; 
  signal valC_62_INBUF : STD_LOGIC; 
  signal valC_54_INBUF : STD_LOGIC; 
  signal valC_46_INBUF : STD_LOGIC; 
  signal valC_38_INBUF : STD_LOGIC; 
  signal valC_63_INBUF : STD_LOGIC; 
  signal valC_55_INBUF : STD_LOGIC; 
  signal valC_47_INBUF : STD_LOGIC; 
  signal valC_39_INBUF : STD_LOGIC; 
  signal valC_56_INBUF : STD_LOGIC; 
  signal valC_48_INBUF : STD_LOGIC; 
  signal valC_57_INBUF : STD_LOGIC; 
  signal valC_49_INBUF : STD_LOGIC; 
  signal valE_10_O : STD_LOGIC; 
  signal valC_58_INBUF : STD_LOGIC; 
  signal valE_11_O : STD_LOGIC; 
  signal valC_59_INBUF : STD_LOGIC; 
  signal valE_20_O : STD_LOGIC; 
  signal valE_12_O : STD_LOGIC; 
  signal valE_21_O : STD_LOGIC; 
  signal valE_13_O : STD_LOGIC; 
  signal valE_30_O : STD_LOGIC; 
  signal valE_22_O : STD_LOGIC; 
  signal valE_14_O : STD_LOGIC; 
  signal valE_31_O : STD_LOGIC; 
  signal valE_23_O : STD_LOGIC; 
  signal valE_15_O : STD_LOGIC; 
  signal valE_40_O : STD_LOGIC; 
  signal valE_32_O : STD_LOGIC; 
  signal valE_24_O : STD_LOGIC; 
  signal valE_16_O : STD_LOGIC; 
  signal valE_41_O : STD_LOGIC; 
  signal valE_33_O : STD_LOGIC; 
  signal valE_25_O : STD_LOGIC; 
  signal valE_17_O : STD_LOGIC; 
  signal valE_50_O : STD_LOGIC; 
  signal valE_42_O : STD_LOGIC; 
  signal valE_34_O : STD_LOGIC; 
  signal valE_26_O : STD_LOGIC; 
  signal valE_18_O : STD_LOGIC; 
  signal valE_51_O : STD_LOGIC; 
  signal valE_43_O : STD_LOGIC; 
  signal valE_35_O : STD_LOGIC; 
  signal valE_27_O : STD_LOGIC; 
  signal valE_19_O : STD_LOGIC; 
  signal valE_60_O : STD_LOGIC; 
  signal valE_52_O : STD_LOGIC; 
  signal valE_44_O : STD_LOGIC; 
  signal valE_36_O : STD_LOGIC; 
  signal valE_28_O : STD_LOGIC; 
  signal valE_61_O : STD_LOGIC; 
  signal valE_53_O : STD_LOGIC; 
  signal valE_45_O : STD_LOGIC; 
  signal valE_37_O : STD_LOGIC; 
  signal valE_29_O : STD_LOGIC; 
  signal valE_62_O : STD_LOGIC; 
  signal valE_54_O : STD_LOGIC; 
  signal valE_46_O : STD_LOGIC; 
  signal valE_38_O : STD_LOGIC; 
  signal valE_63_O : STD_LOGIC; 
  signal valE_55_O : STD_LOGIC; 
  signal valE_47_O : STD_LOGIC; 
  signal valE_39_O : STD_LOGIC; 
  signal valE_56_O : STD_LOGIC; 
  signal valE_48_O : STD_LOGIC; 
  signal valE_57_O : STD_LOGIC; 
  signal valE_49_O : STD_LOGIC; 
  signal valE_58_O : STD_LOGIC; 
  signal valE_59_O : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal ALU_E_mux0001_9_32_5019 : STD_LOGIC; 
  signal ALU_E_mux0001_0_312_pack_1 : STD_LOGIC; 
  signal ALU_E_mux0001_23_32_5043 : STD_LOGIC; 
  signal N132_pack_1 : STD_LOGIC; 
  signal ALU_E_0_DXMUX_5074 : STD_LOGIC; 
  signal ALU_E_mux0001_0_35 : STD_LOGIC; 
  signal ALU_E_mux0001_0_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_0_SRINV_5057 : STD_LOGIC; 
  signal ALU_E_0_CLKINV_5056 : STD_LOGIC; 
  signal ALU_E_1_DXMUX_5107 : STD_LOGIC; 
  signal ALU_E_mux0001_1_35 : STD_LOGIC; 
  signal ALU_E_mux0001_1_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_1_SRINV_5090 : STD_LOGIC; 
  signal ALU_E_1_CLKINV_5089 : STD_LOGIC; 
  signal ALU_E_mux0001_52_32_5133 : STD_LOGIC; 
  signal ALU_E_mux0001_0_311_pack_1 : STD_LOGIC; 
  signal ALU_E_2_DXMUX_5164 : STD_LOGIC; 
  signal ALU_E_mux0001_2_35 : STD_LOGIC; 
  signal ALU_E_mux0001_2_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_2_SRINV_5147 : STD_LOGIC; 
  signal ALU_E_2_CLKINV_5146 : STD_LOGIC; 
  signal ALU_E_mux0001_38_32_5190 : STD_LOGIC; 
  signal ALU_E_mux0001_0_31_pack_1 : STD_LOGIC; 
  signal ALU_E_3_DXMUX_5221 : STD_LOGIC; 
  signal ALU_E_mux0001_3_35 : STD_LOGIC; 
  signal ALU_E_mux0001_3_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_3_SRINV_5204 : STD_LOGIC; 
  signal ALU_E_3_CLKINV_5203 : STD_LOGIC; 
  signal ALU_E_4_DXMUX_5254 : STD_LOGIC; 
  signal ALU_E_mux0001_4_35 : STD_LOGIC; 
  signal ALU_E_mux0001_4_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_4_SRINV_5237 : STD_LOGIC; 
  signal ALU_E_4_CLKINV_5236 : STD_LOGIC; 
  signal ALU_E_5_DXMUX_5287 : STD_LOGIC; 
  signal ALU_E_mux0001_5_35 : STD_LOGIC; 
  signal ALU_E_mux0001_5_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_5_SRINV_5270 : STD_LOGIC; 
  signal ALU_E_5_CLKINV_5269 : STD_LOGIC; 
  signal ALU_E_6_DXMUX_5320 : STD_LOGIC; 
  signal ALU_E_mux0001_6_35 : STD_LOGIC; 
  signal ALU_E_mux0001_6_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_6_SRINV_5303 : STD_LOGIC; 
  signal ALU_E_6_CLKINV_5302 : STD_LOGIC; 
  signal ALU_E_7_DXMUX_5353 : STD_LOGIC; 
  signal ALU_E_mux0001_7_35 : STD_LOGIC; 
  signal ALU_E_mux0001_7_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_7_SRINV_5336 : STD_LOGIC; 
  signal ALU_E_7_CLKINV_5335 : STD_LOGIC; 
  signal ALU_E_8_DXMUX_5386 : STD_LOGIC; 
  signal ALU_E_mux0001_8_35 : STD_LOGIC; 
  signal ALU_E_mux0001_8_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_8_SRINV_5369 : STD_LOGIC; 
  signal ALU_E_8_CLKINV_5368 : STD_LOGIC; 
  signal ALU_E_9_DXMUX_5419 : STD_LOGIC; 
  signal ALU_E_mux0001_9_35 : STD_LOGIC; 
  signal ALU_E_mux0001_9_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_9_SRINV_5402 : STD_LOGIC; 
  signal ALU_E_9_CLKINV_5401 : STD_LOGIC; 
  signal ALU_E_10_DXMUX_5452 : STD_LOGIC; 
  signal ALU_E_mux0001_10_35 : STD_LOGIC; 
  signal ALU_E_mux0001_10_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_10_SRINV_5435 : STD_LOGIC; 
  signal ALU_E_10_CLKINV_5434 : STD_LOGIC; 
  signal ALU_E_11_DXMUX_5485 : STD_LOGIC; 
  signal ALU_E_mux0001_11_35 : STD_LOGIC; 
  signal ALU_E_mux0001_11_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_11_SRINV_5468 : STD_LOGIC; 
  signal ALU_E_11_CLKINV_5467 : STD_LOGIC; 
  signal ALU_E_20_DXMUX_5518 : STD_LOGIC; 
  signal ALU_E_mux0001_20_35 : STD_LOGIC; 
  signal ALU_E_mux0001_20_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_20_SRINV_5501 : STD_LOGIC; 
  signal ALU_E_20_CLKINV_5500 : STD_LOGIC; 
  signal ALU_E_12_DXMUX_5551 : STD_LOGIC; 
  signal ALU_E_mux0001_12_35 : STD_LOGIC; 
  signal ALU_E_mux0001_12_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_12_SRINV_5534 : STD_LOGIC; 
  signal ALU_E_12_CLKINV_5533 : STD_LOGIC; 
  signal ALU_E_21_DXMUX_5584 : STD_LOGIC; 
  signal ALU_E_mux0001_21_35 : STD_LOGIC; 
  signal ALU_E_mux0001_21_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_21_SRINV_5567 : STD_LOGIC; 
  signal ALU_E_21_CLKINV_5566 : STD_LOGIC; 
  signal ALU_E_13_DXMUX_5617 : STD_LOGIC; 
  signal ALU_E_mux0001_13_35 : STD_LOGIC; 
  signal ALU_E_mux0001_13_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_13_SRINV_5600 : STD_LOGIC; 
  signal ALU_E_13_CLKINV_5599 : STD_LOGIC; 
  signal ALU_E_30_DXMUX_5650 : STD_LOGIC; 
  signal ALU_E_mux0001_30_35 : STD_LOGIC; 
  signal ALU_E_mux0001_30_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_30_SRINV_5633 : STD_LOGIC; 
  signal ALU_E_30_CLKINV_5632 : STD_LOGIC; 
  signal ALU_E_22_DXMUX_5683 : STD_LOGIC; 
  signal ALU_E_mux0001_22_35 : STD_LOGIC; 
  signal ALU_E_mux0001_22_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_22_SRINV_5666 : STD_LOGIC; 
  signal ALU_E_22_CLKINV_5665 : STD_LOGIC; 
  signal ALU_E_14_DXMUX_5716 : STD_LOGIC; 
  signal ALU_E_mux0001_14_35 : STD_LOGIC; 
  signal ALU_E_mux0001_14_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_14_SRINV_5699 : STD_LOGIC; 
  signal ALU_E_14_CLKINV_5698 : STD_LOGIC; 
  signal ALU_E_31_DXMUX_5749 : STD_LOGIC; 
  signal ALU_E_mux0001_31_35 : STD_LOGIC; 
  signal ALU_E_mux0001_31_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_31_SRINV_5732 : STD_LOGIC; 
  signal ALU_E_31_CLKINV_5731 : STD_LOGIC; 
  signal ALU_E_23_DXMUX_5782 : STD_LOGIC; 
  signal ALU_E_mux0001_23_35 : STD_LOGIC; 
  signal ALU_E_mux0001_23_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_23_SRINV_5765 : STD_LOGIC; 
  signal ALU_E_23_CLKINV_5764 : STD_LOGIC; 
  signal ALU_E_15_DXMUX_5815 : STD_LOGIC; 
  signal ALU_E_mux0001_15_35 : STD_LOGIC; 
  signal ALU_E_mux0001_15_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_15_SRINV_5798 : STD_LOGIC; 
  signal ALU_E_15_CLKINV_5797 : STD_LOGIC; 
  signal ALU_E_40_DXMUX_5848 : STD_LOGIC; 
  signal ALU_E_mux0001_40_35 : STD_LOGIC; 
  signal ALU_E_mux0001_40_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_40_SRINV_5831 : STD_LOGIC; 
  signal ALU_E_40_CLKINV_5830 : STD_LOGIC; 
  signal ALU_E_32_DXMUX_5881 : STD_LOGIC; 
  signal ALU_E_mux0001_32_35 : STD_LOGIC; 
  signal ALU_E_mux0001_32_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_32_SRINV_5864 : STD_LOGIC; 
  signal ALU_E_32_CLKINV_5863 : STD_LOGIC; 
  signal ALU_E_24_DXMUX_5914 : STD_LOGIC; 
  signal ALU_E_mux0001_24_35 : STD_LOGIC; 
  signal ALU_E_mux0001_24_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_24_SRINV_5897 : STD_LOGIC; 
  signal ALU_E_24_CLKINV_5896 : STD_LOGIC; 
  signal ALU_E_16_DXMUX_5947 : STD_LOGIC; 
  signal ALU_E_mux0001_16_35 : STD_LOGIC; 
  signal ALU_E_mux0001_16_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_16_SRINV_5930 : STD_LOGIC; 
  signal ALU_E_16_CLKINV_5929 : STD_LOGIC; 
  signal ALU_E_41_DXMUX_5980 : STD_LOGIC; 
  signal ALU_E_mux0001_41_35 : STD_LOGIC; 
  signal ALU_E_mux0001_41_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_41_SRINV_5963 : STD_LOGIC; 
  signal ALU_E_41_CLKINV_5962 : STD_LOGIC; 
  signal ALU_E_33_DXMUX_6013 : STD_LOGIC; 
  signal ALU_E_mux0001_33_35 : STD_LOGIC; 
  signal ALU_E_mux0001_33_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_33_SRINV_5996 : STD_LOGIC; 
  signal ALU_E_33_CLKINV_5995 : STD_LOGIC; 
  signal ALU_E_25_DXMUX_6046 : STD_LOGIC; 
  signal ALU_E_mux0001_25_35 : STD_LOGIC; 
  signal ALU_E_mux0001_25_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_25_SRINV_6029 : STD_LOGIC; 
  signal ALU_E_25_CLKINV_6028 : STD_LOGIC; 
  signal ALU_E_17_DXMUX_6079 : STD_LOGIC; 
  signal ALU_E_mux0001_17_35 : STD_LOGIC; 
  signal ALU_E_mux0001_17_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_17_SRINV_6062 : STD_LOGIC; 
  signal ALU_E_17_CLKINV_6061 : STD_LOGIC; 
  signal ALU_E_50_DXMUX_6112 : STD_LOGIC; 
  signal ALU_E_mux0001_50_35 : STD_LOGIC; 
  signal ALU_E_mux0001_50_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_50_SRINV_6095 : STD_LOGIC; 
  signal ALU_E_50_CLKINV_6094 : STD_LOGIC; 
  signal ALU_E_42_DXMUX_6145 : STD_LOGIC; 
  signal ALU_E_mux0001_42_35 : STD_LOGIC; 
  signal ALU_E_mux0001_42_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_42_SRINV_6128 : STD_LOGIC; 
  signal ALU_E_42_CLKINV_6127 : STD_LOGIC; 
  signal ALU_E_34_DXMUX_6178 : STD_LOGIC; 
  signal ALU_E_mux0001_34_35 : STD_LOGIC; 
  signal ALU_E_mux0001_34_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_34_SRINV_6161 : STD_LOGIC; 
  signal ALU_E_34_CLKINV_6160 : STD_LOGIC; 
  signal ALU_E_26_DXMUX_6211 : STD_LOGIC; 
  signal ALU_E_mux0001_26_35 : STD_LOGIC; 
  signal ALU_E_mux0001_26_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_26_SRINV_6194 : STD_LOGIC; 
  signal ALU_E_26_CLKINV_6193 : STD_LOGIC; 
  signal ALU_E_18_DXMUX_6244 : STD_LOGIC; 
  signal ALU_E_mux0001_18_35 : STD_LOGIC; 
  signal ALU_E_mux0001_18_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_18_SRINV_6227 : STD_LOGIC; 
  signal ALU_E_18_CLKINV_6226 : STD_LOGIC; 
  signal ALU_E_51_DXMUX_6277 : STD_LOGIC; 
  signal ALU_E_mux0001_51_35 : STD_LOGIC; 
  signal ALU_E_mux0001_51_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_51_SRINV_6260 : STD_LOGIC; 
  signal ALU_E_51_CLKINV_6259 : STD_LOGIC; 
  signal ALU_E_43_DXMUX_6310 : STD_LOGIC; 
  signal ALU_E_mux0001_43_35 : STD_LOGIC; 
  signal ALU_E_mux0001_43_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_43_SRINV_6293 : STD_LOGIC; 
  signal ALU_E_43_CLKINV_6292 : STD_LOGIC; 
  signal ALU_E_35_DXMUX_6343 : STD_LOGIC; 
  signal ALU_E_mux0001_35_35 : STD_LOGIC; 
  signal ALU_E_mux0001_35_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_35_SRINV_6326 : STD_LOGIC; 
  signal ALU_E_35_CLKINV_6325 : STD_LOGIC; 
  signal ALU_E_27_DXMUX_6376 : STD_LOGIC; 
  signal ALU_E_mux0001_27_35 : STD_LOGIC; 
  signal ALU_E_mux0001_27_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_27_SRINV_6359 : STD_LOGIC; 
  signal ALU_E_27_CLKINV_6358 : STD_LOGIC; 
  signal ALU_E_19_DXMUX_6409 : STD_LOGIC; 
  signal ALU_E_mux0001_19_35 : STD_LOGIC; 
  signal ALU_E_mux0001_19_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_19_SRINV_6392 : STD_LOGIC; 
  signal ALU_E_19_CLKINV_6391 : STD_LOGIC; 
  signal ALU_E_60_DXMUX_6442 : STD_LOGIC; 
  signal ALU_E_mux0001_60_35 : STD_LOGIC; 
  signal ALU_E_mux0001_60_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_60_SRINV_6425 : STD_LOGIC; 
  signal ALU_E_60_CLKINV_6424 : STD_LOGIC; 
  signal ALU_E_52_DXMUX_6475 : STD_LOGIC; 
  signal ALU_E_mux0001_52_35 : STD_LOGIC; 
  signal ALU_E_mux0001_52_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_52_SRINV_6458 : STD_LOGIC; 
  signal ALU_E_52_CLKINV_6457 : STD_LOGIC; 
  signal ALU_E_44_DXMUX_6508 : STD_LOGIC; 
  signal ALU_E_mux0001_44_35 : STD_LOGIC; 
  signal ALU_E_mux0001_44_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_44_SRINV_6491 : STD_LOGIC; 
  signal ALU_E_44_CLKINV_6490 : STD_LOGIC; 
  signal ALU_E_36_DXMUX_6541 : STD_LOGIC; 
  signal ALU_E_mux0001_36_35 : STD_LOGIC; 
  signal ALU_E_mux0001_36_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_36_SRINV_6524 : STD_LOGIC; 
  signal ALU_E_36_CLKINV_6523 : STD_LOGIC; 
  signal ALU_E_28_DXMUX_6574 : STD_LOGIC; 
  signal ALU_E_mux0001_28_35 : STD_LOGIC; 
  signal ALU_E_mux0001_28_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_28_SRINV_6557 : STD_LOGIC; 
  signal ALU_E_28_CLKINV_6556 : STD_LOGIC; 
  signal ALU_E_61_DXMUX_6607 : STD_LOGIC; 
  signal ALU_E_mux0001_61_35 : STD_LOGIC; 
  signal ALU_E_mux0001_61_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_61_SRINV_6590 : STD_LOGIC; 
  signal ALU_E_61_CLKINV_6589 : STD_LOGIC; 
  signal ALU_E_53_DXMUX_6640 : STD_LOGIC; 
  signal ALU_E_mux0001_53_35 : STD_LOGIC; 
  signal ALU_E_mux0001_53_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_53_SRINV_6623 : STD_LOGIC; 
  signal ALU_E_53_CLKINV_6622 : STD_LOGIC; 
  signal ALU_E_45_DXMUX_6673 : STD_LOGIC; 
  signal ALU_E_mux0001_45_35 : STD_LOGIC; 
  signal ALU_E_mux0001_45_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_45_SRINV_6656 : STD_LOGIC; 
  signal ALU_E_45_CLKINV_6655 : STD_LOGIC; 
  signal ALU_E_37_DXMUX_6706 : STD_LOGIC; 
  signal ALU_E_mux0001_37_35 : STD_LOGIC; 
  signal ALU_E_mux0001_37_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_37_SRINV_6689 : STD_LOGIC; 
  signal ALU_E_37_CLKINV_6688 : STD_LOGIC; 
  signal ALU_E_29_DXMUX_6739 : STD_LOGIC; 
  signal ALU_E_mux0001_29_35 : STD_LOGIC; 
  signal ALU_E_mux0001_29_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_29_SRINV_6722 : STD_LOGIC; 
  signal ALU_E_29_CLKINV_6721 : STD_LOGIC; 
  signal ALU_E_62_DXMUX_6772 : STD_LOGIC; 
  signal ALU_E_mux0001_62_35 : STD_LOGIC; 
  signal ALU_E_mux0001_62_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_62_SRINV_6755 : STD_LOGIC; 
  signal ALU_E_62_CLKINV_6754 : STD_LOGIC; 
  signal ALU_E_54_DXMUX_6805 : STD_LOGIC; 
  signal ALU_E_mux0001_54_35 : STD_LOGIC; 
  signal ALU_E_mux0001_54_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_54_SRINV_6788 : STD_LOGIC; 
  signal ALU_E_54_CLKINV_6787 : STD_LOGIC; 
  signal ALU_E_46_DXMUX_6838 : STD_LOGIC; 
  signal ALU_E_mux0001_46_35 : STD_LOGIC; 
  signal ALU_E_mux0001_46_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_46_SRINV_6821 : STD_LOGIC; 
  signal ALU_E_46_CLKINV_6820 : STD_LOGIC; 
  signal ALU_E_38_DXMUX_6871 : STD_LOGIC; 
  signal ALU_E_mux0001_38_35 : STD_LOGIC; 
  signal ALU_E_mux0001_38_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_38_SRINV_6854 : STD_LOGIC; 
  signal ALU_E_38_CLKINV_6853 : STD_LOGIC; 
  signal ALU_E_63_DXMUX_6904 : STD_LOGIC; 
  signal ALU_E_mux0001_63_35 : STD_LOGIC; 
  signal ALU_E_mux0001_63_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_63_SRINV_6887 : STD_LOGIC; 
  signal ALU_E_63_CLKINV_6886 : STD_LOGIC; 
  signal ALU_E_55_DXMUX_6937 : STD_LOGIC; 
  signal ALU_E_mux0001_55_35 : STD_LOGIC; 
  signal ALU_E_mux0001_55_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_55_SRINV_6920 : STD_LOGIC; 
  signal ALU_E_55_CLKINV_6919 : STD_LOGIC; 
  signal ALU_E_47_DXMUX_6970 : STD_LOGIC; 
  signal ALU_E_mux0001_47_35 : STD_LOGIC; 
  signal ALU_E_mux0001_47_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_47_SRINV_6953 : STD_LOGIC; 
  signal ALU_E_47_CLKINV_6952 : STD_LOGIC; 
  signal ALU_E_39_DXMUX_7003 : STD_LOGIC; 
  signal ALU_E_mux0001_39_35 : STD_LOGIC; 
  signal ALU_E_mux0001_39_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_39_SRINV_6986 : STD_LOGIC; 
  signal ALU_E_39_CLKINV_6985 : STD_LOGIC; 
  signal ALU_E_56_DXMUX_7036 : STD_LOGIC; 
  signal ALU_E_mux0001_56_35 : STD_LOGIC; 
  signal ALU_E_mux0001_56_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_56_SRINV_7019 : STD_LOGIC; 
  signal ALU_E_56_CLKINV_7018 : STD_LOGIC; 
  signal ALU_E_48_DXMUX_7069 : STD_LOGIC; 
  signal ALU_E_mux0001_48_35 : STD_LOGIC; 
  signal ALU_E_mux0001_48_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_48_SRINV_7052 : STD_LOGIC; 
  signal ALU_E_48_CLKINV_7051 : STD_LOGIC; 
  signal ALU_E_57_DXMUX_7102 : STD_LOGIC; 
  signal ALU_E_mux0001_57_35 : STD_LOGIC; 
  signal ALU_E_mux0001_57_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_57_SRINV_7085 : STD_LOGIC; 
  signal ALU_E_57_CLKINV_7084 : STD_LOGIC; 
  signal ALU_E_49_DXMUX_7135 : STD_LOGIC; 
  signal ALU_E_mux0001_49_35 : STD_LOGIC; 
  signal ALU_E_mux0001_49_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_49_SRINV_7118 : STD_LOGIC; 
  signal ALU_E_49_CLKINV_7117 : STD_LOGIC; 
  signal ALU_E_58_DXMUX_7168 : STD_LOGIC; 
  signal ALU_E_mux0001_58_35 : STD_LOGIC; 
  signal ALU_E_mux0001_58_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_58_SRINV_7151 : STD_LOGIC; 
  signal ALU_E_58_CLKINV_7150 : STD_LOGIC; 
  signal ALU_E_59_DXMUX_7201 : STD_LOGIC; 
  signal ALU_E_mux0001_59_35 : STD_LOGIC; 
  signal ALU_E_mux0001_59_351_SW0_O_pack_1 : STD_LOGIC; 
  signal ALU_E_59_SRINV_7184 : STD_LOGIC; 
  signal ALU_E_59_CLKINV_7183 : STD_LOGIC; 
  signal ALU_A_11_DXMUX_7239 : STD_LOGIC; 
  signal ALU_A_mux0001_11_1_7236 : STD_LOGIC; 
  signal ALU_A_11_DYMUX_7227 : STD_LOGIC; 
  signal ALU_A_mux0001_10_1_7224 : STD_LOGIC; 
  signal ALU_A_11_SRINV_7219 : STD_LOGIC; 
  signal ALU_A_11_CLKINV_7218 : STD_LOGIC; 
  signal ALU_A_21_DXMUX_7277 : STD_LOGIC; 
  signal ALU_A_mux0001_21_1_7274 : STD_LOGIC; 
  signal ALU_A_21_DYMUX_7265 : STD_LOGIC; 
  signal ALU_A_mux0001_20_1_7262 : STD_LOGIC; 
  signal ALU_A_21_SRINV_7257 : STD_LOGIC; 
  signal ALU_A_21_CLKINV_7256 : STD_LOGIC; 
  signal ALU_A_13_DXMUX_7315 : STD_LOGIC; 
  signal ALU_A_mux0001_13_1_7312 : STD_LOGIC; 
  signal ALU_A_13_DYMUX_7303 : STD_LOGIC; 
  signal ALU_A_mux0001_12_1_7300 : STD_LOGIC; 
  signal ALU_A_13_SRINV_7295 : STD_LOGIC; 
  signal ALU_A_13_CLKINV_7294 : STD_LOGIC; 
  signal ALU_A_31_DXMUX_7353 : STD_LOGIC; 
  signal ALU_A_mux0001_31_1_7350 : STD_LOGIC; 
  signal ALU_A_31_DYMUX_7341 : STD_LOGIC; 
  signal ALU_A_mux0001_30_1_7338 : STD_LOGIC; 
  signal ALU_A_31_SRINV_7333 : STD_LOGIC; 
  signal ALU_A_31_CLKINV_7332 : STD_LOGIC; 
  signal ALU_A_23_DXMUX_7391 : STD_LOGIC; 
  signal ALU_A_mux0001_23_1_7388 : STD_LOGIC; 
  signal ALU_A_23_DYMUX_7379 : STD_LOGIC; 
  signal ALU_A_mux0001_22_1_7376 : STD_LOGIC; 
  signal ALU_A_23_SRINV_7371 : STD_LOGIC; 
  signal ALU_A_23_CLKINV_7370 : STD_LOGIC; 
  signal ALU_A_15_DXMUX_7429 : STD_LOGIC; 
  signal ALU_A_mux0001_15_1_7426 : STD_LOGIC; 
  signal ALU_A_15_DYMUX_7417 : STD_LOGIC; 
  signal ALU_A_mux0001_14_1_7414 : STD_LOGIC; 
  signal ALU_A_15_SRINV_7409 : STD_LOGIC; 
  signal ALU_A_15_CLKINV_7408 : STD_LOGIC; 
  signal ALU_A_41_DXMUX_7467 : STD_LOGIC; 
  signal ALU_A_mux0001_41_1_7464 : STD_LOGIC; 
  signal ALU_A_41_DYMUX_7455 : STD_LOGIC; 
  signal ALU_A_mux0001_40_1_7452 : STD_LOGIC; 
  signal ALU_A_41_SRINV_7447 : STD_LOGIC; 
  signal ALU_A_41_CLKINV_7446 : STD_LOGIC; 
  signal ALU_A_33_DXMUX_7505 : STD_LOGIC; 
  signal ALU_A_mux0001_33_1_7502 : STD_LOGIC; 
  signal ALU_A_33_DYMUX_7493 : STD_LOGIC; 
  signal ALU_A_mux0001_32_1_7490 : STD_LOGIC; 
  signal ALU_A_33_SRINV_7485 : STD_LOGIC; 
  signal ALU_A_33_CLKINV_7484 : STD_LOGIC; 
  signal ALU_A_25_DXMUX_7543 : STD_LOGIC; 
  signal ALU_A_mux0001_25_1_7540 : STD_LOGIC; 
  signal ALU_A_25_DYMUX_7531 : STD_LOGIC; 
  signal ALU_A_mux0001_24_1_7528 : STD_LOGIC; 
  signal ALU_A_25_SRINV_7523 : STD_LOGIC; 
  signal ALU_A_25_CLKINV_7522 : STD_LOGIC; 
  signal ALU_A_17_DXMUX_7581 : STD_LOGIC; 
  signal ALU_A_mux0001_17_1_7578 : STD_LOGIC; 
  signal ALU_A_17_DYMUX_7569 : STD_LOGIC; 
  signal ALU_A_mux0001_16_1_7566 : STD_LOGIC; 
  signal ALU_A_17_SRINV_7561 : STD_LOGIC; 
  signal ALU_A_17_CLKINV_7560 : STD_LOGIC; 
  signal ALU_A_51_DXMUX_7619 : STD_LOGIC; 
  signal ALU_A_mux0001_51_1_7616 : STD_LOGIC; 
  signal ALU_A_51_DYMUX_7607 : STD_LOGIC; 
  signal ALU_A_mux0001_50_1_7604 : STD_LOGIC; 
  signal ALU_A_51_SRINV_7599 : STD_LOGIC; 
  signal ALU_A_51_CLKINV_7598 : STD_LOGIC; 
  signal ALU_A_43_DXMUX_7657 : STD_LOGIC; 
  signal ALU_A_mux0001_43_1_7654 : STD_LOGIC; 
  signal ALU_A_43_DYMUX_7645 : STD_LOGIC; 
  signal ALU_A_mux0001_42_1_7642 : STD_LOGIC; 
  signal ALU_A_43_SRINV_7637 : STD_LOGIC; 
  signal ALU_A_43_CLKINV_7636 : STD_LOGIC; 
  signal ALU_A_35_DXMUX_7695 : STD_LOGIC; 
  signal ALU_A_mux0001_35_1_7692 : STD_LOGIC; 
  signal ALU_A_35_DYMUX_7683 : STD_LOGIC; 
  signal ALU_A_mux0001_34_1_7680 : STD_LOGIC; 
  signal ALU_A_35_SRINV_7675 : STD_LOGIC; 
  signal ALU_A_35_CLKINV_7674 : STD_LOGIC; 
  signal ALU_A_27_DXMUX_7733 : STD_LOGIC; 
  signal ALU_A_mux0001_27_1_7730 : STD_LOGIC; 
  signal ALU_A_27_DYMUX_7721 : STD_LOGIC; 
  signal ALU_A_mux0001_26_1_7718 : STD_LOGIC; 
  signal ALU_A_27_SRINV_7713 : STD_LOGIC; 
  signal ALU_A_27_CLKINV_7712 : STD_LOGIC; 
  signal ALU_A_19_DXMUX_7771 : STD_LOGIC; 
  signal ALU_A_mux0001_19_1_7768 : STD_LOGIC; 
  signal ALU_A_19_DYMUX_7759 : STD_LOGIC; 
  signal ALU_A_mux0001_18_1_7756 : STD_LOGIC; 
  signal ALU_A_19_SRINV_7751 : STD_LOGIC; 
  signal ALU_A_19_CLKINV_7750 : STD_LOGIC; 
  signal ALU_A_61_DXMUX_7809 : STD_LOGIC; 
  signal ALU_A_mux0001_61_1_7806 : STD_LOGIC; 
  signal ALU_A_61_DYMUX_7797 : STD_LOGIC; 
  signal ALU_A_mux0001_60_1_7794 : STD_LOGIC; 
  signal ALU_A_61_SRINV_7789 : STD_LOGIC; 
  signal ALU_A_61_CLKINV_7788 : STD_LOGIC; 
  signal ALU_A_53_DXMUX_7847 : STD_LOGIC; 
  signal ALU_A_mux0001_53_1_7844 : STD_LOGIC; 
  signal ALU_A_53_DYMUX_7835 : STD_LOGIC; 
  signal ALU_A_mux0001_52_1_7832 : STD_LOGIC; 
  signal ALU_A_53_SRINV_7827 : STD_LOGIC; 
  signal ALU_A_53_CLKINV_7826 : STD_LOGIC; 
  signal ALU_A_45_DXMUX_7885 : STD_LOGIC; 
  signal ALU_A_mux0001_45_1_7882 : STD_LOGIC; 
  signal ALU_A_45_DYMUX_7873 : STD_LOGIC; 
  signal ALU_A_mux0001_44_1_7870 : STD_LOGIC; 
  signal ALU_A_45_SRINV_7865 : STD_LOGIC; 
  signal ALU_A_45_CLKINV_7864 : STD_LOGIC; 
  signal ALU_A_37_DXMUX_7923 : STD_LOGIC; 
  signal ALU_A_mux0001_37_1_7920 : STD_LOGIC; 
  signal ALU_A_37_DYMUX_7911 : STD_LOGIC; 
  signal ALU_A_mux0001_36_1_7908 : STD_LOGIC; 
  signal ALU_A_37_SRINV_7903 : STD_LOGIC; 
  signal ALU_A_37_CLKINV_7902 : STD_LOGIC; 
  signal ALU_A_29_DXMUX_7961 : STD_LOGIC; 
  signal ALU_A_mux0001_29_1_7958 : STD_LOGIC; 
  signal ALU_A_29_DYMUX_7949 : STD_LOGIC; 
  signal ALU_A_mux0001_28_1_7946 : STD_LOGIC; 
  signal ALU_A_29_SRINV_7941 : STD_LOGIC; 
  signal ALU_A_29_CLKINV_7940 : STD_LOGIC; 
  signal ALU_A_63_DXMUX_7999 : STD_LOGIC; 
  signal ALU_A_mux0001_63_1_7996 : STD_LOGIC; 
  signal ALU_A_63_DYMUX_7987 : STD_LOGIC; 
  signal ALU_A_mux0001_62_1_7984 : STD_LOGIC; 
  signal ALU_A_63_SRINV_7979 : STD_LOGIC; 
  signal ALU_A_63_CLKINV_7978 : STD_LOGIC; 
  signal ALU_A_55_DXMUX_8037 : STD_LOGIC; 
  signal ALU_A_mux0001_55_1_8034 : STD_LOGIC; 
  signal ALU_A_55_DYMUX_8025 : STD_LOGIC; 
  signal ALU_A_mux0001_54_1_8022 : STD_LOGIC; 
  signal ALU_A_55_SRINV_8017 : STD_LOGIC; 
  signal ALU_A_55_CLKINV_8016 : STD_LOGIC; 
  signal ALU_A_47_DXMUX_8075 : STD_LOGIC; 
  signal ALU_A_mux0001_47_1_8072 : STD_LOGIC; 
  signal ALU_A_47_DYMUX_8063 : STD_LOGIC; 
  signal ALU_A_mux0001_46_1_8060 : STD_LOGIC; 
  signal ALU_A_47_SRINV_8055 : STD_LOGIC; 
  signal ALU_A_47_CLKINV_8054 : STD_LOGIC; 
  signal ALU_A_39_DXMUX_8113 : STD_LOGIC; 
  signal ALU_A_mux0001_39_1_8110 : STD_LOGIC; 
  signal ALU_A_39_DYMUX_8101 : STD_LOGIC; 
  signal ALU_A_mux0001_38_1_8098 : STD_LOGIC; 
  signal ALU_A_39_SRINV_8093 : STD_LOGIC; 
  signal ALU_A_39_CLKINV_8092 : STD_LOGIC; 
  signal ALU_A_57_DXMUX_8151 : STD_LOGIC; 
  signal ALU_A_mux0001_57_1_8148 : STD_LOGIC; 
  signal ALU_A_57_DYMUX_8139 : STD_LOGIC; 
  signal ALU_A_mux0001_56_1_8136 : STD_LOGIC; 
  signal ALU_A_57_SRINV_8131 : STD_LOGIC; 
  signal ALU_A_57_CLKINV_8130 : STD_LOGIC; 
  signal ALU_A_49_DXMUX_8189 : STD_LOGIC; 
  signal ALU_A_mux0001_49_1_8186 : STD_LOGIC; 
  signal ALU_A_49_DYMUX_8177 : STD_LOGIC; 
  signal ALU_A_mux0001_48_1_8174 : STD_LOGIC; 
  signal ALU_A_49_SRINV_8169 : STD_LOGIC; 
  signal ALU_A_49_CLKINV_8168 : STD_LOGIC; 
  signal ALU_A_59_DXMUX_8227 : STD_LOGIC; 
  signal ALU_A_mux0001_59_1_8224 : STD_LOGIC; 
  signal ALU_A_59_DYMUX_8215 : STD_LOGIC; 
  signal ALU_A_mux0001_58_1_8212 : STD_LOGIC; 
  signal ALU_A_59_SRINV_8207 : STD_LOGIC; 
  signal ALU_A_59_CLKINV_8206 : STD_LOGIC; 
  signal ALU_A_1_DXMUX_8262 : STD_LOGIC; 
  signal ALU_A_1_DYMUX_8251 : STD_LOGIC; 
  signal ALU_A_1_CLKINV_8243 : STD_LOGIC; 
  signal ALU_fun_not0001 : STD_LOGIC; 
  signal ALU_A_3_DYMUX_8287 : STD_LOGIC; 
  signal ALU_A_mux0001_3_1_8284 : STD_LOGIC; 
  signal ALU_A_3_SRINV_8279 : STD_LOGIC; 
  signal ALU_A_3_CLKINV_8278 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal ALU_A_5_DYMUX_8320 : STD_LOGIC; 
  signal ALU_A_mux0001_5_1_8317 : STD_LOGIC; 
  signal ALU_A_5_SRINV_8312 : STD_LOGIC; 
  signal ALU_A_5_CLKINV_8311 : STD_LOGIC; 
  signal ALU_A_7_DXMUX_8365 : STD_LOGIC; 
  signal ALU_A_mux0001_7_1_8362 : STD_LOGIC; 
  signal ALU_A_7_DYMUX_8353 : STD_LOGIC; 
  signal ALU_A_mux0001_6_1_8350 : STD_LOGIC; 
  signal ALU_A_7_SRINV_8345 : STD_LOGIC; 
  signal ALU_A_7_CLKINV_8344 : STD_LOGIC; 
  signal ALU_A_9_DXMUX_8403 : STD_LOGIC; 
  signal ALU_A_mux0001_9_1_8400 : STD_LOGIC; 
  signal ALU_A_9_DYMUX_8391 : STD_LOGIC; 
  signal ALU_A_mux0001_8_1_8388 : STD_LOGIC; 
  signal ALU_A_9_SRINV_8383 : STD_LOGIC; 
  signal ALU_A_9_CLKINV_8382 : STD_LOGIC; 
  signal ALU_E_mux0001_10_32_8429 : STD_LOGIC; 
  signal ALU_E_mux0001_0_32_8422 : STD_LOGIC; 
  signal ALU_E_mux0001_11_32_8453 : STD_LOGIC; 
  signal ALU_E_mux0001_1_32_8446 : STD_LOGIC; 
  signal ALU_E_mux0001_24_32_8477 : STD_LOGIC; 
  signal ALU_E_mux0001_2_32_8470 : STD_LOGIC; 
  signal ALU_E_mux0001_39_32_8501 : STD_LOGIC; 
  signal ALU_E_mux0001_3_32_8494 : STD_LOGIC; 
  signal ALU_E_mux0001_40_32_8525 : STD_LOGIC; 
  signal ALU_E_mux0001_4_32_8518 : STD_LOGIC; 
  signal ALU_E_mux0001_53_32_8549 : STD_LOGIC; 
  signal ALU_E_mux0001_5_32_8542 : STD_LOGIC; 
  signal ALU_E_mux0001_54_32_8573 : STD_LOGIC; 
  signal ALU_E_mux0001_6_32_8566 : STD_LOGIC; 
  signal ALU_E_mux0001_55_32_8597 : STD_LOGIC; 
  signal ALU_E_mux0001_7_32_8590 : STD_LOGIC; 
  signal ALU_E_mux0001_56_32_8621 : STD_LOGIC; 
  signal ALU_E_mux0001_8_32_8614 : STD_LOGIC; 
  signal ALU_fun_0_1_DYMUX_8631 : STD_LOGIC; 
  signal ALU_fun_0_1_SRINV_8629 : STD_LOGIC; 
  signal ALU_fun_0_1_CLKINV_8628 : STD_LOGIC; 
  signal ALU_fun_2_1_DYMUX_8643 : STD_LOGIC; 
  signal ALU_fun_2_1_SRINV_8641 : STD_LOGIC; 
  signal ALU_fun_2_1_CLKINV_8640 : STD_LOGIC; 
  signal ALU_A_4_DXMUX_8676 : STD_LOGIC; 
  signal ALU_A_mux0001_4_1_8673 : STD_LOGIC; 
  signal ALU_A_or0000_pack_1 : STD_LOGIC; 
  signal ALU_A_4_SRINV_8660 : STD_LOGIC; 
  signal ALU_A_4_CLKINV_8659 : STD_LOGIC; 
  signal valE_11_DXMUX_8693 : STD_LOGIC; 
  signal valE_11_DYMUX_8688 : STD_LOGIC; 
  signal valE_11_CLKINV_8686 : STD_LOGIC; 
  signal valE_21_DXMUX_8709 : STD_LOGIC; 
  signal valE_21_DYMUX_8704 : STD_LOGIC; 
  signal valE_21_CLKINV_8702 : STD_LOGIC; 
  signal valE_13_DXMUX_8725 : STD_LOGIC; 
  signal valE_13_DYMUX_8720 : STD_LOGIC; 
  signal valE_13_CLKINV_8718 : STD_LOGIC; 
  signal valE_31_DXMUX_8741 : STD_LOGIC; 
  signal valE_31_DYMUX_8736 : STD_LOGIC; 
  signal valE_31_CLKINV_8734 : STD_LOGIC; 
  signal valE_23_DXMUX_8757 : STD_LOGIC; 
  signal valE_23_DYMUX_8752 : STD_LOGIC; 
  signal valE_23_CLKINV_8750 : STD_LOGIC; 
  signal valE_15_DXMUX_8773 : STD_LOGIC; 
  signal valE_15_DYMUX_8768 : STD_LOGIC; 
  signal valE_15_CLKINV_8766 : STD_LOGIC; 
  signal valE_41_DXMUX_8789 : STD_LOGIC; 
  signal valE_41_DYMUX_8784 : STD_LOGIC; 
  signal valE_41_CLKINV_8782 : STD_LOGIC; 
  signal valE_33_DXMUX_8805 : STD_LOGIC; 
  signal valE_33_DYMUX_8800 : STD_LOGIC; 
  signal valE_33_CLKINV_8798 : STD_LOGIC; 
  signal valE_25_DXMUX_8821 : STD_LOGIC; 
  signal valE_25_DYMUX_8816 : STD_LOGIC; 
  signal valE_25_CLKINV_8814 : STD_LOGIC; 
  signal valE_17_DXMUX_8837 : STD_LOGIC; 
  signal valE_17_DYMUX_8832 : STD_LOGIC; 
  signal valE_17_CLKINV_8830 : STD_LOGIC; 
  signal valE_51_DXMUX_8853 : STD_LOGIC; 
  signal valE_51_DYMUX_8848 : STD_LOGIC; 
  signal valE_51_CLKINV_8846 : STD_LOGIC; 
  signal valE_43_DXMUX_8869 : STD_LOGIC; 
  signal valE_43_DYMUX_8864 : STD_LOGIC; 
  signal valE_43_CLKINV_8862 : STD_LOGIC; 
  signal valE_35_DXMUX_8885 : STD_LOGIC; 
  signal valE_35_DYMUX_8880 : STD_LOGIC; 
  signal valE_35_CLKINV_8878 : STD_LOGIC; 
  signal valE_27_DXMUX_8901 : STD_LOGIC; 
  signal valE_27_DYMUX_8896 : STD_LOGIC; 
  signal valE_27_CLKINV_8894 : STD_LOGIC; 
  signal valE_19_DXMUX_8917 : STD_LOGIC; 
  signal valE_19_DYMUX_8912 : STD_LOGIC; 
  signal valE_19_CLKINV_8910 : STD_LOGIC; 
  signal valE_61_DXMUX_8933 : STD_LOGIC; 
  signal valE_61_DYMUX_8928 : STD_LOGIC; 
  signal valE_61_CLKINV_8926 : STD_LOGIC; 
  signal valE_53_DXMUX_8949 : STD_LOGIC; 
  signal valE_53_DYMUX_8944 : STD_LOGIC; 
  signal valE_53_CLKINV_8942 : STD_LOGIC; 
  signal valE_45_DXMUX_8965 : STD_LOGIC; 
  signal valE_45_DYMUX_8960 : STD_LOGIC; 
  signal valE_45_CLKINV_8958 : STD_LOGIC; 
  signal valE_37_DXMUX_8981 : STD_LOGIC; 
  signal valE_37_DYMUX_8976 : STD_LOGIC; 
  signal valE_37_CLKINV_8974 : STD_LOGIC; 
  signal valE_29_DXMUX_8997 : STD_LOGIC; 
  signal valE_29_DYMUX_8992 : STD_LOGIC; 
  signal valE_29_CLKINV_8990 : STD_LOGIC; 
  signal valE_63_DXMUX_9013 : STD_LOGIC; 
  signal valE_63_DYMUX_9008 : STD_LOGIC; 
  signal valE_63_CLKINV_9006 : STD_LOGIC; 
  signal valE_55_DXMUX_9029 : STD_LOGIC; 
  signal valE_55_DYMUX_9024 : STD_LOGIC; 
  signal valE_55_CLKINV_9022 : STD_LOGIC; 
  signal valE_47_DXMUX_9045 : STD_LOGIC; 
  signal valE_47_DYMUX_9040 : STD_LOGIC; 
  signal valE_47_CLKINV_9038 : STD_LOGIC; 
  signal valE_39_DXMUX_9061 : STD_LOGIC; 
  signal valE_39_DYMUX_9056 : STD_LOGIC; 
  signal valE_39_CLKINV_9054 : STD_LOGIC; 
  signal valE_57_DXMUX_9077 : STD_LOGIC; 
  signal valE_57_DYMUX_9072 : STD_LOGIC; 
  signal valE_57_CLKINV_9070 : STD_LOGIC; 
  signal valE_49_DXMUX_9093 : STD_LOGIC; 
  signal valE_49_DYMUX_9088 : STD_LOGIC; 
  signal valE_49_CLKINV_9086 : STD_LOGIC; 
  signal valE_59_DXMUX_9109 : STD_LOGIC; 
  signal valE_59_DYMUX_9104 : STD_LOGIC; 
  signal valE_59_CLKINV_9102 : STD_LOGIC; 
  signal ALU_E_mux0001_13_32_9134 : STD_LOGIC; 
  signal ALU_E_mux0001_12_32_9127 : STD_LOGIC; 
  signal ALU_E_mux0001_14_32_9158 : STD_LOGIC; 
  signal ALU_E_mux0001_20_32_9151 : STD_LOGIC; 
  signal ALU_E_mux0001_15_32_9182 : STD_LOGIC; 
  signal ALU_E_mux0001_21_32_9175 : STD_LOGIC; 
  signal ALU_E_mux0001_16_32_9206 : STD_LOGIC; 
  signal ALU_E_mux0001_22_32_9199 : STD_LOGIC; 
  signal ALU_E_mux0001_25_32_9230 : STD_LOGIC; 
  signal ALU_E_mux0001_30_32_9223 : STD_LOGIC; 
  signal ALU_E_mux0001_26_32_9254 : STD_LOGIC; 
  signal ALU_E_mux0001_31_32_9247 : STD_LOGIC; 
  signal ALU_E_mux0001_27_32_9278 : STD_LOGIC; 
  signal ALU_E_mux0001_32_32_9271 : STD_LOGIC; 
  signal ALU_E_mux0001_18_32_9302 : STD_LOGIC; 
  signal ALU_E_mux0001_17_32_9295 : STD_LOGIC; 
  signal ALU_E_mux0001_28_32_9326 : STD_LOGIC; 
  signal ALU_E_mux0001_33_32_9319 : STD_LOGIC; 
  signal ALU_E_mux0001_42_32_9350 : STD_LOGIC; 
  signal ALU_E_mux0001_41_32_9343 : STD_LOGIC; 
  signal ALU_E_mux0001_29_32_9374 : STD_LOGIC; 
  signal ALU_E_mux0001_34_32_9367 : STD_LOGIC; 
  signal ALU_E_mux0001_43_32_9398 : STD_LOGIC; 
  signal ALU_E_mux0001_50_32_9391 : STD_LOGIC; 
  signal ALU_E_mux0001_19_32_9410 : STD_LOGIC; 
  signal ALU_E_mux0001_36_32_9434 : STD_LOGIC; 
  signal ALU_E_mux0001_35_32_9427 : STD_LOGIC; 
  signal ALU_E_mux0001_44_32_9458 : STD_LOGIC; 
  signal ALU_E_mux0001_51_32_9451 : STD_LOGIC; 
  signal ALU_E_mux0001_57_32_9482 : STD_LOGIC; 
  signal ALU_E_mux0001_60_32_9475 : STD_LOGIC; 
  signal ALU_E_mux0001_37_32_9494 : STD_LOGIC; 
  signal ALU_E_mux0001_46_32_9518 : STD_LOGIC; 
  signal ALU_E_mux0001_45_32_9511 : STD_LOGIC; 
  signal ALU_E_mux0001_58_32_9542 : STD_LOGIC; 
  signal ALU_E_mux0001_61_32_9535 : STD_LOGIC; 
  signal ALU_E_mux0001_59_32_9566 : STD_LOGIC; 
  signal ALU_E_mux0001_62_32_9559 : STD_LOGIC; 
  signal ALU_E_mux0001_48_32_9590 : STD_LOGIC; 
  signal ALU_E_mux0001_47_32_9583 : STD_LOGIC; 
  signal ALU_E_mux0001_63_32_9602 : STD_LOGIC; 
  signal ALU_E_mux0001_49_32_9614 : STD_LOGIC; 
  signal valE_1_DXMUX_9629 : STD_LOGIC; 
  signal valE_1_DYMUX_9624 : STD_LOGIC; 
  signal valE_1_CLKINV_9622 : STD_LOGIC; 
  signal valE_3_DXMUX_9645 : STD_LOGIC; 
  signal valE_3_DYMUX_9640 : STD_LOGIC; 
  signal valE_3_CLKINV_9638 : STD_LOGIC; 
  signal valE_5_DXMUX_9661 : STD_LOGIC; 
  signal valE_5_DYMUX_9656 : STD_LOGIC; 
  signal valE_5_CLKINV_9654 : STD_LOGIC; 
  signal valE_7_DXMUX_9677 : STD_LOGIC; 
  signal valE_7_DYMUX_9672 : STD_LOGIC; 
  signal valE_7_CLKINV_9670 : STD_LOGIC; 
  signal valE_9_DXMUX_9693 : STD_LOGIC; 
  signal valE_9_DYMUX_9688 : STD_LOGIC; 
  signal valE_9_CLKINV_9686 : STD_LOGIC; 
  signal ALU_fun_1_DXMUX_9712 : STD_LOGIC; 
  signal ALU_fun_1_DYMUX_9706 : STD_LOGIC; 
  signal ALU_fun_1_SRINV_9704 : STD_LOGIC; 
  signal ALU_fun_1_CLKINV_9703 : STD_LOGIC; 
  signal ALU_fun_2_DYMUX_9724 : STD_LOGIC; 
  signal ALU_fun_2_SRINV_9722 : STD_LOGIC; 
  signal ALU_fun_2_CLKINV_9721 : STD_LOGIC; 
  signal ALU_A_2_DXMUX_9755 : STD_LOGIC; 
  signal ALU_A_or0001_pack_1 : STD_LOGIC; 
  signal ALU_A_2_CLKINV_9740 : STD_LOGIC; 
  signal ALU_B_not0001 : STD_LOGIC; 
  signal ALU_A_or0002 : STD_LOGIC; 
  signal ALU_B_11_DXMUX_9798 : STD_LOGIC; 
  signal ALU_B_11_DYMUX_9792 : STD_LOGIC; 
  signal ALU_B_11_SRINV_9790 : STD_LOGIC; 
  signal ALU_B_11_CLKINV_9789 : STD_LOGIC; 
  signal ALU_B_21_DXMUX_9818 : STD_LOGIC; 
  signal ALU_B_21_DYMUX_9812 : STD_LOGIC; 
  signal ALU_B_21_SRINV_9810 : STD_LOGIC; 
  signal ALU_B_21_CLKINV_9809 : STD_LOGIC; 
  signal ALU_B_13_DXMUX_9838 : STD_LOGIC; 
  signal ALU_B_13_DYMUX_9832 : STD_LOGIC; 
  signal ALU_B_13_SRINV_9830 : STD_LOGIC; 
  signal ALU_B_13_CLKINV_9829 : STD_LOGIC; 
  signal ALU_B_31_DXMUX_9858 : STD_LOGIC; 
  signal ALU_B_31_DYMUX_9852 : STD_LOGIC; 
  signal ALU_B_31_SRINV_9850 : STD_LOGIC; 
  signal ALU_B_31_CLKINV_9849 : STD_LOGIC; 
  signal ALU_B_23_DXMUX_9878 : STD_LOGIC; 
  signal ALU_B_23_DYMUX_9872 : STD_LOGIC; 
  signal ALU_B_23_SRINV_9870 : STD_LOGIC; 
  signal ALU_B_23_CLKINV_9869 : STD_LOGIC; 
  signal ALU_B_15_DXMUX_9898 : STD_LOGIC; 
  signal ALU_B_15_DYMUX_9892 : STD_LOGIC; 
  signal ALU_B_15_SRINV_9890 : STD_LOGIC; 
  signal ALU_B_15_CLKINV_9889 : STD_LOGIC; 
  signal ALU_B_41_DXMUX_9918 : STD_LOGIC; 
  signal ALU_B_41_DYMUX_9912 : STD_LOGIC; 
  signal ALU_B_41_SRINV_9910 : STD_LOGIC; 
  signal ALU_B_41_CLKINV_9909 : STD_LOGIC; 
  signal ALU_B_33_DXMUX_9938 : STD_LOGIC; 
  signal ALU_B_33_DYMUX_9932 : STD_LOGIC; 
  signal ALU_B_33_SRINV_9930 : STD_LOGIC; 
  signal ALU_B_33_CLKINV_9929 : STD_LOGIC; 
  signal ALU_B_25_DXMUX_9958 : STD_LOGIC; 
  signal ALU_B_25_DYMUX_9952 : STD_LOGIC; 
  signal ALU_B_25_SRINV_9950 : STD_LOGIC; 
  signal ALU_B_25_CLKINV_9949 : STD_LOGIC; 
  signal ALU_B_17_DXMUX_9978 : STD_LOGIC; 
  signal ALU_B_17_DYMUX_9972 : STD_LOGIC; 
  signal ALU_B_17_SRINV_9970 : STD_LOGIC; 
  signal ALU_B_17_CLKINV_9969 : STD_LOGIC; 
  signal ALU_B_51_DXMUX_9998 : STD_LOGIC; 
  signal ALU_B_51_DYMUX_9992 : STD_LOGIC; 
  signal ALU_B_51_SRINV_9990 : STD_LOGIC; 
  signal ALU_B_51_CLKINV_9989 : STD_LOGIC; 
  signal ALU_B_43_DXMUX_10018 : STD_LOGIC; 
  signal ALU_B_43_DYMUX_10012 : STD_LOGIC; 
  signal ALU_B_43_SRINV_10010 : STD_LOGIC; 
  signal ALU_B_43_CLKINV_10009 : STD_LOGIC; 
  signal ALU_B_35_DXMUX_10038 : STD_LOGIC; 
  signal ALU_B_35_DYMUX_10032 : STD_LOGIC; 
  signal ALU_B_35_SRINV_10030 : STD_LOGIC; 
  signal ALU_B_35_CLKINV_10029 : STD_LOGIC; 
  signal ALU_B_27_DXMUX_10058 : STD_LOGIC; 
  signal ALU_B_27_DYMUX_10052 : STD_LOGIC; 
  signal ALU_B_27_SRINV_10050 : STD_LOGIC; 
  signal ALU_B_27_CLKINV_10049 : STD_LOGIC; 
  signal ALU_B_19_DXMUX_10078 : STD_LOGIC; 
  signal ALU_B_19_DYMUX_10072 : STD_LOGIC; 
  signal ALU_B_19_SRINV_10070 : STD_LOGIC; 
  signal ALU_B_19_CLKINV_10069 : STD_LOGIC; 
  signal ALU_B_61_DXMUX_10098 : STD_LOGIC; 
  signal ALU_B_61_DYMUX_10092 : STD_LOGIC; 
  signal ALU_B_61_SRINV_10090 : STD_LOGIC; 
  signal ALU_B_61_CLKINV_10089 : STD_LOGIC; 
  signal ALU_B_53_DXMUX_10118 : STD_LOGIC; 
  signal ALU_B_53_DYMUX_10112 : STD_LOGIC; 
  signal ALU_B_53_SRINV_10110 : STD_LOGIC; 
  signal ALU_B_53_CLKINV_10109 : STD_LOGIC; 
  signal ALU_B_45_DXMUX_10138 : STD_LOGIC; 
  signal ALU_B_45_DYMUX_10132 : STD_LOGIC; 
  signal ALU_B_45_SRINV_10130 : STD_LOGIC; 
  signal ALU_B_45_CLKINV_10129 : STD_LOGIC; 
  signal ALU_B_37_DXMUX_10158 : STD_LOGIC; 
  signal ALU_B_37_DYMUX_10152 : STD_LOGIC; 
  signal ALU_B_37_SRINV_10150 : STD_LOGIC; 
  signal ALU_B_37_CLKINV_10149 : STD_LOGIC; 
  signal ALU_B_29_DXMUX_10178 : STD_LOGIC; 
  signal ALU_B_29_DYMUX_10172 : STD_LOGIC; 
  signal ALU_B_29_SRINV_10170 : STD_LOGIC; 
  signal ALU_B_29_CLKINV_10169 : STD_LOGIC; 
  signal ALU_B_63_DXMUX_10198 : STD_LOGIC; 
  signal ALU_B_63_DYMUX_10192 : STD_LOGIC; 
  signal ALU_B_63_SRINV_10190 : STD_LOGIC; 
  signal ALU_B_63_CLKINV_10189 : STD_LOGIC; 
  signal ALU_B_55_DXMUX_10218 : STD_LOGIC; 
  signal ALU_B_55_DYMUX_10212 : STD_LOGIC; 
  signal ALU_B_55_SRINV_10210 : STD_LOGIC; 
  signal ALU_B_55_CLKINV_10209 : STD_LOGIC; 
  signal ALU_B_47_DXMUX_10238 : STD_LOGIC; 
  signal ALU_B_47_DYMUX_10232 : STD_LOGIC; 
  signal ALU_B_47_SRINV_10230 : STD_LOGIC; 
  signal ALU_B_47_CLKINV_10229 : STD_LOGIC; 
  signal ALU_B_39_DXMUX_10258 : STD_LOGIC; 
  signal ALU_B_39_DYMUX_10252 : STD_LOGIC; 
  signal ALU_B_39_SRINV_10250 : STD_LOGIC; 
  signal ALU_B_39_CLKINV_10249 : STD_LOGIC; 
  signal ALU_B_57_DXMUX_10278 : STD_LOGIC; 
  signal ALU_B_57_DYMUX_10272 : STD_LOGIC; 
  signal ALU_B_57_SRINV_10270 : STD_LOGIC; 
  signal ALU_B_57_CLKINV_10269 : STD_LOGIC; 
  signal ALU_B_49_DXMUX_10298 : STD_LOGIC; 
  signal ALU_B_49_DYMUX_10292 : STD_LOGIC; 
  signal ALU_B_49_SRINV_10290 : STD_LOGIC; 
  signal ALU_B_49_CLKINV_10289 : STD_LOGIC; 
  signal ALU_B_59_DXMUX_10318 : STD_LOGIC; 
  signal ALU_B_59_DYMUX_10312 : STD_LOGIC; 
  signal ALU_B_59_SRINV_10310 : STD_LOGIC; 
  signal ALU_B_59_CLKINV_10309 : STD_LOGIC; 
  signal ALU_B_1_DXMUX_10338 : STD_LOGIC; 
  signal ALU_B_1_DYMUX_10332 : STD_LOGIC; 
  signal ALU_B_1_SRINV_10330 : STD_LOGIC; 
  signal ALU_B_1_CLKINV_10329 : STD_LOGIC; 
  signal ALU_B_3_DXMUX_10358 : STD_LOGIC; 
  signal ALU_B_3_DYMUX_10352 : STD_LOGIC; 
  signal ALU_B_3_SRINV_10350 : STD_LOGIC; 
  signal ALU_B_3_CLKINV_10349 : STD_LOGIC; 
  signal ALU_B_5_DXMUX_10378 : STD_LOGIC; 
  signal ALU_B_5_DYMUX_10372 : STD_LOGIC; 
  signal ALU_B_5_SRINV_10370 : STD_LOGIC; 
  signal ALU_B_5_CLKINV_10369 : STD_LOGIC; 
  signal ALU_B_7_DXMUX_10398 : STD_LOGIC; 
  signal ALU_B_7_DYMUX_10392 : STD_LOGIC; 
  signal ALU_B_7_SRINV_10390 : STD_LOGIC; 
  signal ALU_B_7_CLKINV_10389 : STD_LOGIC; 
  signal ALU_B_9_DXMUX_10418 : STD_LOGIC; 
  signal ALU_B_9_DYMUX_10412 : STD_LOGIC; 
  signal ALU_B_9_SRINV_10410 : STD_LOGIC; 
  signal ALU_B_9_CLKINV_10409 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal ALU_A : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal ALU_B : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal ALU_fun : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALU_E : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal ALU_A_mux0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD508",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  ifun_0_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun(0),
      O => ifun_0_INBUF
    );
  ifun_1_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun(1),
      O => ifun_1_INBUF
    );
  ifun_2_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun(2),
      O => ifun_2_INBUF
    );
  valA_0_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(0),
      O => valA_0_INBUF
    );
  valA_1_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(1),
      O => valA_1_INBUF
    );
  valA_2_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(2),
      O => valA_2_INBUF
    );
  valA_3_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(3),
      O => valA_3_INBUF
    );
  valB_0_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(0),
      O => valB_0_INBUF
    );
  valA_4_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(4),
      O => valA_4_INBUF
    );
  valB_1_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(1),
      O => valB_1_INBUF
    );
  valA_5_IBUF : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(5),
      O => valA_5_INBUF
    );
  valB_2_IBUF : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(2),
      O => valB_2_INBUF
    );
  valA_6_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(6),
      O => valA_6_INBUF
    );
  valB_3_IBUF : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(3),
      O => valB_3_INBUF
    );
  valA_7_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(7),
      O => valA_7_INBUF
    );
  valC_0_IBUF : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(0),
      O => valC_0_INBUF
    );
  valB_4_IBUF : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(4),
      O => valB_4_INBUF
    );
  valA_8_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(8),
      O => valA_8_INBUF
    );
  valC_1_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(1),
      O => valC_1_INBUF
    );
  valB_5_IBUF : X_BUF
    generic map(
      LOC => "PAD224",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(5),
      O => valB_5_INBUF
    );
  valA_9_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(9),
      O => valA_9_INBUF
    );
  valC_2_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(2),
      O => valC_2_INBUF
    );
  valB_6_IBUF : X_BUF
    generic map(
      LOC => "PAD167",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(6),
      O => valB_6_INBUF
    );
  valC_3_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(3),
      O => valC_3_INBUF
    );
  valB_7_IBUF : X_BUF
    generic map(
      LOC => "PAD219",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(7),
      O => valB_7_INBUF
    );
  valC_4_IBUF : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(4),
      O => valC_4_INBUF
    );
  valB_8_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(8),
      O => valB_8_INBUF
    );
  valC_5_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(5),
      O => valC_5_INBUF
    );
  valB_9_IBUF : X_BUF
    generic map(
      LOC => "PAD228",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(9),
      O => valB_9_INBUF
    );
  valC_6_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(6),
      O => valC_6_INBUF
    );
  valC_7_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(7),
      O => valC_7_INBUF
    );
  valE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD764"
    )
    port map (
      I => valE_0_O,
      O => valE(0)
    );
  valC_8_IBUF : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(8),
      O => valC_8_INBUF
    );
  valE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD763"
    )
    port map (
      I => valE_1_O,
      O => valE(1)
    );
  valC_9_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(9),
      O => valC_9_INBUF
    );
  valE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD760"
    )
    port map (
      I => valE_2_O,
      O => valE(2)
    );
  valE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD759"
    )
    port map (
      I => valE_3_O,
      O => valE(3)
    );
  valE_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD758"
    )
    port map (
      I => valE_4_O,
      O => valE(4)
    );
  valE_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD757"
    )
    port map (
      I => valE_5_O,
      O => valE(5)
    );
  valE_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD756"
    )
    port map (
      I => valE_6_O,
      O => valE(6)
    );
  valE_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD755"
    )
    port map (
      I => valE_7_O,
      O => valE(7)
    );
  valE_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD754"
    )
    port map (
      I => valE_8_O,
      O => valE(8)
    );
  valE_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD753"
    )
    port map (
      I => valE_9_O,
      O => valE(9)
    );
  icode_0_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode(0),
      O => icode_0_INBUF
    );
  icode_1_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode(1),
      O => icode_1_INBUF
    );
  icode_2_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode(2),
      O => icode_2_INBUF
    );
  icode_3_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode(3),
      O => icode_3_INBUF
    );
  valA_10_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(10),
      O => valA_10_INBUF
    );
  valA_11_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(11),
      O => valA_11_INBUF
    );
  valA_20_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(20),
      O => valA_20_INBUF
    );
  valA_12_IBUF : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(12),
      O => valA_12_INBUF
    );
  valA_21_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(21),
      O => valA_21_INBUF
    );
  valA_13_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(13),
      O => valA_13_INBUF
    );
  valA_30_IBUF : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(30),
      O => valA_30_INBUF
    );
  valA_22_IBUF : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(22),
      O => valA_22_INBUF
    );
  valA_14_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(14),
      O => valA_14_INBUF
    );
  valA_31_IBUF : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(31),
      O => valA_31_INBUF
    );
  valA_23_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(23),
      O => valA_23_INBUF
    );
  valA_15_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(15),
      O => valA_15_INBUF
    );
  valA_40_IBUF : X_BUF
    generic map(
      LOC => "PAD808",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(40),
      O => valA_40_INBUF
    );
  valA_32_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(32),
      O => valA_32_INBUF
    );
  valA_24_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(24),
      O => valA_24_INBUF
    );
  valA_16_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(16),
      O => valA_16_INBUF
    );
  valA_41_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(41),
      O => valA_41_INBUF
    );
  valA_33_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(33),
      O => valA_33_INBUF
    );
  valA_25_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(25),
      O => valA_25_INBUF
    );
  valA_17_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(17),
      O => valA_17_INBUF
    );
  valB_10_IBUF : X_BUF
    generic map(
      LOC => "PAD189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(10),
      O => valB_10_INBUF
    );
  valA_50_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(50),
      O => valA_50_INBUF
    );
  valA_42_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(42),
      O => valA_42_INBUF
    );
  valA_34_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(34),
      O => valA_34_INBUF
    );
  valA_26_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(26),
      O => valA_26_INBUF
    );
  valA_18_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(18),
      O => valA_18_INBUF
    );
  valB_11_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(11),
      O => valB_11_INBUF
    );
  valA_51_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(51),
      O => valA_51_INBUF
    );
  valA_43_IBUF : X_BUF
    generic map(
      LOC => "PAD810",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(43),
      O => valA_43_INBUF
    );
  valA_35_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(35),
      O => valA_35_INBUF
    );
  valA_27_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(27),
      O => valA_27_INBUF
    );
  valA_19_IBUF : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(19),
      O => valA_19_INBUF
    );
  valB_20_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(20),
      O => valB_20_INBUF
    );
  valB_12_IBUF : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(12),
      O => valB_12_INBUF
    );
  valA_60_IBUF : X_BUF
    generic map(
      LOC => "PAD771",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(60),
      O => valA_60_INBUF
    );
  valA_52_IBUF : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(52),
      O => valA_52_INBUF
    );
  valA_44_IBUF : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(44),
      O => valA_44_INBUF
    );
  valA_36_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(36),
      O => valA_36_INBUF
    );
  valA_28_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(28),
      O => valA_28_INBUF
    );
  valB_21_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(21),
      O => valB_21_INBUF
    );
  valB_13_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(13),
      O => valB_13_INBUF
    );
  valA_61_IBUF : X_BUF
    generic map(
      LOC => "PAD777",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(61),
      O => valA_61_INBUF
    );
  valA_53_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(53),
      O => valA_53_INBUF
    );
  valA_45_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(45),
      O => valA_45_INBUF
    );
  valA_37_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(37),
      O => valA_37_INBUF
    );
  valA_29_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(29),
      O => valA_29_INBUF
    );
  valB_30_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(30),
      O => valB_30_INBUF
    );
  valB_22_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(22),
      O => valB_22_INBUF
    );
  valB_14_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(14),
      O => valB_14_INBUF
    );
  valA_62_IBUF : X_BUF
    generic map(
      LOC => "PAD769",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(62),
      O => valA_62_INBUF
    );
  valA_54_IBUF : X_BUF
    generic map(
      LOC => "PAD791",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(54),
      O => valA_54_INBUF
    );
  valA_46_IBUF : X_BUF
    generic map(
      LOC => "PAD787",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(46),
      O => valA_46_INBUF
    );
  valA_38_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(38),
      O => valA_38_INBUF
    );
  valB_31_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(31),
      O => valB_31_INBUF
    );
  valB_23_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(23),
      O => valB_23_INBUF
    );
  valB_15_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(15),
      O => valB_15_INBUF
    );
  valA_63_IBUF : X_BUF
    generic map(
      LOC => "PAD768",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(63),
      O => valA_63_INBUF
    );
  valA_55_IBUF : X_BUF
    generic map(
      LOC => "PAD797",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(55),
      O => valA_55_INBUF
    );
  valA_47_IBUF : X_BUF
    generic map(
      LOC => "PAD790",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(47),
      O => valA_47_INBUF
    );
  valA_39_IBUF : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(39),
      O => valA_39_INBUF
    );
  valB_40_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(40),
      O => valB_40_INBUF
    );
  valB_32_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(32),
      O => valB_32_INBUF
    );
  valB_24_IBUF : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(24),
      O => valB_24_INBUF
    );
  valB_16_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(16),
      O => valB_16_INBUF
    );
  valA_56_IBUF : X_BUF
    generic map(
      LOC => "PAD778",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(56),
      O => valA_56_INBUF
    );
  valA_48_IBUF : X_BUF
    generic map(
      LOC => "PAD798",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(48),
      O => valA_48_INBUF
    );
  valB_41_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(41),
      O => valB_41_INBUF
    );
  valB_33_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(33),
      O => valB_33_INBUF
    );
  valB_25_IBUF : X_BUF
    generic map(
      LOC => "PAD165",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(25),
      O => valB_25_INBUF
    );
  valB_17_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(17),
      O => valB_17_INBUF
    );
  valA_57_IBUF : X_BUF
    generic map(
      LOC => "PAD779",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(57),
      O => valA_57_INBUF
    );
  valA_49_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(49),
      O => valA_49_INBUF
    );
  valC_10_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(10),
      O => valC_10_INBUF
    );
  valB_50_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(50),
      O => valB_50_INBUF
    );
  valB_42_IBUF : X_BUF
    generic map(
      LOC => "PAD142",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(42),
      O => valB_42_INBUF
    );
  valB_34_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(34),
      O => valB_34_INBUF
    );
  valB_26_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(26),
      O => valB_26_INBUF
    );
  valB_18_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(18),
      O => valB_18_INBUF
    );
  valA_58_IBUF : X_BUF
    generic map(
      LOC => "PAD772",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(58),
      O => valA_58_INBUF
    );
  valC_11_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(11),
      O => valC_11_INBUF
    );
  valB_51_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(51),
      O => valB_51_INBUF
    );
  valB_43_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(43),
      O => valB_43_INBUF
    );
  valB_35_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(35),
      O => valB_35_INBUF
    );
  valB_27_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(27),
      O => valB_27_INBUF
    );
  valB_19_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(19),
      O => valB_19_INBUF
    );
  valA_59_IBUF : X_BUF
    generic map(
      LOC => "PAD781",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA(59),
      O => valA_59_INBUF
    );
  valC_20_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(20),
      O => valC_20_INBUF
    );
  valC_12_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(12),
      O => valC_12_INBUF
    );
  valB_60_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(60),
      O => valB_60_INBUF
    );
  valB_52_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(52),
      O => valB_52_INBUF
    );
  valB_44_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(44),
      O => valB_44_INBUF
    );
  valB_36_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(36),
      O => valB_36_INBUF
    );
  valB_28_IBUF : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(28),
      O => valB_28_INBUF
    );
  valC_21_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(21),
      O => valC_21_INBUF
    );
  valC_13_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(13),
      O => valC_13_INBUF
    );
  valB_61_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(61),
      O => valB_61_INBUF
    );
  valB_53_IBUF : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(53),
      O => valB_53_INBUF
    );
  valB_45_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(45),
      O => valB_45_INBUF
    );
  valB_37_IBUF : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(37),
      O => valB_37_INBUF
    );
  valB_29_IBUF : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(29),
      O => valB_29_INBUF
    );
  valC_30_IBUF : X_BUF
    generic map(
      LOC => "PAD809",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(30),
      O => valC_30_INBUF
    );
  valC_22_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(22),
      O => valC_22_INBUF
    );
  valC_14_IBUF : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(14),
      O => valC_14_INBUF
    );
  valB_62_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(62),
      O => valB_62_INBUF
    );
  valB_54_IBUF : X_BUF
    generic map(
      LOC => "PAD127",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(54),
      O => valB_54_INBUF
    );
  valB_46_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(46),
      O => valB_46_INBUF
    );
  valB_38_IBUF : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(38),
      O => valB_38_INBUF
    );
  valC_31_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(31),
      O => valC_31_INBUF
    );
  valC_23_IBUF : X_BUF
    generic map(
      LOC => "PAD816",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(23),
      O => valC_23_INBUF
    );
  valC_15_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(15),
      O => valC_15_INBUF
    );
  valB_63_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(63),
      O => valB_63_INBUF
    );
  valB_55_IBUF : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(55),
      O => valB_55_INBUF
    );
  valB_47_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(47),
      O => valB_47_INBUF
    );
  valB_39_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(39),
      O => valB_39_INBUF
    );
  valC_40_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(40),
      O => valC_40_INBUF
    );
  valC_40_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_40_INBUF,
      O => valC_40_IBUF_2842
    );
  valC_32_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(32),
      O => valC_32_INBUF
    );
  valC_32_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_32_INBUF,
      O => valC_32_IBUF_2843
    );
  valC_24_IBUF : X_BUF
    generic map(
      LOC => "PAD815",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(24),
      O => valC_24_INBUF
    );
  valC_24_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD815",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_24_INBUF,
      O => valC_24_IBUF_2844
    );
  valC_16_IBUF : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(16),
      O => valC_16_INBUF
    );
  valC_16_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_16_INBUF,
      O => valC_16_IBUF_2845
    );
  valB_56_IBUF : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(56),
      O => valB_56_INBUF
    );
  valB_48_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(48),
      O => valB_48_INBUF
    );
  valC_41_IBUF : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(41),
      O => valC_41_INBUF
    );
  valC_41_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_41_INBUF,
      O => valC_41_IBUF_2848
    );
  valC_33_IBUF : X_BUF
    generic map(
      LOC => "PAD806",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(33),
      O => valC_33_INBUF
    );
  valC_33_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD806",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_33_INBUF,
      O => valC_33_IBUF_2849
    );
  valC_25_IBUF : X_BUF
    generic map(
      LOC => "PAD814",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(25),
      O => valC_25_INBUF
    );
  valC_25_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD814",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_25_INBUF,
      O => valC_25_IBUF_2850
    );
  valC_17_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(17),
      O => valC_17_INBUF
    );
  valC_17_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_17_INBUF,
      O => valC_17_IBUF_2851
    );
  valB_57_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(57),
      O => valB_57_INBUF
    );
  valB_49_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(49),
      O => valB_49_INBUF
    );
  valC_50_IBUF : X_BUF
    generic map(
      LOC => "PAD794",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(50),
      O => valC_50_INBUF
    );
  valC_50_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD794",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_50_INBUF,
      O => valC_50_IBUF_2854
    );
  valC_42_IBUF : X_BUF
    generic map(
      LOC => "PAD807",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(42),
      O => valC_42_INBUF
    );
  valC_42_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD807",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_42_INBUF,
      O => valC_42_IBUF_2855
    );
  valC_34_IBUF : X_BUF
    generic map(
      LOC => "PAD805",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(34),
      O => valC_34_INBUF
    );
  valC_34_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD805",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_34_INBUF,
      O => valC_34_IBUF_2856
    );
  valC_26_IBUF : X_BUF
    generic map(
      LOC => "PAD813",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(26),
      O => valC_26_INBUF
    );
  valC_26_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD813",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_26_INBUF,
      O => valC_26_IBUF_2857
    );
  valC_18_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(18),
      O => valC_18_INBUF
    );
  valC_18_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_18_INBUF,
      O => valC_18_IBUF_2858
    );
  valB_58_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(58),
      O => valB_58_INBUF
    );
  valC_51_IBUF : X_BUF
    generic map(
      LOC => "PAD795",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(51),
      O => valC_51_INBUF
    );
  valC_51_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD795",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_51_INBUF,
      O => valC_51_IBUF_2860
    );
  valC_43_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(43),
      O => valC_43_INBUF
    );
  valC_43_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_43_INBUF,
      O => valC_43_IBUF_2861
    );
  valC_35_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(35),
      O => valC_35_INBUF
    );
  valC_35_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_35_INBUF,
      O => valC_35_IBUF_2862
    );
  valC_27_IBUF : X_BUF
    generic map(
      LOC => "PAD812",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(27),
      O => valC_27_INBUF
    );
  valC_27_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD812",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_27_INBUF,
      O => valC_27_IBUF_2863
    );
  valC_19_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(19),
      O => valC_19_INBUF
    );
  valC_19_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_19_INBUF,
      O => valC_19_IBUF_2864
    );
  valB_59_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB(59),
      O => valB_59_INBUF
    );
  valC_60_IBUF : X_BUF
    generic map(
      LOC => "PAD784",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(60),
      O => valC_60_INBUF
    );
  valC_60_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD784",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_60_INBUF,
      O => valC_60_IBUF_2866
    );
  valC_52_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(52),
      O => valC_52_INBUF
    );
  valC_52_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_52_INBUF,
      O => valC_52_IBUF_2867
    );
  valC_44_IBUF : X_BUF
    generic map(
      LOC => "PAD793",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(44),
      O => valC_44_INBUF
    );
  valC_44_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD793",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_44_INBUF,
      O => valC_44_IBUF_2868
    );
  valC_36_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(36),
      O => valC_36_INBUF
    );
  valC_36_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_36_INBUF,
      O => valC_36_IBUF_2869
    );
  valC_28_IBUF : X_BUF
    generic map(
      LOC => "PAD811",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(28),
      O => valC_28_INBUF
    );
  valC_28_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD811",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_28_INBUF,
      O => valC_28_IBUF_2870
    );
  valC_61_IBUF : X_BUF
    generic map(
      LOC => "PAD767",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(61),
      O => valC_61_INBUF
    );
  valC_61_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD767",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_61_INBUF,
      O => valC_61_IBUF_2871
    );
  valC_53_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(53),
      O => valC_53_INBUF
    );
  valC_53_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_53_INBUF,
      O => valC_53_IBUF_2872
    );
  valC_45_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(45),
      O => valC_45_INBUF
    );
  valC_45_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_45_INBUF,
      O => valC_45_IBUF_2873
    );
  valC_37_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(37),
      O => valC_37_INBUF
    );
  valC_37_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_37_INBUF,
      O => valC_37_IBUF_2874
    );
  valC_29_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(29),
      O => valC_29_INBUF
    );
  valC_29_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_29_INBUF,
      O => valC_29_IBUF_2875
    );
  valC_62_IBUF : X_BUF
    generic map(
      LOC => "PAD766",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(62),
      O => valC_62_INBUF
    );
  valC_62_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD766",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_62_INBUF,
      O => valC_62_IBUF_2876
    );
  valC_54_IBUF : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(54),
      O => valC_54_INBUF
    );
  valC_54_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_54_INBUF,
      O => valC_54_IBUF_2877
    );
  valC_46_IBUF : X_BUF
    generic map(
      LOC => "PAD786",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(46),
      O => valC_46_INBUF
    );
  valC_46_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD786",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_46_INBUF,
      O => valC_46_IBUF_2878
    );
  valC_38_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(38),
      O => valC_38_INBUF
    );
  valC_38_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_38_INBUF,
      O => valC_38_IBUF_2879
    );
  valC_63_IBUF : X_BUF
    generic map(
      LOC => "PAD765",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(63),
      O => valC_63_INBUF
    );
  valC_63_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD765",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_63_INBUF,
      O => valC_63_IBUF_2880
    );
  valC_55_IBUF : X_BUF
    generic map(
      LOC => "PAD796",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(55),
      O => valC_55_INBUF
    );
  valC_55_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD796",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_55_INBUF,
      O => valC_55_IBUF_2881
    );
  valC_47_IBUF : X_BUF
    generic map(
      LOC => "PAD785",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(47),
      O => valC_47_INBUF
    );
  valC_47_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD785",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_47_INBUF,
      O => valC_47_IBUF_2882
    );
  valC_39_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(39),
      O => valC_39_INBUF
    );
  valC_39_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_39_INBUF,
      O => valC_39_IBUF_2883
    );
  valC_56_IBUF : X_BUF
    generic map(
      LOC => "PAD783",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(56),
      O => valC_56_INBUF
    );
  valC_56_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD783",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_56_INBUF,
      O => valC_56_IBUF_2884
    );
  valC_48_IBUF : X_BUF
    generic map(
      LOC => "PAD789",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(48),
      O => valC_48_INBUF
    );
  valC_48_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD789",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_48_INBUF,
      O => valC_48_IBUF_2885
    );
  valC_57_IBUF : X_BUF
    generic map(
      LOC => "PAD782",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(57),
      O => valC_57_INBUF
    );
  valC_57_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD782",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_57_INBUF,
      O => valC_57_IBUF_2886
    );
  valC_49_IBUF : X_BUF
    generic map(
      LOC => "PAD792",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(49),
      O => valC_49_INBUF
    );
  valC_49_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD792",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_49_INBUF,
      O => valC_49_IBUF_2887
    );
  valE_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD748"
    )
    port map (
      I => valE_10_O,
      O => valE(10)
    );
  valC_58_IBUF : X_BUF
    generic map(
      LOC => "PAD770",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(58),
      O => valC_58_INBUF
    );
  valC_58_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD770",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_58_INBUF,
      O => valC_58_IBUF_2889
    );
  valE_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD747"
    )
    port map (
      I => valE_11_O,
      O => valE(11)
    );
  valC_59_IBUF : X_BUF
    generic map(
      LOC => "PAD780",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC(59),
      O => valC_59_INBUF
    );
  valC_59_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD780",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_59_INBUF,
      O => valC_59_IBUF_2891
    );
  valE_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD736"
    )
    port map (
      I => valE_20_O,
      O => valE(20)
    );
  valE_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD746"
    )
    port map (
      I => valE_12_O,
      O => valE(12)
    );
  valE_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD735"
    )
    port map (
      I => valE_21_O,
      O => valE(21)
    );
  valE_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD745"
    )
    port map (
      I => valE_13_O,
      O => valE(13)
    );
  valE_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD720"
    )
    port map (
      I => valE_30_O,
      O => valE(30)
    );
  valE_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD734"
    )
    port map (
      I => valE_22_O,
      O => valE(22)
    );
  valE_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD744"
    )
    port map (
      I => valE_14_O,
      O => valE(14)
    );
  valE_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD719"
    )
    port map (
      I => valE_31_O,
      O => valE(31)
    );
  valE_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD733"
    )
    port map (
      I => valE_23_O,
      O => valE(23)
    );
  valE_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD743"
    )
    port map (
      I => valE_15_O,
      O => valE(15)
    );
  valE_40_OBUF : X_OBUF
    generic map(
      LOC => "PAD710"
    )
    port map (
      I => valE_40_O,
      O => valE(40)
    );
  valE_32_OBUF : X_OBUF
    generic map(
      LOC => "PAD718"
    )
    port map (
      I => valE_32_O,
      O => valE(32)
    );
  valE_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD732"
    )
    port map (
      I => valE_24_O,
      O => valE(24)
    );
  valE_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD742"
    )
    port map (
      I => valE_16_O,
      O => valE(16)
    );
  valE_41_OBUF : X_OBUF
    generic map(
      LOC => "PAD709"
    )
    port map (
      I => valE_41_O,
      O => valE(41)
    );
  valE_33_OBUF : X_OBUF
    generic map(
      LOC => "PAD717"
    )
    port map (
      I => valE_33_O,
      O => valE(33)
    );
  valE_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD731"
    )
    port map (
      I => valE_25_O,
      O => valE(25)
    );
  valE_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD741"
    )
    port map (
      I => valE_17_O,
      O => valE(17)
    );
  valE_50_OBUF : X_OBUF
    generic map(
      LOC => "PAD694"
    )
    port map (
      I => valE_50_O,
      O => valE(50)
    );
  valE_42_OBUF : X_OBUF
    generic map(
      LOC => "PAD708"
    )
    port map (
      I => valE_42_O,
      O => valE(42)
    );
  valE_34_OBUF : X_OBUF
    generic map(
      LOC => "PAD716"
    )
    port map (
      I => valE_34_O,
      O => valE(34)
    );
  valE_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD730"
    )
    port map (
      I => valE_26_O,
      O => valE(26)
    );
  valE_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD740"
    )
    port map (
      I => valE_18_O,
      O => valE(18)
    );
  valE_51_OBUF : X_OBUF
    generic map(
      LOC => "PAD693"
    )
    port map (
      I => valE_51_O,
      O => valE(51)
    );
  valE_43_OBUF : X_OBUF
    generic map(
      LOC => "PAD707"
    )
    port map (
      I => valE_43_O,
      O => valE(43)
    );
  valE_35_OBUF : X_OBUF
    generic map(
      LOC => "PAD715"
    )
    port map (
      I => valE_35_O,
      O => valE(35)
    );
  valE_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD729"
    )
    port map (
      I => valE_27_O,
      O => valE(27)
    );
  valE_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD739"
    )
    port map (
      I => valE_19_O,
      O => valE(19)
    );
  valE_60_OBUF : X_OBUF
    generic map(
      LOC => "PAD682"
    )
    port map (
      I => valE_60_O,
      O => valE(60)
    );
  valE_52_OBUF : X_OBUF
    generic map(
      LOC => "PAD692"
    )
    port map (
      I => valE_52_O,
      O => valE(52)
    );
  valE_44_OBUF : X_OBUF
    generic map(
      LOC => "PAD706"
    )
    port map (
      I => valE_44_O,
      O => valE(44)
    );
  valE_36_OBUF : X_OBUF
    generic map(
      LOC => "PAD714"
    )
    port map (
      I => valE_36_O,
      O => valE(36)
    );
  valE_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD728"
    )
    port map (
      I => valE_28_O,
      O => valE(28)
    );
  valE_61_OBUF : X_OBUF
    generic map(
      LOC => "PAD681"
    )
    port map (
      I => valE_61_O,
      O => valE(61)
    );
  valE_53_OBUF : X_OBUF
    generic map(
      LOC => "PAD691"
    )
    port map (
      I => valE_53_O,
      O => valE(53)
    );
  valE_45_OBUF : X_OBUF
    generic map(
      LOC => "PAD705"
    )
    port map (
      I => valE_45_O,
      O => valE(45)
    );
  valE_37_OBUF : X_OBUF
    generic map(
      LOC => "PAD713"
    )
    port map (
      I => valE_37_O,
      O => valE(37)
    );
  valE_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD727"
    )
    port map (
      I => valE_29_O,
      O => valE(29)
    );
  valE_62_OBUF : X_OBUF
    generic map(
      LOC => "PAD680"
    )
    port map (
      I => valE_62_O,
      O => valE(62)
    );
  valE_54_OBUF : X_OBUF
    generic map(
      LOC => "PAD690"
    )
    port map (
      I => valE_54_O,
      O => valE(54)
    );
  valE_46_OBUF : X_OBUF
    generic map(
      LOC => "PAD698"
    )
    port map (
      I => valE_46_O,
      O => valE(46)
    );
  valE_38_OBUF : X_OBUF
    generic map(
      LOC => "PAD712"
    )
    port map (
      I => valE_38_O,
      O => valE(38)
    );
  valE_63_OBUF : X_OBUF
    generic map(
      LOC => "PAD679"
    )
    port map (
      I => valE_63_O,
      O => valE(63)
    );
  valE_55_OBUF : X_OBUF
    generic map(
      LOC => "PAD689"
    )
    port map (
      I => valE_55_O,
      O => valE(55)
    );
  valE_47_OBUF : X_OBUF
    generic map(
      LOC => "PAD697"
    )
    port map (
      I => valE_47_O,
      O => valE(47)
    );
  valE_39_OBUF : X_OBUF
    generic map(
      LOC => "PAD711"
    )
    port map (
      I => valE_39_O,
      O => valE(39)
    );
  valE_56_OBUF : X_OBUF
    generic map(
      LOC => "PAD686"
    )
    port map (
      I => valE_56_O,
      O => valE(56)
    );
  valE_48_OBUF : X_OBUF
    generic map(
      LOC => "PAD696"
    )
    port map (
      I => valE_48_O,
      O => valE(48)
    );
  valE_57_OBUF : X_OBUF
    generic map(
      LOC => "PAD685"
    )
    port map (
      I => valE_57_O,
      O => valE(57)
    );
  valE_49_OBUF : X_OBUF
    generic map(
      LOC => "PAD695"
    )
    port map (
      I => valE_49_O,
      O => valE(49)
    );
  valE_58_OBUF : X_OBUF
    generic map(
      LOC => "PAD684"
    )
    port map (
      I => valE_58_O,
      O => valE(58)
    );
  valE_59_OBUF : X_OBUF
    generic map(
      LOC => "PAD683"
    )
    port map (
      I => valE_59_O,
      O => valE(59)
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  ALU_E_mux0001_9_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X55Y180"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_A(9),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_B(9),
      O => ALU_E_mux0001_9_32_5019
    );
  ALU_E_mux0001_9_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_312_pack_1,
      O => ALU_E_mux0001_0_312
    );
  ALU_E_mux0001_0_31_3 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X55Y180"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun_2_1_2951,
      ADR2 => VCC,
      ADR3 => ALU_fun_0_1_2950,
      O => ALU_E_mux0001_0_312_pack_1
    );
  ALU_E_mux0001_23_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X58Y189"
    )
    port map (
      ADR0 => N132,
      ADR1 => ALU_A(23),
      ADR2 => ALU_B(23),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_23_32_5043
    );
  ALU_E_mux0001_23_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => N132_pack_1,
      O => N132
    );
  ALU_E_mux0001_0_31 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X58Y189"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun_2_1_2951,
      ADR2 => VCC,
      ADR3 => ALU_fun_0_1_2950,
      O => N132_pack_1
    );
  ALU_E_mux0001_0_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X66Y192"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(0),
      ADR3 => ALU_E_mux0001_0_351_SW0_O,
      O => ALU_E_mux0001_0_35
    );
  ALU_E_0 : X_SFF
    generic map(
      LOC => "SLICE_X66Y192",
      INIT => '0'
    )
    port map (
      I => ALU_E_0_DXMUX_5074,
      CE => VCC,
      CLK => ALU_E_0_CLKINV_5056,
      SET => GND,
      RST => GND,
      SSET => ALU_E_0_SRINV_5057,
      SRST => GND,
      O => ALU_E(0)
    );
  ALU_E_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_35,
      O => ALU_E_0_DXMUX_5074
    );
  ALU_E_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_351_SW0_O_pack_1,
      O => ALU_E_mux0001_0_351_SW0_O
    );
  ALU_E_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_32_8422,
      O => ALU_E_0_SRINV_5057
    );
  ALU_E_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_0_CLKINV_5056
    );
  ALU_E_mux0001_0_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X66Y192"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(0),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_0_351_SW0_O_pack_1
    );
  ALU_E_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_1_35,
      O => ALU_E_1_DXMUX_5107
    );
  ALU_E_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_1_351_SW0_O_pack_1,
      O => ALU_E_mux0001_1_351_SW0_O
    );
  ALU_E_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_1_32_8446,
      O => ALU_E_1_SRINV_5090
    );
  ALU_E_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_1_CLKINV_5089
    );
  ALU_E_mux0001_1_351 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X72Y190"
    )
    port map (
      ADR0 => ALU_E_mux0001_1_351_SW0_O,
      ADR1 => ALU_A(1),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_fun(0),
      O => ALU_E_mux0001_1_35
    );
  ALU_E_mux0001_52_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_311_pack_1,
      O => ALU_E_mux0001_0_311
    );
  ALU_E_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_2_35,
      O => ALU_E_2_DXMUX_5164
    );
  ALU_E_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_2_351_SW0_O_pack_1,
      O => ALU_E_mux0001_2_351_SW0_O
    );
  ALU_E_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_2_32_8470,
      O => ALU_E_2_SRINV_5147
    );
  ALU_E_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_2_CLKINV_5146
    );
  ALU_E_mux0001_38_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_0_31_pack_1,
      O => ALU_E_mux0001_0_31_2980
    );
  ALU_E_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_3_35,
      O => ALU_E_3_DXMUX_5221
    );
  ALU_E_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_3_351_SW0_O_pack_1,
      O => ALU_E_mux0001_3_351_SW0_O
    );
  ALU_E_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_3_32_8494,
      O => ALU_E_3_SRINV_5204
    );
  ALU_E_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_3_CLKINV_5203
    );
  ALU_E_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_4_35,
      O => ALU_E_4_DXMUX_5254
    );
  ALU_E_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_4_351_SW0_O_pack_1,
      O => ALU_E_mux0001_4_351_SW0_O
    );
  ALU_E_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_4_32_8518,
      O => ALU_E_4_SRINV_5237
    );
  ALU_E_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_4_CLKINV_5236
    );
  ALU_E_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_5_35,
      O => ALU_E_5_DXMUX_5287
    );
  ALU_E_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_5_351_SW0_O_pack_1,
      O => ALU_E_mux0001_5_351_SW0_O
    );
  ALU_E_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_5_32_8542,
      O => ALU_E_5_SRINV_5270
    );
  ALU_E_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_5_CLKINV_5269
    );
  ALU_E_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_6_35,
      O => ALU_E_6_DXMUX_5320
    );
  ALU_E_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_6_351_SW0_O_pack_1,
      O => ALU_E_mux0001_6_351_SW0_O
    );
  ALU_E_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_6_32_8566,
      O => ALU_E_6_SRINV_5303
    );
  ALU_E_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_6_CLKINV_5302
    );
  ALU_E_mux0001_7_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X57Y183"
    )
    port map (
      ADR0 => ALU_E_mux0001_7_351_SW0_O,
      ADR1 => ALU_A(7),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_7_35
    );
  ALU_E_7 : X_SFF
    generic map(
      LOC => "SLICE_X57Y183",
      INIT => '0'
    )
    port map (
      I => ALU_E_7_DXMUX_5353,
      CE => VCC,
      CLK => ALU_E_7_CLKINV_5335,
      SET => GND,
      RST => GND,
      SSET => ALU_E_7_SRINV_5336,
      SRST => GND,
      O => ALU_E(7)
    );
  ALU_E_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_7_35,
      O => ALU_E_7_DXMUX_5353
    );
  ALU_E_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_7_351_SW0_O_pack_1,
      O => ALU_E_mux0001_7_351_SW0_O
    );
  ALU_E_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_7_32_8590,
      O => ALU_E_7_SRINV_5336
    );
  ALU_E_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_7_CLKINV_5335
    );
  ALU_E_mux0001_7_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X57Y183"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => ALU_B(7),
      O => ALU_E_mux0001_7_351_SW0_O_pack_1
    );
  ALU_E_mux0001_8_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X54Y178"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(8),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_8_351_SW0_O,
      O => ALU_E_mux0001_8_35
    );
  ALU_E_8 : X_SFF
    generic map(
      LOC => "SLICE_X54Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_8_DXMUX_5386,
      CE => VCC,
      CLK => ALU_E_8_CLKINV_5368,
      SET => GND,
      RST => GND,
      SSET => ALU_E_8_SRINV_5369,
      SRST => GND,
      O => ALU_E(8)
    );
  ALU_E_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_8_35,
      O => ALU_E_8_DXMUX_5386
    );
  ALU_E_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_8_351_SW0_O_pack_1,
      O => ALU_E_mux0001_8_351_SW0_O
    );
  ALU_E_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_8_32_8614,
      O => ALU_E_8_SRINV_5369
    );
  ALU_E_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_8_CLKINV_5368
    );
  ALU_E_mux0001_8_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X54Y178"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_8_351_SW0_O_pack_1
    );
  ALU_E_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_9_35,
      O => ALU_E_9_DXMUX_5419
    );
  ALU_E_9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_9_351_SW0_O_pack_1,
      O => ALU_E_mux0001_9_351_SW0_O
    );
  ALU_E_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_9_32_5019,
      O => ALU_E_9_SRINV_5402
    );
  ALU_E_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_9_CLKINV_5401
    );
  ALU_E_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_10_35,
      O => ALU_E_10_DXMUX_5452
    );
  ALU_E_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_10_351_SW0_O_pack_1,
      O => ALU_E_mux0001_10_351_SW0_O
    );
  ALU_E_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_10_32_8429,
      O => ALU_E_10_SRINV_5435
    );
  ALU_E_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_10_CLKINV_5434
    );
  ALU_E_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_11_35,
      O => ALU_E_11_DXMUX_5485
    );
  ALU_E_11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X73Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_11_351_SW0_O_pack_1,
      O => ALU_E_mux0001_11_351_SW0_O
    );
  ALU_E_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_11_32_8453,
      O => ALU_E_11_SRINV_5468
    );
  ALU_E_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_11_CLKINV_5467
    );
  ALU_E_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_20_35,
      O => ALU_E_20_DXMUX_5518
    );
  ALU_E_20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_20_351_SW0_O_pack_1,
      O => ALU_E_mux0001_20_351_SW0_O
    );
  ALU_E_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_20_32_9151,
      O => ALU_E_20_SRINV_5501
    );
  ALU_E_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_20_CLKINV_5500
    );
  ALU_E_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_12_35,
      O => ALU_E_12_DXMUX_5551
    );
  ALU_E_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_12_351_SW0_O_pack_1,
      O => ALU_E_mux0001_12_351_SW0_O
    );
  ALU_E_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_12_32_9127,
      O => ALU_E_12_SRINV_5534
    );
  ALU_E_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_12_CLKINV_5533
    );
  ALU_E_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_21_35,
      O => ALU_E_21_DXMUX_5584
    );
  ALU_E_21_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_21_351_SW0_O_pack_1,
      O => ALU_E_mux0001_21_351_SW0_O
    );
  ALU_E_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_21_32_9175,
      O => ALU_E_21_SRINV_5567
    );
  ALU_E_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_21_CLKINV_5566
    );
  ALU_E_13 : X_SFF
    generic map(
      LOC => "SLICE_X57Y182",
      INIT => '0'
    )
    port map (
      I => ALU_E_13_DXMUX_5617,
      CE => VCC,
      CLK => ALU_E_13_CLKINV_5599,
      SET => GND,
      RST => GND,
      SSET => ALU_E_13_SRINV_5600,
      SRST => GND,
      O => ALU_E(13)
    );
  ALU_E_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_13_35,
      O => ALU_E_13_DXMUX_5617
    );
  ALU_E_13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_13_351_SW0_O_pack_1,
      O => ALU_E_mux0001_13_351_SW0_O
    );
  ALU_E_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_13_32_9134,
      O => ALU_E_13_SRINV_5600
    );
  ALU_E_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_13_CLKINV_5599
    );
  ALU_E_mux0001_30_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X58Y184"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(30),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_30_351_SW0_O,
      O => ALU_E_mux0001_30_35
    );
  ALU_E_30 : X_SFF
    generic map(
      LOC => "SLICE_X58Y184",
      INIT => '0'
    )
    port map (
      I => ALU_E_30_DXMUX_5650,
      CE => VCC,
      CLK => ALU_E_30_CLKINV_5632,
      SET => GND,
      RST => GND,
      SSET => ALU_E_30_SRINV_5633,
      SRST => GND,
      O => ALU_E(30)
    );
  ALU_E_30_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_30_35,
      O => ALU_E_30_DXMUX_5650
    );
  ALU_E_30_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_30_351_SW0_O_pack_1,
      O => ALU_E_mux0001_30_351_SW0_O
    );
  ALU_E_30_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_30_32_9223,
      O => ALU_E_30_SRINV_5633
    );
  ALU_E_30_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_30_CLKINV_5632
    );
  ALU_E_mux0001_30_351_SW0 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X58Y184"
    )
    port map (
      ADR0 => ALU_B(30),
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_30_351_SW0_O_pack_1
    );
  ALU_E_mux0001_22_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X65Y188"
    )
    port map (
      ADR0 => ALU_A(22),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_22_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_22_35
    );
  ALU_E_22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_22_35,
      O => ALU_E_22_DXMUX_5683
    );
  ALU_E_22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_22_351_SW0_O_pack_1,
      O => ALU_E_mux0001_22_351_SW0_O
    );
  ALU_E_22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_22_32_9199,
      O => ALU_E_22_SRINV_5666
    );
  ALU_E_22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_22_CLKINV_5665
    );
  ALU_E_mux0001_22_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X65Y188"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => ALU_B(22),
      O => ALU_E_mux0001_22_351_SW0_O_pack_1
    );
  ALU_E_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_14_35,
      O => ALU_E_14_DXMUX_5716
    );
  ALU_E_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_14_351_SW0_O_pack_1,
      O => ALU_E_mux0001_14_351_SW0_O
    );
  ALU_E_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_14_32_9158,
      O => ALU_E_14_SRINV_5699
    );
  ALU_E_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_14_CLKINV_5698
    );
  ALU_E_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_31_35,
      O => ALU_E_31_DXMUX_5749
    );
  ALU_E_31_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_31_351_SW0_O_pack_1,
      O => ALU_E_mux0001_31_351_SW0_O
    );
  ALU_E_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_31_32_9247,
      O => ALU_E_31_SRINV_5732
    );
  ALU_E_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_31_CLKINV_5731
    );
  ALU_E_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_23_35,
      O => ALU_E_23_DXMUX_5782
    );
  ALU_E_23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_23_351_SW0_O_pack_1,
      O => ALU_E_mux0001_23_351_SW0_O
    );
  ALU_E_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_23_32_5043,
      O => ALU_E_23_SRINV_5765
    );
  ALU_E_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_23_CLKINV_5764
    );
  ALU_E_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_15_35,
      O => ALU_E_15_DXMUX_5815
    );
  ALU_E_15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_15_351_SW0_O_pack_1,
      O => ALU_E_mux0001_15_351_SW0_O
    );
  ALU_E_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_15_32_9182,
      O => ALU_E_15_SRINV_5798
    );
  ALU_E_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_15_CLKINV_5797
    );
  ALU_E_40_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_40_35,
      O => ALU_E_40_DXMUX_5848
    );
  ALU_E_40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_40_351_SW0_O_pack_1,
      O => ALU_E_mux0001_40_351_SW0_O
    );
  ALU_E_40_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_40_32_8525,
      O => ALU_E_40_SRINV_5831
    );
  ALU_E_40_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_40_CLKINV_5830
    );
  ALU_E_32_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_32_35,
      O => ALU_E_32_DXMUX_5881
    );
  ALU_E_32_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_32_351_SW0_O_pack_1,
      O => ALU_E_mux0001_32_351_SW0_O
    );
  ALU_E_32_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_32_32_9271,
      O => ALU_E_32_SRINV_5864
    );
  ALU_E_32_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_32_CLKINV_5863
    );
  ALU_E_24 : X_SFF
    generic map(
      LOC => "SLICE_X60Y184",
      INIT => '0'
    )
    port map (
      I => ALU_E_24_DXMUX_5914,
      CE => VCC,
      CLK => ALU_E_24_CLKINV_5896,
      SET => GND,
      RST => GND,
      SSET => ALU_E_24_SRINV_5897,
      SRST => GND,
      O => ALU_E(24)
    );
  ALU_E_24_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_24_35,
      O => ALU_E_24_DXMUX_5914
    );
  ALU_E_24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_24_351_SW0_O_pack_1,
      O => ALU_E_mux0001_24_351_SW0_O
    );
  ALU_E_24_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_24_32_8477,
      O => ALU_E_24_SRINV_5897
    );
  ALU_E_24_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_24_CLKINV_5896
    );
  ALU_E_mux0001_24_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X60Y184"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(24),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_24_351_SW0_O,
      O => ALU_E_mux0001_24_35
    );
  ALU_E_mux0001_16_351 : X_LUT4
    generic map(
      INIT => X"A2A8",
      LOC => "SLICE_X65Y189"
    )
    port map (
      ADR0 => ALU_A(16),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_16_351_SW0_O,
      O => ALU_E_mux0001_16_35
    );
  ALU_E_16 : X_SFF
    generic map(
      LOC => "SLICE_X65Y189",
      INIT => '0'
    )
    port map (
      I => ALU_E_16_DXMUX_5947,
      CE => VCC,
      CLK => ALU_E_16_CLKINV_5929,
      SET => GND,
      RST => GND,
      SSET => ALU_E_16_SRINV_5930,
      SRST => GND,
      O => ALU_E(16)
    );
  ALU_E_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_16_35,
      O => ALU_E_16_DXMUX_5947
    );
  ALU_E_16_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_16_351_SW0_O_pack_1,
      O => ALU_E_mux0001_16_351_SW0_O
    );
  ALU_E_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_16_32_9206,
      O => ALU_E_16_SRINV_5930
    );
  ALU_E_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_16_CLKINV_5929
    );
  ALU_E_mux0001_16_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X65Y189"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(16),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_16_351_SW0_O_pack_1
    );
  ALU_E_mux0001_41_351 : X_LUT4
    generic map(
      INIT => X"B0E0",
      LOC => "SLICE_X45Y171"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(41),
      ADR3 => ALU_E_mux0001_41_351_SW0_O,
      O => ALU_E_mux0001_41_35
    );
  ALU_E_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_41_35,
      O => ALU_E_41_DXMUX_5980
    );
  ALU_E_41_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_41_351_SW0_O_pack_1,
      O => ALU_E_mux0001_41_351_SW0_O
    );
  ALU_E_41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_41_32_9343,
      O => ALU_E_41_SRINV_5963
    );
  ALU_E_41_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_41_CLKINV_5962
    );
  ALU_E_mux0001_41_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X45Y171"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(41),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_41_351_SW0_O_pack_1
    );
  ALU_E_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_33_35,
      O => ALU_E_33_DXMUX_6013
    );
  ALU_E_33_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_33_351_SW0_O_pack_1,
      O => ALU_E_mux0001_33_351_SW0_O
    );
  ALU_E_33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_33_32_9319,
      O => ALU_E_33_SRINV_5996
    );
  ALU_E_33_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_33_CLKINV_5995
    );
  ALU_E_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_25_35,
      O => ALU_E_25_DXMUX_6046
    );
  ALU_E_25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_25_351_SW0_O_pack_1,
      O => ALU_E_mux0001_25_351_SW0_O
    );
  ALU_E_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_25_32_9230,
      O => ALU_E_25_SRINV_6029
    );
  ALU_E_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_25_CLKINV_6028
    );
  ALU_E_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_17_35,
      O => ALU_E_17_DXMUX_6079
    );
  ALU_E_17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_17_351_SW0_O_pack_1,
      O => ALU_E_mux0001_17_351_SW0_O
    );
  ALU_E_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_17_32_9295,
      O => ALU_E_17_SRINV_6062
    );
  ALU_E_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y191",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_17_CLKINV_6061
    );
  ALU_E_50_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_50_35,
      O => ALU_E_50_DXMUX_6112
    );
  ALU_E_50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_50_351_SW0_O_pack_1,
      O => ALU_E_mux0001_50_351_SW0_O
    );
  ALU_E_50_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_50_32_9391,
      O => ALU_E_50_SRINV_6095
    );
  ALU_E_50_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_50_CLKINV_6094
    );
  ALU_E_42_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_42_35,
      O => ALU_E_42_DXMUX_6145
    );
  ALU_E_42_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_42_351_SW0_O_pack_1,
      O => ALU_E_mux0001_42_351_SW0_O
    );
  ALU_E_42_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_42_32_9350,
      O => ALU_E_42_SRINV_6128
    );
  ALU_E_42_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_42_CLKINV_6127
    );
  ALU_E_34_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_34_35,
      O => ALU_E_34_DXMUX_6178
    );
  ALU_E_34_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_34_351_SW0_O_pack_1,
      O => ALU_E_mux0001_34_351_SW0_O
    );
  ALU_E_34_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_34_32_9367,
      O => ALU_E_34_SRINV_6161
    );
  ALU_E_34_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_34_CLKINV_6160
    );
  ALU_E_mux0001_26_351 : X_LUT4
    generic map(
      INIT => X"F060",
      LOC => "SLICE_X57Y181"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_E_mux0001_26_351_SW0_O,
      ADR2 => ALU_A(26),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_26_35
    );
  ALU_E_26 : X_SFF
    generic map(
      LOC => "SLICE_X57Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_26_DXMUX_6211,
      CE => VCC,
      CLK => ALU_E_26_CLKINV_6193,
      SET => GND,
      RST => GND,
      SSET => ALU_E_26_SRINV_6194,
      SRST => GND,
      O => ALU_E(26)
    );
  ALU_E_26_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_26_35,
      O => ALU_E_26_DXMUX_6211
    );
  ALU_E_26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X57Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_26_351_SW0_O_pack_1,
      O => ALU_E_mux0001_26_351_SW0_O
    );
  ALU_E_26_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_26_32_9254,
      O => ALU_E_26_SRINV_6194
    );
  ALU_E_26_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_26_CLKINV_6193
    );
  ALU_E_mux0001_26_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X57Y181"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(26),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_26_351_SW0_O_pack_1
    );
  ALU_E_mux0001_18_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X60Y190"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(18),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_18_351_SW0_O,
      O => ALU_E_mux0001_18_35
    );
  ALU_E_18 : X_SFF
    generic map(
      LOC => "SLICE_X60Y190",
      INIT => '0'
    )
    port map (
      I => ALU_E_18_DXMUX_6244,
      CE => VCC,
      CLK => ALU_E_18_CLKINV_6226,
      SET => GND,
      RST => GND,
      SSET => ALU_E_18_SRINV_6227,
      SRST => GND,
      O => ALU_E(18)
    );
  ALU_E_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_18_35,
      O => ALU_E_18_DXMUX_6244
    );
  ALU_E_18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X60Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_18_351_SW0_O_pack_1,
      O => ALU_E_mux0001_18_351_SW0_O
    );
  ALU_E_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_18_32_9302,
      O => ALU_E_18_SRINV_6227
    );
  ALU_E_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_18_CLKINV_6226
    );
  ALU_E_mux0001_18_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X60Y190"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(18),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_18_351_SW0_O_pack_1
    );
  ALU_E_51_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y169",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_51_35,
      O => ALU_E_51_DXMUX_6277
    );
  ALU_E_51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y169",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_51_351_SW0_O_pack_1,
      O => ALU_E_mux0001_51_351_SW0_O
    );
  ALU_E_51_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y169",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_51_32_9451,
      O => ALU_E_51_SRINV_6260
    );
  ALU_E_51_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y169",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_51_CLKINV_6259
    );
  ALU_E_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_43_35,
      O => ALU_E_43_DXMUX_6310
    );
  ALU_E_43_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_43_351_SW0_O_pack_1,
      O => ALU_E_mux0001_43_351_SW0_O
    );
  ALU_E_43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_43_32_9398,
      O => ALU_E_43_SRINV_6293
    );
  ALU_E_43_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_43_CLKINV_6292
    );
  ALU_E_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_35_35,
      O => ALU_E_35_DXMUX_6343
    );
  ALU_E_35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_35_351_SW0_O_pack_1,
      O => ALU_E_mux0001_35_351_SW0_O
    );
  ALU_E_35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_35_32_9427,
      O => ALU_E_35_SRINV_6326
    );
  ALU_E_35_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_35_CLKINV_6325
    );
  ALU_E_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_27_35,
      O => ALU_E_27_DXMUX_6376
    );
  ALU_E_27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X56Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_27_351_SW0_O_pack_1,
      O => ALU_E_mux0001_27_351_SW0_O
    );
  ALU_E_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_27_32_9278,
      O => ALU_E_27_SRINV_6359
    );
  ALU_E_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_27_CLKINV_6358
    );
  ALU_E_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_19_35,
      O => ALU_E_19_DXMUX_6409
    );
  ALU_E_19_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X61Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_19_351_SW0_O_pack_1,
      O => ALU_E_mux0001_19_351_SW0_O
    );
  ALU_E_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_19_32_9410,
      O => ALU_E_19_SRINV_6392
    );
  ALU_E_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_19_CLKINV_6391
    );
  ALU_E_60_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_60_35,
      O => ALU_E_60_DXMUX_6442
    );
  ALU_E_60_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_60_351_SW0_O_pack_1,
      O => ALU_E_mux0001_60_351_SW0_O
    );
  ALU_E_60_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_60_32_9475,
      O => ALU_E_60_SRINV_6425
    );
  ALU_E_60_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_60_CLKINV_6424
    );
  ALU_E_52_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_52_35,
      O => ALU_E_52_DXMUX_6475
    );
  ALU_E_52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_52_351_SW0_O_pack_1,
      O => ALU_E_mux0001_52_351_SW0_O
    );
  ALU_E_52_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_52_32_5133,
      O => ALU_E_52_SRINV_6458
    );
  ALU_E_52_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_52_CLKINV_6457
    );
  ALU_E_52 : X_SFF
    generic map(
      LOC => "SLICE_X55Y179",
      INIT => '0'
    )
    port map (
      I => ALU_E_52_DXMUX_6475,
      CE => VCC,
      CLK => ALU_E_52_CLKINV_6457,
      SET => GND,
      RST => GND,
      SSET => ALU_E_52_SRINV_6458,
      SRST => GND,
      O => ALU_E(52)
    );
  ALU_E_mux0001_44_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X55Y168"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(44),
      ADR2 => ALU_E_mux0001_44_351_SW0_O,
      ADR3 => ALU_fun(0),
      O => ALU_E_mux0001_44_35
    );
  ALU_E_44 : X_SFF
    generic map(
      LOC => "SLICE_X55Y168",
      INIT => '0'
    )
    port map (
      I => ALU_E_44_DXMUX_6508,
      CE => VCC,
      CLK => ALU_E_44_CLKINV_6490,
      SET => GND,
      RST => GND,
      SSET => ALU_E_44_SRINV_6491,
      SRST => GND,
      O => ALU_E(44)
    );
  ALU_E_44_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y168",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_44_35,
      O => ALU_E_44_DXMUX_6508
    );
  ALU_E_44_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y168",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_44_351_SW0_O_pack_1,
      O => ALU_E_mux0001_44_351_SW0_O
    );
  ALU_E_44_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y168",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_44_32_9458,
      O => ALU_E_44_SRINV_6491
    );
  ALU_E_44_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y168",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_44_CLKINV_6490
    );
  ALU_E_mux0001_44_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X55Y168"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(44),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_44_351_SW0_O_pack_1
    );
  ALU_E_mux0001_36_351 : X_LUT4
    generic map(
      INIT => X"8AA8",
      LOC => "SLICE_X46Y178"
    )
    port map (
      ADR0 => ALU_A(36),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_36_351_SW0_O,
      O => ALU_E_mux0001_36_35
    );
  ALU_E_36 : X_SFF
    generic map(
      LOC => "SLICE_X46Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_36_DXMUX_6541,
      CE => VCC,
      CLK => ALU_E_36_CLKINV_6523,
      SET => GND,
      RST => GND,
      SSET => ALU_E_36_SRINV_6524,
      SRST => GND,
      O => ALU_E(36)
    );
  ALU_E_36_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_36_35,
      O => ALU_E_36_DXMUX_6541
    );
  ALU_E_36_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_36_351_SW0_O_pack_1,
      O => ALU_E_mux0001_36_351_SW0_O
    );
  ALU_E_36_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_36_32_9434,
      O => ALU_E_36_SRINV_6524
    );
  ALU_E_36_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_36_CLKINV_6523
    );
  ALU_E_mux0001_36_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X46Y178"
    )
    port map (
      ADR0 => ALU_B(36),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_36_351_SW0_O_pack_1
    );
  ALU_E_28_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_28_35,
      O => ALU_E_28_DXMUX_6574
    );
  ALU_E_28_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_28_351_SW0_O_pack_1,
      O => ALU_E_mux0001_28_351_SW0_O
    );
  ALU_E_28_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_28_32_9326,
      O => ALU_E_28_SRINV_6557
    );
  ALU_E_28_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_28_CLKINV_6556
    );
  ALU_E_61_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_61_35,
      O => ALU_E_61_DXMUX_6607
    );
  ALU_E_61_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_61_351_SW0_O_pack_1,
      O => ALU_E_mux0001_61_351_SW0_O
    );
  ALU_E_61_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_61_32_9535,
      O => ALU_E_61_SRINV_6590
    );
  ALU_E_61_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_61_CLKINV_6589
    );
  ALU_E_53_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_53_35,
      O => ALU_E_53_DXMUX_6640
    );
  ALU_E_53_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_53_351_SW0_O_pack_1,
      O => ALU_E_mux0001_53_351_SW0_O
    );
  ALU_E_53_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_53_32_8549,
      O => ALU_E_53_SRINV_6623
    );
  ALU_E_53_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_53_CLKINV_6622
    );
  ALU_E_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_45_35,
      O => ALU_E_45_DXMUX_6673
    );
  ALU_E_45_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_45_351_SW0_O_pack_1,
      O => ALU_E_mux0001_45_351_SW0_O
    );
  ALU_E_45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_45_32_9511,
      O => ALU_E_45_SRINV_6656
    );
  ALU_E_45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_45_CLKINV_6655
    );
  ALU_E_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_37_35,
      O => ALU_E_37_DXMUX_6706
    );
  ALU_E_37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_37_351_SW0_O_pack_1,
      O => ALU_E_mux0001_37_351_SW0_O
    );
  ALU_E_37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_37_32_9494,
      O => ALU_E_37_SRINV_6689
    );
  ALU_E_37_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_37_CLKINV_6688
    );
  ALU_E_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_29_35,
      O => ALU_E_29_DXMUX_6739
    );
  ALU_E_29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_29_351_SW0_O_pack_1,
      O => ALU_E_mux0001_29_351_SW0_O
    );
  ALU_E_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_29_32_9374,
      O => ALU_E_29_SRINV_6722
    );
  ALU_E_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_29_CLKINV_6721
    );
  ALU_E_62 : X_SFF
    generic map(
      LOC => "SLICE_X45Y175",
      INIT => '0'
    )
    port map (
      I => ALU_E_62_DXMUX_6772,
      CE => VCC,
      CLK => ALU_E_62_CLKINV_6754,
      SET => GND,
      RST => GND,
      SSET => ALU_E_62_SRINV_6755,
      SRST => GND,
      O => ALU_E(62)
    );
  ALU_E_62_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_62_35,
      O => ALU_E_62_DXMUX_6772
    );
  ALU_E_62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_62_351_SW0_O_pack_1,
      O => ALU_E_mux0001_62_351_SW0_O
    );
  ALU_E_62_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_62_32_9559,
      O => ALU_E_62_SRINV_6755
    );
  ALU_E_62_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_62_CLKINV_6754
    );
  ALU_E_mux0001_54_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X58Y182"
    )
    port map (
      ADR0 => ALU_E_mux0001_54_351_SW0_O,
      ADR1 => ALU_A(54),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_54_35
    );
  ALU_E_54 : X_SFF
    generic map(
      LOC => "SLICE_X58Y182",
      INIT => '0'
    )
    port map (
      I => ALU_E_54_DXMUX_6805,
      CE => VCC,
      CLK => ALU_E_54_CLKINV_6787,
      SET => GND,
      RST => GND,
      SSET => ALU_E_54_SRINV_6788,
      SRST => GND,
      O => ALU_E(54)
    );
  ALU_E_54_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X58Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_54_35,
      O => ALU_E_54_DXMUX_6805
    );
  ALU_E_54_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X58Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_54_351_SW0_O_pack_1,
      O => ALU_E_mux0001_54_351_SW0_O
    );
  ALU_E_54_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_54_32_8573,
      O => ALU_E_54_SRINV_6788
    );
  ALU_E_54_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X58Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_54_CLKINV_6787
    );
  ALU_E_mux0001_54_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X58Y182"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(54),
      ADR3 => VCC,
      O => ALU_E_mux0001_54_351_SW0_O_pack_1
    );
  ALU_E_mux0001_46_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X46Y180"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(46),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_46_351_SW0_O,
      O => ALU_E_mux0001_46_35
    );
  ALU_E_46_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_46_35,
      O => ALU_E_46_DXMUX_6838
    );
  ALU_E_46_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_46_351_SW0_O_pack_1,
      O => ALU_E_mux0001_46_351_SW0_O
    );
  ALU_E_46_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_46_32_9518,
      O => ALU_E_46_SRINV_6821
    );
  ALU_E_46_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_46_CLKINV_6820
    );
  ALU_E_mux0001_46_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X46Y180"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(46),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_46_351_SW0_O_pack_1
    );
  ALU_E_38_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_38_35,
      O => ALU_E_38_DXMUX_6871
    );
  ALU_E_38_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_38_351_SW0_O_pack_1,
      O => ALU_E_mux0001_38_351_SW0_O
    );
  ALU_E_38_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_38_32_5190,
      O => ALU_E_38_SRINV_6854
    );
  ALU_E_38_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_38_CLKINV_6853
    );
  ALU_E_63_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_63_35,
      O => ALU_E_63_DXMUX_6904
    );
  ALU_E_63_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_63_351_SW0_O_pack_1,
      O => ALU_E_mux0001_63_351_SW0_O
    );
  ALU_E_63_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_63_32_9602,
      O => ALU_E_63_SRINV_6887
    );
  ALU_E_63_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_63_CLKINV_6886
    );
  ALU_E_55_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_55_35,
      O => ALU_E_55_DXMUX_6937
    );
  ALU_E_55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_55_351_SW0_O_pack_1,
      O => ALU_E_mux0001_55_351_SW0_O
    );
  ALU_E_55_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_55_32_8597,
      O => ALU_E_55_SRINV_6920
    );
  ALU_E_55_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_55_CLKINV_6919
    );
  ALU_E_47_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_47_35,
      O => ALU_E_47_DXMUX_6970
    );
  ALU_E_47_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_47_351_SW0_O_pack_1,
      O => ALU_E_mux0001_47_351_SW0_O
    );
  ALU_E_47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_47_32_9583,
      O => ALU_E_47_SRINV_6953
    );
  ALU_E_47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_47_CLKINV_6952
    );
  ALU_E_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_39_35,
      O => ALU_E_39_DXMUX_7003
    );
  ALU_E_39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_39_351_SW0_O_pack_1,
      O => ALU_E_mux0001_39_351_SW0_O
    );
  ALU_E_39_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_39_32_8501,
      O => ALU_E_39_SRINV_6986
    );
  ALU_E_39_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_39_CLKINV_6985
    );
  ALU_E_56_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_56_35,
      O => ALU_E_56_DXMUX_7036
    );
  ALU_E_56_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_56_351_SW0_O_pack_1,
      O => ALU_E_mux0001_56_351_SW0_O
    );
  ALU_E_56_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_56_32_8621,
      O => ALU_E_56_SRINV_7019
    );
  ALU_E_56_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_56_CLKINV_7018
    );
  ALU_E_48 : X_SFF
    generic map(
      LOC => "SLICE_X51Y167",
      INIT => '0'
    )
    port map (
      I => ALU_E_48_DXMUX_7069,
      CE => VCC,
      CLK => ALU_E_48_CLKINV_7051,
      SET => GND,
      RST => GND,
      SSET => ALU_E_48_SRINV_7052,
      SRST => GND,
      O => ALU_E(48)
    );
  ALU_E_48_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_48_35,
      O => ALU_E_48_DXMUX_7069
    );
  ALU_E_48_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X51Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_48_351_SW0_O_pack_1,
      O => ALU_E_mux0001_48_351_SW0_O
    );
  ALU_E_48_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_48_32_9590,
      O => ALU_E_48_SRINV_7052
    );
  ALU_E_48_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_48_CLKINV_7051
    );
  ALU_E_mux0001_48_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X51Y167"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(48),
      ADR3 => ALU_E_mux0001_48_351_SW0_O,
      O => ALU_E_mux0001_48_35
    );
  ALU_E_mux0001_57_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X53Y178"
    )
    port map (
      ADR0 => ALU_A(57),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_57_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_57_35
    );
  ALU_E_57 : X_SFF
    generic map(
      LOC => "SLICE_X53Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_57_DXMUX_7102,
      CE => VCC,
      CLK => ALU_E_57_CLKINV_7084,
      SET => GND,
      RST => GND,
      SSET => ALU_E_57_SRINV_7085,
      SRST => GND,
      O => ALU_E(57)
    );
  ALU_E_57_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_57_35,
      O => ALU_E_57_DXMUX_7102
    );
  ALU_E_57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_57_351_SW0_O_pack_1,
      O => ALU_E_mux0001_57_351_SW0_O
    );
  ALU_E_57_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_57_32_9482,
      O => ALU_E_57_SRINV_7085
    );
  ALU_E_57_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_57_CLKINV_7084
    );
  ALU_E_mux0001_57_351_SW0 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X53Y178"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(57),
      ADR3 => VCC,
      O => ALU_E_mux0001_57_351_SW0_O_pack_1
    );
  ALU_E_mux0001_49_351 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X43Y183"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(49),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_49_351_SW0_O,
      O => ALU_E_mux0001_49_35
    );
  ALU_E_49_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X43Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_49_35,
      O => ALU_E_49_DXMUX_7135
    );
  ALU_E_49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X43Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_49_351_SW0_O_pack_1,
      O => ALU_E_mux0001_49_351_SW0_O
    );
  ALU_E_49_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_49_32_9614,
      O => ALU_E_49_SRINV_7118
    );
  ALU_E_49_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X43Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_49_CLKINV_7117
    );
  ALU_E_mux0001_49_351_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X43Y183"
    )
    port map (
      ADR0 => ALU_B(49),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_49_351_SW0_O_pack_1
    );
  ALU_E_58_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_58_35,
      O => ALU_E_58_DXMUX_7168
    );
  ALU_E_58_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X47Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_58_351_SW0_O_pack_1,
      O => ALU_E_mux0001_58_351_SW0_O
    );
  ALU_E_58_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_58_32_9542,
      O => ALU_E_58_SRINV_7151
    );
  ALU_E_58_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_58_CLKINV_7150
    );
  ALU_E_59_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y174",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_59_35,
      O => ALU_E_59_DXMUX_7201
    );
  ALU_E_59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y174",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_59_351_SW0_O_pack_1,
      O => ALU_E_mux0001_59_351_SW0_O
    );
  ALU_E_59_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y174",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E_mux0001_59_32_9566,
      O => ALU_E_59_SRINV_7184
    );
  ALU_E_59_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y174",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_E_59_CLKINV_7183
    );
  ALU_A_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_11_1_7236,
      O => ALU_A_11_DXMUX_7239
    );
  ALU_A_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X76Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_10_1_7224,
      O => ALU_A_11_DYMUX_7227
    );
  ALU_A_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_11_SRINV_7219
    );
  ALU_A_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X76Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_11_CLKINV_7218
    );
  ALU_A_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_21_1_7274,
      O => ALU_A_21_DXMUX_7277
    );
  ALU_A_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X48Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_20_1_7262,
      O => ALU_A_21_DYMUX_7265
    );
  ALU_A_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_21_SRINV_7257
    );
  ALU_A_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_21_CLKINV_7256
    );
  ALU_A_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_13_1_7312,
      O => ALU_A_13_DXMUX_7315
    );
  ALU_A_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_12_1_7300,
      O => ALU_A_13_DYMUX_7303
    );
  ALU_A_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_13_SRINV_7295
    );
  ALU_A_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_13_CLKINV_7294
    );
  ALU_A_31 : X_SFF
    generic map(
      LOC => "SLICE_X52Y203",
      INIT => '0'
    )
    port map (
      I => ALU_A_31_DXMUX_7353,
      CE => VCC,
      CLK => ALU_A_31_CLKINV_7332,
      SET => GND,
      RST => GND,
      SSET => ALU_A_31_SRINV_7333,
      SRST => GND,
      O => ALU_A(31)
    );
  ALU_A_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y203",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_31_1_7350,
      O => ALU_A_31_DXMUX_7353
    );
  ALU_A_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y203",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_30_1_7338,
      O => ALU_A_31_DYMUX_7341
    );
  ALU_A_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y203",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_31_SRINV_7333
    );
  ALU_A_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y203",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_31_CLKINV_7332
    );
  ALU_A_mux0001_31_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X52Y203"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_31_IBUF_2737,
      ADR2 => valC_31_IBUF_2835,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_31_1_7350
    );
  ALU_A_22 : X_SFF
    generic map(
      LOC => "SLICE_X55Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_23_DYMUX_7379,
      CE => VCC,
      CLK => ALU_A_23_CLKINV_7370,
      SET => GND,
      RST => GND,
      SSET => ALU_A_23_SRINV_7371,
      SRST => GND,
      O => ALU_A(22)
    );
  ALU_A_mux0001_23_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X55Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valA_23_IBUF_2738,
      ADR3 => valC_23_IBUF_2836,
      O => ALU_A_mux0001_23_1_7388
    );
  ALU_A_23 : X_SFF
    generic map(
      LOC => "SLICE_X55Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_23_DXMUX_7391,
      CE => VCC,
      CLK => ALU_A_23_CLKINV_7370,
      SET => GND,
      RST => GND,
      SSET => ALU_A_23_SRINV_7371,
      SRST => GND,
      O => ALU_A(23)
    );
  ALU_A_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_23_1_7388,
      O => ALU_A_23_DXMUX_7391
    );
  ALU_A_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_22_1_7376,
      O => ALU_A_23_DYMUX_7379
    );
  ALU_A_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_23_SRINV_7371
    );
  ALU_A_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_23_CLKINV_7370
    );
  ALU_A_mux0001_22_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X55Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valA_22_IBUF_2735,
      ADR2 => ALU_A_or0001,
      ADR3 => valC_22_IBUF_2829,
      O => ALU_A_mux0001_22_1_7376
    );
  ALU_A_14 : X_SFF
    generic map(
      LOC => "SLICE_X67Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_15_DYMUX_7417,
      CE => VCC,
      CLK => ALU_A_15_CLKINV_7408,
      SET => GND,
      RST => GND,
      SSET => ALU_A_15_SRINV_7409,
      SRST => GND,
      O => ALU_A(14)
    );
  ALU_A_mux0001_15_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valC_15_IBUF_2837,
      ADR2 => valA_15_IBUF_2739,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_15_1_7426
    );
  ALU_A_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_15_1_7426,
      O => ALU_A_15_DXMUX_7429
    );
  ALU_A_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_14_1_7414,
      O => ALU_A_15_DYMUX_7417
    );
  ALU_A_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_15_SRINV_7409
    );
  ALU_A_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_15_CLKINV_7408
    );
  ALU_A_mux0001_14_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y206"
    )
    port map (
      ADR0 => valC_14_IBUF_2830,
      ADR1 => ALU_A_or0000,
      ADR2 => ALU_A_or0001,
      ADR3 => valA_14_IBUF_2736,
      O => ALU_A_mux0001_14_1_7414
    );
  ALU_A_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_41_1_7464,
      O => ALU_A_41_DXMUX_7467
    );
  ALU_A_41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_40_1_7452,
      O => ALU_A_41_DYMUX_7455
    );
  ALU_A_41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_41_SRINV_7447
    );
  ALU_A_41_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_41_CLKINV_7446
    );
  ALU_A_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X38Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_33_1_7502,
      O => ALU_A_33_DXMUX_7505
    );
  ALU_A_33_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X38Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_32_1_7490,
      O => ALU_A_33_DYMUX_7493
    );
  ALU_A_33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_33_SRINV_7485
    );
  ALU_A_33_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X38Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_33_CLKINV_7484
    );
  ALU_A_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_25_1_7540,
      O => ALU_A_25_DXMUX_7543
    );
  ALU_A_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_24_1_7528,
      O => ALU_A_25_DYMUX_7531
    );
  ALU_A_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_25_SRINV_7523
    );
  ALU_A_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_25_CLKINV_7522
    );
  ALU_A_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_17_1_7578,
      O => ALU_A_17_DXMUX_7581
    );
  ALU_A_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_16_1_7566,
      O => ALU_A_17_DYMUX_7569
    );
  ALU_A_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_17_SRINV_7561
    );
  ALU_A_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y204",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_17_CLKINV_7560
    );
  ALU_A_51_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_51_1_7616,
      O => ALU_A_51_DXMUX_7619
    );
  ALU_A_51_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_50_1_7604,
      O => ALU_A_51_DYMUX_7607
    );
  ALU_A_51_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_51_SRINV_7599
    );
  ALU_A_51_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_51_CLKINV_7598
    );
  ALU_A_43 : X_SFF
    generic map(
      LOC => "SLICE_X26Y198",
      INIT => '0'
    )
    port map (
      I => ALU_A_43_DXMUX_7657,
      CE => VCC,
      CLK => ALU_A_43_CLKINV_7636,
      SET => GND,
      RST => GND,
      SSET => ALU_A_43_SRINV_7637,
      SRST => GND,
      O => ALU_A(43)
    );
  ALU_A_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_43_1_7654,
      O => ALU_A_43_DXMUX_7657
    );
  ALU_A_43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_42_1_7642,
      O => ALU_A_43_DYMUX_7645
    );
  ALU_A_43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_43_SRINV_7637
    );
  ALU_A_43_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_43_CLKINV_7636
    );
  ALU_A_mux0001_43_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X26Y198"
    )
    port map (
      ADR0 => valA_43_IBUF_2756,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_43_IBUF_2861,
      O => ALU_A_mux0001_43_1_7654
    );
  ALU_A_42 : X_SFF
    generic map(
      LOC => "SLICE_X26Y198",
      INIT => '0'
    )
    port map (
      I => ALU_A_43_DYMUX_7645,
      CE => VCC,
      CLK => ALU_A_43_CLKINV_7636,
      SET => GND,
      RST => GND,
      SSET => ALU_A_43_SRINV_7637,
      SRST => GND,
      O => ALU_A(42)
    );
  ALU_A_34 : X_SFF
    generic map(
      LOC => "SLICE_X28Y199",
      INIT => '0'
    )
    port map (
      I => ALU_A_35_DYMUX_7683,
      CE => VCC,
      CLK => ALU_A_35_CLKINV_7674,
      SET => GND,
      RST => GND,
      SSET => ALU_A_35_SRINV_7675,
      SRST => GND,
      O => ALU_A(34)
    );
  ALU_A_mux0001_35_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X28Y199"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valA_35_IBUF_2757,
      ADR2 => valC_35_IBUF_2862,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_35_1_7692
    );
  ALU_A_35 : X_SFF
    generic map(
      LOC => "SLICE_X28Y199",
      INIT => '0'
    )
    port map (
      I => ALU_A_35_DXMUX_7695,
      CE => VCC,
      CLK => ALU_A_35_CLKINV_7674,
      SET => GND,
      RST => GND,
      SSET => ALU_A_35_SRINV_7675,
      SRST => GND,
      O => ALU_A(35)
    );
  ALU_A_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_35_1_7692,
      O => ALU_A_35_DXMUX_7695
    );
  ALU_A_35_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_34_1_7680,
      O => ALU_A_35_DYMUX_7683
    );
  ALU_A_35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_35_SRINV_7675
    );
  ALU_A_35_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_35_CLKINV_7674
    );
  ALU_A_mux0001_34_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X28Y199"
    )
    port map (
      ADR0 => valC_34_IBUF_2856,
      ADR1 => ALU_A_or0000,
      ADR2 => ALU_A_or0001,
      ADR3 => valA_34_IBUF_2751,
      O => ALU_A_mux0001_34_1_7680
    );
  ALU_A_26 : X_SFF
    generic map(
      LOC => "SLICE_X45Y202",
      INIT => '0'
    )
    port map (
      I => ALU_A_27_DYMUX_7721,
      CE => VCC,
      CLK => ALU_A_27_CLKINV_7712,
      SET => GND,
      RST => GND,
      SSET => ALU_A_27_SRINV_7713,
      SRST => GND,
      O => ALU_A(26)
    );
  ALU_A_mux0001_27_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X45Y202"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_27_IBUF_2758,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_27_IBUF_2863,
      O => ALU_A_mux0001_27_1_7730
    );
  ALU_A_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_27_1_7730,
      O => ALU_A_27_DXMUX_7733
    );
  ALU_A_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_26_1_7718,
      O => ALU_A_27_DYMUX_7721
    );
  ALU_A_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_27_SRINV_7713
    );
  ALU_A_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_27_CLKINV_7712
    );
  ALU_A_mux0001_26_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X45Y202"
    )
    port map (
      ADR0 => valA_26_IBUF_2752,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_26_IBUF_2857,
      O => ALU_A_mux0001_26_1_7718
    );
  ALU_A_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_19_1_7768,
      O => ALU_A_19_DXMUX_7771
    );
  ALU_A_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_18_1_7756,
      O => ALU_A_19_DYMUX_7759
    );
  ALU_A_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_19_SRINV_7751
    );
  ALU_A_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_19_CLKINV_7750
    );
  ALU_A_61_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y170",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_61_1_7806,
      O => ALU_A_61_DXMUX_7809
    );
  ALU_A_61_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y170",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_60_1_7794,
      O => ALU_A_61_DYMUX_7797
    );
  ALU_A_61_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y170",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_61_SRINV_7789
    );
  ALU_A_61_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y170",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_61_CLKINV_7788
    );
  ALU_A_53_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_53_1_7844,
      O => ALU_A_53_DXMUX_7847
    );
  ALU_A_53_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_52_1_7832,
      O => ALU_A_53_DYMUX_7835
    );
  ALU_A_53_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_53_SRINV_7827
    );
  ALU_A_53_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_53_CLKINV_7826
    );
  ALU_A_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_45_1_7882,
      O => ALU_A_45_DXMUX_7885
    );
  ALU_A_45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_44_1_7870,
      O => ALU_A_45_DYMUX_7873
    );
  ALU_A_45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_45_SRINV_7865
    );
  ALU_A_45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_45_CLKINV_7864
    );
  ALU_A_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X36Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_37_1_7920,
      O => ALU_A_37_DXMUX_7923
    );
  ALU_A_37_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X36Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_36_1_7908,
      O => ALU_A_37_DYMUX_7911
    );
  ALU_A_37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_37_SRINV_7903
    );
  ALU_A_37_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X36Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_37_CLKINV_7902
    );
  ALU_A_mux0001_29_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X40Y202"
    )
    port map (
      ADR0 => valA_29_IBUF_2773,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_29_IBUF_2875,
      O => ALU_A_mux0001_29_1_7958
    );
  ALU_A_29 : X_SFF
    generic map(
      LOC => "SLICE_X40Y202",
      INIT => '0'
    )
    port map (
      I => ALU_A_29_DXMUX_7961,
      CE => VCC,
      CLK => ALU_A_29_CLKINV_7940,
      SET => GND,
      RST => GND,
      SSET => ALU_A_29_SRINV_7941,
      SRST => GND,
      O => ALU_A(29)
    );
  ALU_A_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_29_1_7958,
      O => ALU_A_29_DXMUX_7961
    );
  ALU_A_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X40Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_28_1_7946,
      O => ALU_A_29_DYMUX_7949
    );
  ALU_A_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_29_SRINV_7941
    );
  ALU_A_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X40Y202",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_29_CLKINV_7940
    );
  ALU_A_28 : X_SFF
    generic map(
      LOC => "SLICE_X40Y202",
      INIT => '0'
    )
    port map (
      I => ALU_A_29_DYMUX_7949,
      CE => VCC,
      CLK => ALU_A_29_CLKINV_7940,
      SET => GND,
      RST => GND,
      SSET => ALU_A_29_SRINV_7941,
      SRST => GND,
      O => ALU_A(28)
    );
  ALU_A_62 : X_SFF
    generic map(
      LOC => "SLICE_X19Y166",
      INIT => '0'
    )
    port map (
      I => ALU_A_63_DYMUX_7987,
      CE => VCC,
      CLK => ALU_A_63_CLKINV_7978,
      SET => GND,
      RST => GND,
      SSET => ALU_A_63_SRINV_7979,
      SRST => GND,
      O => ALU_A(62)
    );
  ALU_A_mux0001_63_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X19Y166"
    )
    port map (
      ADR0 => valA_63_IBUF_2784,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_63_IBUF_2880,
      O => ALU_A_mux0001_63_1_7996
    );
  ALU_A_63 : X_SFF
    generic map(
      LOC => "SLICE_X19Y166",
      INIT => '0'
    )
    port map (
      I => ALU_A_63_DXMUX_7999,
      CE => VCC,
      CLK => ALU_A_63_CLKINV_7978,
      SET => GND,
      RST => GND,
      SSET => ALU_A_63_SRINV_7979,
      SRST => GND,
      O => ALU_A(63)
    );
  ALU_A_63_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_63_1_7996,
      O => ALU_A_63_DXMUX_7999
    );
  ALU_A_63_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_62_1_7984,
      O => ALU_A_63_DYMUX_7987
    );
  ALU_A_63_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_63_SRINV_7979
    );
  ALU_A_63_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y166",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_63_CLKINV_7978
    );
  ALU_A_mux0001_62_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X19Y166"
    )
    port map (
      ADR0 => valA_62_IBUF_2777,
      ADR1 => valC_62_IBUF_2876,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_62_1_7984
    );
  ALU_A_54 : X_SFF
    generic map(
      LOC => "SLICE_X53Y182",
      INIT => '0'
    )
    port map (
      I => ALU_A_55_DYMUX_8025,
      CE => VCC,
      CLK => ALU_A_55_CLKINV_8016,
      SET => GND,
      RST => GND,
      SSET => ALU_A_55_SRINV_8017,
      SRST => GND,
      O => ALU_A(54)
    );
  ALU_A_55_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_55_1_8034,
      O => ALU_A_55_DXMUX_8037
    );
  ALU_A_55_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_54_1_8022,
      O => ALU_A_55_DYMUX_8025
    );
  ALU_A_55_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_55_SRINV_8017
    );
  ALU_A_55_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y182",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_55_CLKINV_8016
    );
  ALU_A_mux0001_54_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X53Y182"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valA_54_IBUF_2778,
      ADR3 => valC_54_IBUF_2877,
      O => ALU_A_mux0001_54_1_8022
    );
  ALU_A_47_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_47_1_8072,
      O => ALU_A_47_DXMUX_8075
    );
  ALU_A_47_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_46_1_8060,
      O => ALU_A_47_DYMUX_8063
    );
  ALU_A_47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_47_SRINV_8055
    );
  ALU_A_47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y176",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_47_CLKINV_8054
    );
  ALU_A_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_39_1_8110,
      O => ALU_A_39_DXMUX_8113
    );
  ALU_A_39_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_38_1_8098,
      O => ALU_A_39_DYMUX_8101
    );
  ALU_A_39_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_39_SRINV_8093
    );
  ALU_A_39_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_39_CLKINV_8092
    );
  ALU_A_57_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_57_1_8148,
      O => ALU_A_57_DXMUX_8151
    );
  ALU_A_57_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_56_1_8136,
      O => ALU_A_57_DYMUX_8139
    );
  ALU_A_57_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_57_SRINV_8131
    );
  ALU_A_57_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_57_CLKINV_8130
    );
  ALU_A_49_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_49_1_8186,
      O => ALU_A_49_DXMUX_8189
    );
  ALU_A_49_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_48_1_8174,
      O => ALU_A_49_DYMUX_8177
    );
  ALU_A_49_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_49_SRINV_8169
    );
  ALU_A_49_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_49_CLKINV_8168
    );
  ALU_A_59_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_59_1_8224,
      O => ALU_A_59_DXMUX_8227
    );
  ALU_A_59_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_58_1_8212,
      O => ALU_A_59_DYMUX_8215
    );
  ALU_A_59_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_59_SRINV_8207
    );
  ALU_A_59_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y172",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_59_CLKINV_8206
    );
  ALU_A_1 : X_FF
    generic map(
      LOC => "SLICE_X73Y199",
      INIT => '0'
    )
    port map (
      I => ALU_A_1_DXMUX_8262,
      CE => VCC,
      CLK => ALU_A_1_CLKINV_8243,
      SET => GND,
      RST => GND,
      O => ALU_A(1)
    );
  ALU_A_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001(1),
      O => ALU_A_1_DXMUX_8262
    );
  ALU_A_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001(0),
      O => ALU_A_1_DYMUX_8251
    );
  ALU_A_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y199",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_1_CLKINV_8243
    );
  ALU_A_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X73Y199"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => ALU_A_or0000,
      ADR2 => valC_1_IBUF_2699,
      ADR3 => valA_1_IBUF_2685,
      O => ALU_A_mux0001(1)
    );
  ALU_A_0 : X_FF
    generic map(
      LOC => "SLICE_X73Y199",
      INIT => '0'
    )
    port map (
      I => ALU_A_1_DYMUX_8251,
      CE => VCC,
      CLK => ALU_A_1_CLKINV_8243,
      SET => GND,
      RST => GND,
      O => ALU_A(0)
    );
  ALU_A_3 : X_SFF
    generic map(
      LOC => "SLICE_X72Y200",
      INIT => '0'
    )
    port map (
      I => ALU_A_3_DYMUX_8287,
      CE => VCC,
      CLK => ALU_A_3_CLKINV_8278,
      SET => GND,
      RST => GND,
      SSET => ALU_A_3_SRINV_8279,
      SRST => GND,
      O => ALU_A(3)
    );
  ALU_fun_not00011 : X_LUT4
    generic map(
      INIT => X"FFF7",
      LOC => "SLICE_X72Y200"
    )
    port map (
      ADR0 => icode_1_IBUF_2725,
      ADR1 => icode_2_IBUF_2726,
      ADR2 => icode_0_IBUF_2724,
      ADR3 => icode_3_IBUF_2727,
      O => ALU_fun_not0001
    );
  ALU_A_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y200",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_fun_not0001,
      O => ALU_fun_not0001_0
    );
  ALU_A_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y200",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_3_1_8284,
      O => ALU_A_3_DYMUX_8287
    );
  ALU_A_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y200",
      PATHPULSE => 526 ps
    )
    port map (
      I => N253,
      O => ALU_A_3_SRINV_8279
    );
  ALU_A_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y200",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_3_CLKINV_8278
    );
  ALU_A_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X72Y200"
    )
    port map (
      ADR0 => icode_1_IBUF_2725,
      ADR1 => valA_3_IBUF_2687,
      ADR2 => icode_0_IBUF_2724,
      ADR3 => icode_3_IBUF_2727,
      O => ALU_A_mux0001_3_1_8284
    );
  ALU_A_mux0001_5_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X73Y207"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valC_5_IBUF_2708,
      ADR3 => valA_5_IBUF_2691,
      O => ALU_A_mux0001_5_1_8317
    );
  ALU_A_5 : X_SFF
    generic map(
      LOC => "SLICE_X73Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_5_DYMUX_8320,
      CE => VCC,
      CLK => ALU_A_5_CLKINV_8311,
      SET => GND,
      RST => GND,
      SSET => ALU_A_5_SRINV_8312,
      SRST => GND,
      O => ALU_A(5)
    );
  ALU_A_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_5_1_8317,
      O => ALU_A_5_DYMUX_8320
    );
  ALU_A_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_5_SRINV_8312
    );
  ALU_A_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_5_CLKINV_8311
    );
  ALU_A_mux0001_3_SW0 : X_LUT4
    generic map(
      INIT => X"BA30",
      LOC => "SLICE_X73Y207"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => icode_2_IBUF_2726,
      ADR2 => icode_3_IBUF_2727,
      ADR3 => valC_3_IBUF_2704,
      O => N253
    );
  ALU_A_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_7_1_8362,
      O => ALU_A_7_DXMUX_8365
    );
  ALU_A_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_6_1_8350,
      O => ALU_A_7_DYMUX_8353
    );
  ALU_A_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_7_SRINV_8345
    );
  ALU_A_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_7_CLKINV_8344
    );
  ALU_A_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_9_1_8400,
      O => ALU_A_9_DXMUX_8403
    );
  ALU_A_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_8_1_8388,
      O => ALU_A_9_DYMUX_8391
    );
  ALU_A_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_9_SRINV_8383
    );
  ALU_A_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y207",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_9_CLKINV_8382
    );
  ALU_E_mux0001_54_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X59Y182"
    )
    port map (
      ADR0 => ALU_A(54),
      ADR1 => ALU_B(54),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_54_32_8573
    );
  ALU_E_mux0001_6_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X59Y182"
    )
    port map (
      ADR0 => ALU_B(6),
      ADR1 => ALU_A(6),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_6_32_8566
    );
  ALU_E_mux0001_55_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X52Y182"
    )
    port map (
      ADR0 => ALU_B(55),
      ADR1 => ALU_E_mux0001_0_312,
      ADR2 => ALU_A(55),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_55_32_8597
    );
  ALU_E_mux0001_7_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X52Y182"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_E_mux0001_0_312,
      ADR2 => ALU_B(7),
      ADR3 => ALU_A(7),
      O => ALU_E_mux0001_7_32_8590
    );
  ALU_E_mux0001_56_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X54Y179"
    )
    port map (
      ADR0 => ALU_A(56),
      ADR1 => ALU_E_mux0001_0_312,
      ADR2 => ALU_B(56),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_56_32_8621
    );
  ALU_E_mux0001_8_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X54Y179"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_312,
      ADR1 => ALU_B(8),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_A(8),
      O => ALU_E_mux0001_8_32_8614
    );
  ALU_fun_0_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_0_IBUF_2681,
      O => ALU_fun_0_1_DYMUX_8631
    );
  ALU_fun_0_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_fun_not0001_0,
      O => ALU_fun_0_1_SRINV_8629
    );
  ALU_fun_0_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_fun_0_1_CLKINV_8628
    );
  ALU_fun_2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X56Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_2_IBUF_2683,
      O => ALU_fun_2_1_DYMUX_8643
    );
  ALU_fun_2_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_fun_not0001_0,
      O => ALU_fun_2_1_SRINV_8641
    );
  ALU_fun_2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X56Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_fun_2_1_CLKINV_8640
    );
  ALU_A_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001_4_1_8673,
      O => ALU_A_4_DXMUX_8676
    );
  ALU_A_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0000_pack_1,
      O => ALU_A_or0000
    );
  ALU_A_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002_0,
      O => ALU_A_4_SRINV_8660
    );
  ALU_A_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y206",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_4_CLKINV_8659
    );
  valE_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y160",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(11),
      O => valE_11_DXMUX_8693
    );
  valE_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y160",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(10),
      O => valE_11_DYMUX_8688
    );
  valE_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y160",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_11_CLKINV_8686
    );
  valE_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(21),
      O => valE_21_DXMUX_8709
    );
  valE_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(20),
      O => valE_21_DYMUX_8704
    );
  valE_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_21_CLKINV_8702
    );
  valE_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y159",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(13),
      O => valE_13_DXMUX_8725
    );
  valE_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y159",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(12),
      O => valE_13_DYMUX_8720
    );
  valE_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y159",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_13_CLKINV_8718
    );
  valE_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y142",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(31),
      O => valE_31_DXMUX_8741
    );
  valE_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y142",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(30),
      O => valE_31_DYMUX_8736
    );
  valE_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y142",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_31_CLKINV_8734
    );
  valE_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(23),
      O => valE_23_DXMUX_8757
    );
  valE_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(22),
      O => valE_23_DYMUX_8752
    );
  valE_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y152",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_23_CLKINV_8750
    );
  valE_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y158",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(15),
      O => valE_15_DXMUX_8773
    );
  valE_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y158",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(14),
      O => valE_15_DYMUX_8768
    );
  valE_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y158",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_15_CLKINV_8766
    );
  valE_41 : X_FF
    generic map(
      LOC => "SLICE_X22Y135",
      INIT => '0'
    )
    port map (
      I => valE_41_DXMUX_8789,
      CE => VCC,
      CLK => valE_41_CLKINV_8782,
      SET => GND,
      RST => GND,
      O => valE_41_2906
    );
  valE_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y135",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(41),
      O => valE_41_DXMUX_8789
    );
  valE_41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y135",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(40),
      O => valE_41_DYMUX_8784
    );
  valE_41_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y135",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_41_CLKINV_8782
    );
  valE_32 : X_FF
    generic map(
      LOC => "SLICE_X22Y141",
      INIT => '0'
    )
    port map (
      I => valE_33_DYMUX_8800,
      CE => VCC,
      CLK => valE_33_CLKINV_8798,
      SET => GND,
      RST => GND,
      O => valE_32_2903
    );
  valE_33 : X_FF
    generic map(
      LOC => "SLICE_X22Y141",
      INIT => '0'
    )
    port map (
      I => valE_33_DXMUX_8805,
      CE => VCC,
      CLK => valE_33_CLKINV_8798,
      SET => GND,
      RST => GND,
      O => valE_33_2907
    );
  valE_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y141",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(33),
      O => valE_33_DXMUX_8805
    );
  valE_33_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y141",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(32),
      O => valE_33_DYMUX_8800
    );
  valE_33_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y141",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_33_CLKINV_8798
    );
  valE_24 : X_FF
    generic map(
      LOC => "SLICE_X26Y150",
      INIT => '0'
    )
    port map (
      I => valE_25_DYMUX_8816,
      CE => VCC,
      CLK => valE_25_CLKINV_8814,
      SET => GND,
      RST => GND,
      O => valE_24_2904
    );
  valE_25 : X_FF
    generic map(
      LOC => "SLICE_X26Y150",
      INIT => '0'
    )
    port map (
      I => valE_25_DXMUX_8821,
      CE => VCC,
      CLK => valE_25_CLKINV_8814,
      SET => GND,
      RST => GND,
      O => valE_25_2908
    );
  valE_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y150",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(25),
      O => valE_25_DXMUX_8821
    );
  valE_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y150",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(24),
      O => valE_25_DYMUX_8816
    );
  valE_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y150",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_25_CLKINV_8814
    );
  valE_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y157",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(17),
      O => valE_17_DXMUX_8837
    );
  valE_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y157",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(16),
      O => valE_17_DYMUX_8832
    );
  valE_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y157",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_17_CLKINV_8830
    );
  valE_51_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y123",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(51),
      O => valE_51_DXMUX_8853
    );
  valE_51_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y123",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(50),
      O => valE_51_DYMUX_8848
    );
  valE_51_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y123",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_51_CLKINV_8846
    );
  valE_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y133",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(43),
      O => valE_43_DXMUX_8869
    );
  valE_43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y133",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(42),
      O => valE_43_DYMUX_8864
    );
  valE_43_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y133",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_43_CLKINV_8862
    );
  valE_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y138",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(35),
      O => valE_35_DXMUX_8885
    );
  valE_35_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y138",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(34),
      O => valE_35_DYMUX_8880
    );
  valE_35_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y138",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_35_CLKINV_8878
    );
  valE_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y148",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(27),
      O => valE_27_DXMUX_8901
    );
  valE_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y148",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(26),
      O => valE_27_DYMUX_8896
    );
  valE_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y148",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_27_CLKINV_8894
    );
  valE_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y155",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(19),
      O => valE_19_DXMUX_8917
    );
  valE_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y155",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(18),
      O => valE_19_DYMUX_8912
    );
  valE_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y155",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_19_CLKINV_8910
    );
  valE_61_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(61),
      O => valE_61_DXMUX_8933
    );
  valE_61_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(60),
      O => valE_61_DYMUX_8928
    );
  valE_61_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y173",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_61_CLKINV_8926
    );
  valE_53_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(53),
      O => valE_53_DXMUX_8949
    );
  valE_53_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(52),
      O => valE_53_DYMUX_8944
    );
  valE_53_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y175",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_53_CLKINV_8942
    );
  valE_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y131",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(45),
      O => valE_45_DXMUX_8965
    );
  valE_45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y131",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(44),
      O => valE_45_DYMUX_8960
    );
  valE_45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y131",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_45_CLKINV_8958
    );
  valE_45 : X_FF
    generic map(
      LOC => "SLICE_X20Y131",
      INIT => '0'
    )
    port map (
      I => valE_45_DXMUX_8965,
      CE => VCC,
      CLK => valE_45_CLKINV_8958,
      SET => GND,
      RST => GND,
      O => valE_45_2927
    );
  valE_36 : X_FF
    generic map(
      LOC => "SLICE_X23Y136",
      INIT => '0'
    )
    port map (
      I => valE_37_DYMUX_8976,
      CE => VCC,
      CLK => valE_37_CLKINV_8974,
      SET => GND,
      RST => GND,
      O => valE_36_2923
    );
  valE_37 : X_FF
    generic map(
      LOC => "SLICE_X23Y136",
      INIT => '0'
    )
    port map (
      I => valE_37_DXMUX_8981,
      CE => VCC,
      CLK => valE_37_CLKINV_8974,
      SET => GND,
      RST => GND,
      O => valE_37_2928
    );
  valE_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y136",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(37),
      O => valE_37_DXMUX_8981
    );
  valE_37_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y136",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(36),
      O => valE_37_DYMUX_8976
    );
  valE_37_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y136",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_37_CLKINV_8974
    );
  valE_28 : X_FF
    generic map(
      LOC => "SLICE_X24Y147",
      INIT => '0'
    )
    port map (
      I => valE_29_DYMUX_8992,
      CE => VCC,
      CLK => valE_29_CLKINV_8990,
      SET => GND,
      RST => GND,
      O => valE_28_2924
    );
  valE_29 : X_FF
    generic map(
      LOC => "SLICE_X24Y147",
      INIT => '0'
    )
    port map (
      I => valE_29_DXMUX_8997,
      CE => VCC,
      CLK => valE_29_CLKINV_8990,
      SET => GND,
      RST => GND,
      O => valE_29_2929
    );
  valE_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y147",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(29),
      O => valE_29_DXMUX_8997
    );
  valE_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y147",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(28),
      O => valE_29_DYMUX_8992
    );
  valE_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y147",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_29_CLKINV_8990
    );
  valE_63_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y113",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(63),
      O => valE_63_DXMUX_9013
    );
  valE_63_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y113",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(62),
      O => valE_63_DYMUX_9008
    );
  valE_63_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y113",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_63_CLKINV_9006
    );
  valE_55_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(55),
      O => valE_55_DXMUX_9029
    );
  valE_55_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(54),
      O => valE_55_DYMUX_9024
    );
  valE_55_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_55_CLKINV_9022
    );
  valE_47_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(47),
      O => valE_47_DXMUX_9045
    );
  valE_47_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(46),
      O => valE_47_DYMUX_9040
    );
  valE_47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y126",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_47_CLKINV_9038
    );
  valE_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(39),
      O => valE_39_DXMUX_9061
    );
  valE_39_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X47Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(38),
      O => valE_39_DYMUX_9056
    );
  valE_39_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X47Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_39_CLKINV_9054
    );
  valE_57_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(57),
      O => valE_57_DXMUX_9077
    );
  valE_57_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X51Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(56),
      O => valE_57_DYMUX_9072
    );
  valE_57_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X51Y177",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_57_CLKINV_9070
    );
  valE_49_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y125",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(49),
      O => valE_49_DXMUX_9093
    );
  valE_49_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y125",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(48),
      O => valE_49_DYMUX_9088
    );
  valE_49_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y125",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_49_CLKINV_9086
    );
  valE_59_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y115",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(59),
      O => valE_59_DXMUX_9109
    );
  valE_59_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y115",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(58),
      O => valE_59_DYMUX_9104
    );
  valE_59_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y115",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_59_CLKINV_9102
    );
  ALU_E_mux0001_15_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X59Y189"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => N132,
      ADR2 => ALU_B(15),
      ADR3 => ALU_A(15),
      O => ALU_E_mux0001_15_32_9182
    );
  ALU_E_mux0001_21_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X59Y189"
    )
    port map (
      ADR0 => ALU_A(21),
      ADR1 => N132,
      ADR2 => ALU_fun(1),
      ADR3 => ALU_B(21),
      O => ALU_E_mux0001_21_32_9175
    );
  ALU_E_mux0001_16_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X64Y188"
    )
    port map (
      ADR0 => ALU_A(16),
      ADR1 => ALU_fun(1),
      ADR2 => N132,
      ADR3 => ALU_B(16),
      O => ALU_E_mux0001_16_32_9206
    );
  ALU_E_mux0001_22_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X64Y188"
    )
    port map (
      ADR0 => ALU_B(22),
      ADR1 => ALU_A(22),
      ADR2 => N132,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_22_32_9199
    );
  ALU_E_mux0001_25_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X58Y185"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_A(25),
      ADR2 => ALU_E_mux0001_0_31_2980,
      ADR3 => ALU_B(25),
      O => ALU_E_mux0001_25_32_9230
    );
  ALU_E_mux0001_30_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X58Y185"
    )
    port map (
      ADR0 => ALU_B(30),
      ADR1 => ALU_A(30),
      ADR2 => ALU_E_mux0001_0_31_2980,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_30_32_9223
    );
  ALU_E_mux0001_31_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X57Y184"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_B(31),
      ADR3 => ALU_A(31),
      O => ALU_E_mux0001_31_32_9247
    );
  valE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(1),
      O => valE_1_DXMUX_9629
    );
  valE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(0),
      O => valE_1_DYMUX_9624
    );
  valE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y171",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_1_CLKINV_9622
    );
  valE_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(3),
      O => valE_3_DXMUX_9645
    );
  valE_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(2),
      O => valE_3_DYMUX_9640
    );
  valE_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y167",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_3_CLKINV_9638
    );
  valE_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y164",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(5),
      O => valE_5_DXMUX_9661
    );
  valE_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y164",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(4),
      O => valE_5_DYMUX_9656
    );
  valE_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y164",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_5_CLKINV_9654
    );
  valE_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(7),
      O => valE_7_DXMUX_9677
    );
  valE_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(6),
      O => valE_7_DYMUX_9672
    );
  valE_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_7_CLKINV_9670
    );
  valE_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(9),
      O => valE_9_DXMUX_9693
    );
  valE_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_E(8),
      O => valE_9_DYMUX_9688
    );
  valE_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y162",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => valE_9_CLKINV_9686
    );
  ALU_fun_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_1_INBUF,
      O => ALU_fun_1_DXMUX_9712
    );
  ALU_fun_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_0_IBUF_2681,
      O => ALU_fun_1_DYMUX_9706
    );
  ALU_fun_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_fun_not0001_0,
      O => ALU_fun_1_SRINV_9704
    );
  ALU_fun_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_fun_1_CLKINV_9703
    );
  ALU_fun_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_2_IBUF_2683,
      O => ALU_fun_2_DYMUX_9724
    );
  ALU_fun_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_fun_not0001_0,
      O => ALU_fun_2_SRINV_9722
    );
  ALU_fun_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_fun_2_CLKINV_9721
    );
  ALU_A_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y201",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_mux0001(2),
      O => ALU_A_2_DXMUX_9755
    );
  ALU_A_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X71Y201",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0001_pack_1,
      O => ALU_A_or0001
    );
  ALU_A_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y201",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_A_2_CLKINV_9740
    );
  ALU_B_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001,
      O => ALU_B_not0001_0
    );
  ALU_B_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X72Y198",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_A_or0002,
      O => ALU_A_or0002_0
    );
  ALU_B_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_11_INBUF,
      O => ALU_B_11_DXMUX_9798
    );
  ALU_B_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X73Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_10_INBUF,
      O => ALU_B_11_DYMUX_9792
    );
  ALU_B_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_11_SRINV_9790
    );
  ALU_B_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X73Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_11_CLKINV_9789
    );
  ALU_B_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_21_INBUF,
      O => ALU_B_21_DXMUX_9818
    );
  ALU_B_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_20_INBUF,
      O => ALU_B_21_DYMUX_9812
    );
  ALU_B_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_21_SRINV_9810
    );
  ALU_B_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y194",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_21_CLKINV_9809
    );
  ALU_B_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X83Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_13_INBUF,
      O => ALU_B_13_DXMUX_9838
    );
  ALU_B_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X83Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_12_INBUF,
      O => ALU_B_13_DYMUX_9832
    );
  ALU_B_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X83Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_13_SRINV_9830
    );
  ALU_B_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X83Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_13_CLKINV_9829
    );
  ALU_B_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X82Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_31_INBUF,
      O => ALU_B_31_DXMUX_9858
    );
  ALU_B_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X82Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_30_INBUF,
      O => ALU_B_31_DYMUX_9852
    );
  ALU_B_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X82Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_31_SRINV_9850
    );
  ALU_B_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X82Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_31_CLKINV_9849
    );
  ALU_B_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y195",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_23_INBUF,
      O => ALU_B_23_DXMUX_9878
    );
  ALU_B_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X90Y195",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_22_INBUF,
      O => ALU_B_23_DYMUX_9872
    );
  ALU_B_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y195",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_23_SRINV_9870
    );
  ALU_B_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X90Y195",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_23_CLKINV_9869
    );
  ALU_B_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_15_INBUF,
      O => ALU_B_15_DXMUX_9898
    );
  ALU_B_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X91Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_14_INBUF,
      O => ALU_B_15_DYMUX_9892
    );
  ALU_B_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_15_SRINV_9890
    );
  ALU_B_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X91Y192",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_15_CLKINV_9889
    );
  ALU_B_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_41_INBUF,
      O => ALU_B_41_DXMUX_9918
    );
  ALU_B_41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X77Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_40_INBUF,
      O => ALU_B_41_DYMUX_9912
    );
  ALU_B_41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_41_SRINV_9910
    );
  ALU_B_41_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X77Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_41_CLKINV_9909
    );
  ALU_B_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_33_INBUF,
      O => ALU_B_33_DXMUX_9938
    );
  ALU_B_33_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_32_INBUF,
      O => ALU_B_33_DYMUX_9932
    );
  ALU_B_33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_33_SRINV_9930
    );
  ALU_B_33_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_33_CLKINV_9929
    );
  ALU_B_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_25_INBUF,
      O => ALU_B_25_DXMUX_9958
    );
  ALU_B_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_24_INBUF,
      O => ALU_B_25_DYMUX_9952
    );
  ALU_B_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_25_SRINV_9950
    );
  ALU_B_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_25_CLKINV_9949
    );
  ALU_B_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_17_INBUF,
      O => ALU_B_17_DXMUX_9978
    );
  ALU_B_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_16_INBUF,
      O => ALU_B_17_DYMUX_9972
    );
  ALU_B_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_17_SRINV_9970
    );
  ALU_B_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_17_CLKINV_9969
    );
  ALU_B_51_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_51_INBUF,
      O => ALU_B_51_DXMUX_9998
    );
  ALU_B_51_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_50_INBUF,
      O => ALU_B_51_DYMUX_9992
    );
  ALU_B_51_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_51_SRINV_9990
    );
  ALU_B_51_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y186",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_51_CLKINV_9989
    );
  ALU_B_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_43_INBUF,
      O => ALU_B_43_DXMUX_10018
    );
  ALU_B_43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X71Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_42_INBUF,
      O => ALU_B_43_DYMUX_10012
    );
  ALU_B_43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_43_SRINV_10010
    );
  ALU_B_43_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X71Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_43_CLKINV_10009
    );
  ALU_B_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_35_INBUF,
      O => ALU_B_35_DXMUX_10038
    );
  ALU_B_35_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_34_INBUF,
      O => ALU_B_35_DYMUX_10032
    );
  ALU_B_35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_35_SRINV_10030
    );
  ALU_B_35_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_35_CLKINV_10029
    );
  ALU_B_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X84Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_27_INBUF,
      O => ALU_B_27_DXMUX_10058
    );
  ALU_B_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X84Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_26_INBUF,
      O => ALU_B_27_DYMUX_10052
    );
  ALU_B_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X84Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_27_SRINV_10050
    );
  ALU_B_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X84Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_27_CLKINV_10049
    );
  ALU_B_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_19_INBUF,
      O => ALU_B_19_DXMUX_10078
    );
  ALU_B_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_18_INBUF,
      O => ALU_B_19_DYMUX_10072
    );
  ALU_B_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_19_SRINV_10070
    );
  ALU_B_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y190",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_19_CLKINV_10069
    );
  ALU_B_61_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_61_INBUF,
      O => ALU_B_61_DXMUX_10098
    );
  ALU_B_61_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_60_INBUF,
      O => ALU_B_61_DYMUX_10092
    );
  ALU_B_61_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_61_SRINV_10090
    );
  ALU_B_61_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_61_CLKINV_10089
    );
  ALU_B_53_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_53_INBUF,
      O => ALU_B_53_DXMUX_10118
    );
  ALU_B_53_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_52_INBUF,
      O => ALU_B_53_DYMUX_10112
    );
  ALU_B_53_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_53_SRINV_10110
    );
  ALU_B_53_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y188",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_53_CLKINV_10109
    );
  ALU_B_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_45_INBUF,
      O => ALU_B_45_DXMUX_10138
    );
  ALU_B_45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X61Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_44_INBUF,
      O => ALU_B_45_DYMUX_10132
    );
  ALU_B_45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_45_SRINV_10130
    );
  ALU_B_45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X61Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_45_CLKINV_10129
    );
  ALU_B_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_37_INBUF,
      O => ALU_B_37_DXMUX_10158
    );
  ALU_B_37_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X79Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_36_INBUF,
      O => ALU_B_37_DYMUX_10152
    );
  ALU_B_37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_37_SRINV_10150
    );
  ALU_B_37_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X79Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_37_CLKINV_10149
    );
  ALU_B_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_29_INBUF,
      O => ALU_B_29_DXMUX_10178
    );
  ALU_B_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_28_INBUF,
      O => ALU_B_29_DYMUX_10172
    );
  ALU_B_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_29_SRINV_10170
    );
  ALU_B_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_29_CLKINV_10169
    );
  ALU_B_63_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_63_INBUF,
      O => ALU_B_63_DXMUX_10198
    );
  ALU_B_63_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X57Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_62_INBUF,
      O => ALU_B_63_DYMUX_10192
    );
  ALU_B_63_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_63_SRINV_10190
    );
  ALU_B_63_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X57Y178",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_63_CLKINV_10189
    );
  ALU_B_55_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_55_INBUF,
      O => ALU_B_55_DXMUX_10218
    );
  ALU_B_55_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X72Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_54_INBUF,
      O => ALU_B_55_DYMUX_10212
    );
  ALU_B_55_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_55_SRINV_10210
    );
  ALU_B_55_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X72Y189",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_55_CLKINV_10209
    );
  ALU_B_47_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_47_INBUF,
      O => ALU_B_47_DXMUX_10238
    );
  ALU_B_47_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_46_INBUF,
      O => ALU_B_47_DYMUX_10232
    );
  ALU_B_47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_47_SRINV_10230
    );
  ALU_B_47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y180",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_47_CLKINV_10229
    );
  ALU_B_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_39_INBUF,
      O => ALU_B_39_DXMUX_10258
    );
  ALU_B_39_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X68Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_38_INBUF,
      O => ALU_B_39_DYMUX_10252
    );
  ALU_B_39_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_39_SRINV_10250
    );
  ALU_B_39_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X68Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_39_CLKINV_10249
    );
  ALU_B_57_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_57_INBUF,
      O => ALU_B_57_DXMUX_10278
    );
  ALU_B_57_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X69Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_56_INBUF,
      O => ALU_B_57_DYMUX_10272
    );
  ALU_B_57_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_57_SRINV_10270
    );
  ALU_B_57_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X69Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_57_CLKINV_10269
    );
  ALU_B_49_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_49_INBUF,
      O => ALU_B_49_DXMUX_10298
    );
  ALU_B_49_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X75Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_48_INBUF,
      O => ALU_B_49_DYMUX_10292
    );
  ALU_B_49_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_49_SRINV_10290
    );
  ALU_B_49_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X75Y187",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_49_CLKINV_10289
    );
  ALU_B_59_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_59_INBUF,
      O => ALU_B_59_DXMUX_10318
    );
  ALU_B_59_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X60Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_58_INBUF,
      O => ALU_B_59_DYMUX_10312
    );
  ALU_B_59_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_59_SRINV_10310
    );
  ALU_B_59_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X60Y181",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_59_CLKINV_10309
    );
  ALU_B_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_1_INBUF,
      O => ALU_B_1_DXMUX_10338
    );
  ALU_B_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X78Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_0_INBUF,
      O => ALU_B_1_DYMUX_10332
    );
  ALU_B_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_1_SRINV_10330
    );
  ALU_B_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X78Y193",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_1_CLKINV_10329
    );
  ALU_B_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_3_INBUF,
      O => ALU_B_3_DXMUX_10358
    );
  ALU_B_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_2_INBUF,
      O => ALU_B_3_DYMUX_10352
    );
  ALU_B_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_3_SRINV_10350
    );
  ALU_B_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y185",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_3_CLKINV_10349
    );
  ALU_B_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_5_INBUF,
      O => ALU_B_5_DXMUX_10378
    );
  ALU_B_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X62Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_4_INBUF,
      O => ALU_B_5_DYMUX_10372
    );
  ALU_B_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_5_SRINV_10370
    );
  ALU_B_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X62Y184",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_5_CLKINV_10369
    );
  ALU_B_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_7_INBUF,
      O => ALU_B_7_DXMUX_10398
    );
  ALU_B_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_6_INBUF,
      O => ALU_B_7_DYMUX_10392
    );
  ALU_B_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_7_SRINV_10390
    );
  ALU_B_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y183",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_7_CLKINV_10389
    );
  ALU_B_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_9_INBUF,
      O => ALU_B_9_DXMUX_10418
    );
  ALU_B_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X59Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => valB_8_INBUF,
      O => ALU_B_9_DYMUX_10412
    );
  ALU_B_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => ALU_B_not0001_0,
      O => ALU_B_9_SRINV_10410
    );
  ALU_B_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X59Y179",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => ALU_B_9_CLKINV_10409
    );
  ifun_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_0_INBUF,
      O => ifun_0_IBUF_2681
    );
  ifun_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 526 ps
    )
    port map (
      I => ifun_2_INBUF,
      O => ifun_2_IBUF_2683
    );
  valA_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_0_INBUF,
      O => valA_0_IBUF_2684
    );
  valA_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_1_INBUF,
      O => valA_1_IBUF_2685
    );
  valA_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_2_INBUF,
      O => valA_2_IBUF_2686
    );
  valA_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_3_INBUF,
      O => valA_3_IBUF_2687
    );
  valA_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_4_INBUF,
      O => valA_4_IBUF_2689
    );
  valA_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_5_INBUF,
      O => valA_5_IBUF_2691
    );
  valA_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_6_INBUF,
      O => valA_6_IBUF_2693
    );
  valA_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_7_INBUF,
      O => valA_7_IBUF_2695
    );
  valC_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_0_INBUF,
      O => valC_0_IBUF_2696
    );
  valA_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_8_INBUF,
      O => valA_8_IBUF_2698
    );
  valC_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_1_INBUF,
      O => valC_1_IBUF_2699
    );
  valA_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_9_INBUF,
      O => valA_9_IBUF_2701
    );
  valC_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_2_INBUF,
      O => valC_2_IBUF_2702
    );
  valC_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_3_INBUF,
      O => valC_3_IBUF_2704
    );
  valC_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_4_INBUF,
      O => valC_4_IBUF_2706
    );
  valC_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_5_INBUF,
      O => valC_5_IBUF_2708
    );
  valC_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_6_INBUF,
      O => valC_6_IBUF_2710
    );
  valC_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_7_INBUF,
      O => valC_7_IBUF_2711
    );
  valC_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_8_INBUF,
      O => valC_8_IBUF_2713
    );
  valC_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_9_INBUF,
      O => valC_9_IBUF_2715
    );
  icode_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode_0_INBUF,
      O => icode_0_IBUF_2724
    );
  icode_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode_1_INBUF,
      O => icode_1_IBUF_2725
    );
  icode_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode_2_INBUF,
      O => icode_2_IBUF_2726
    );
  icode_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => icode_3_INBUF,
      O => icode_3_IBUF_2727
    );
  valA_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_10_INBUF,
      O => valA_10_IBUF_2728
    );
  valA_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_11_INBUF,
      O => valA_11_IBUF_2729
    );
  valA_20_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_20_INBUF,
      O => valA_20_IBUF_2730
    );
  valA_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_12_INBUF,
      O => valA_12_IBUF_2731
    );
  valA_21_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_21_INBUF,
      O => valA_21_IBUF_2732
    );
  valA_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_13_INBUF,
      O => valA_13_IBUF_2733
    );
  valA_30_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_30_INBUF,
      O => valA_30_IBUF_2734
    );
  valA_22_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_22_INBUF,
      O => valA_22_IBUF_2735
    );
  valA_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_14_INBUF,
      O => valA_14_IBUF_2736
    );
  valA_31_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_31_INBUF,
      O => valA_31_IBUF_2737
    );
  valA_23_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_23_INBUF,
      O => valA_23_IBUF_2738
    );
  valA_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_15_INBUF,
      O => valA_15_IBUF_2739
    );
  valA_40_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD808",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_40_INBUF,
      O => valA_40_IBUF_2740
    );
  valA_32_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_32_INBUF,
      O => valA_32_IBUF_2741
    );
  valA_24_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_24_INBUF,
      O => valA_24_IBUF_2742
    );
  valA_16_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_16_INBUF,
      O => valA_16_IBUF_2743
    );
  valA_41_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_41_INBUF,
      O => valA_41_IBUF_2744
    );
  valA_33_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_33_INBUF,
      O => valA_33_IBUF_2745
    );
  valA_25_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_25_INBUF,
      O => valA_25_IBUF_2746
    );
  valA_17_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_17_INBUF,
      O => valA_17_IBUF_2747
    );
  valA_50_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_50_INBUF,
      O => valA_50_IBUF_2749
    );
  valA_42_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_42_INBUF,
      O => valA_42_IBUF_2750
    );
  valA_34_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_34_INBUF,
      O => valA_34_IBUF_2751
    );
  valA_26_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_26_INBUF,
      O => valA_26_IBUF_2752
    );
  valA_18_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_18_INBUF,
      O => valA_18_IBUF_2753
    );
  valA_51_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_51_INBUF,
      O => valA_51_IBUF_2755
    );
  valA_43_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD810",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_43_INBUF,
      O => valA_43_IBUF_2756
    );
  valA_35_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_35_INBUF,
      O => valA_35_IBUF_2757
    );
  valA_27_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_27_INBUF,
      O => valA_27_IBUF_2758
    );
  valA_19_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_19_INBUF,
      O => valA_19_IBUF_2759
    );
  valA_60_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD771",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_60_INBUF,
      O => valA_60_IBUF_2762
    );
  valA_52_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_52_INBUF,
      O => valA_52_IBUF_2763
    );
  valA_44_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_44_INBUF,
      O => valA_44_IBUF_2764
    );
  valA_36_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_36_INBUF,
      O => valA_36_IBUF_2765
    );
  valA_28_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_28_INBUF,
      O => valA_28_IBUF_2766
    );
  valA_61_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD777",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_61_INBUF,
      O => valA_61_IBUF_2769
    );
  valA_53_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_53_INBUF,
      O => valA_53_IBUF_2770
    );
  valA_45_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_45_INBUF,
      O => valA_45_IBUF_2771
    );
  valA_37_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_37_INBUF,
      O => valA_37_IBUF_2772
    );
  valA_29_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_29_INBUF,
      O => valA_29_IBUF_2773
    );
  valA_62_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD769",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_62_INBUF,
      O => valA_62_IBUF_2777
    );
  valA_54_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD791",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_54_INBUF,
      O => valA_54_IBUF_2778
    );
  valA_46_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD787",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_46_INBUF,
      O => valA_46_IBUF_2779
    );
  valA_38_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_38_INBUF,
      O => valA_38_IBUF_2780
    );
  valA_63_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD768",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_63_INBUF,
      O => valA_63_IBUF_2784
    );
  valA_55_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD797",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_55_INBUF,
      O => valA_55_IBUF_2785
    );
  valA_47_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD790",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_47_INBUF,
      O => valA_47_IBUF_2786
    );
  valA_39_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_39_INBUF,
      O => valA_39_IBUF_2787
    );
  valA_56_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD778",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_56_INBUF,
      O => valA_56_IBUF_2792
    );
  valA_48_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD798",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_48_INBUF,
      O => valA_48_IBUF_2793
    );
  valA_57_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD779",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_57_INBUF,
      O => valA_57_IBUF_2798
    );
  valA_49_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_49_INBUF,
      O => valA_49_IBUF_2799
    );
  valC_10_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_10_INBUF,
      O => valC_10_IBUF_2800
    );
  valA_58_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD772",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_58_INBUF,
      O => valA_58_IBUF_2806
    );
  valC_11_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_11_INBUF,
      O => valC_11_IBUF_2807
    );
  valA_59_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD781",
      PATHPULSE => 526 ps
    )
    port map (
      I => valA_59_INBUF,
      O => valA_59_IBUF_2813
    );
  valC_20_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_20_INBUF,
      O => valC_20_IBUF_2814
    );
  valC_12_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_12_INBUF,
      O => valC_12_IBUF_2815
    );
  valC_21_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_21_INBUF,
      O => valC_21_IBUF_2821
    );
  valC_13_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_13_INBUF,
      O => valC_13_IBUF_2822
    );
  valC_30_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD809",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_30_INBUF,
      O => valC_30_IBUF_2828
    );
  valC_22_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_22_INBUF,
      O => valC_22_IBUF_2829
    );
  valC_14_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_14_INBUF,
      O => valC_14_IBUF_2830
    );
  valC_31_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_31_INBUF,
      O => valC_31_IBUF_2835
    );
  valC_23_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD816",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_23_INBUF,
      O => valC_23_IBUF_2836
    );
  valC_15_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 526 ps
    )
    port map (
      I => valC_15_INBUF,
      O => valC_15_IBUF_2837
    );
  ALU_E_mux0001_1_351_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X72Y190"
    )
    port map (
      ADR0 => ALU_B(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_1_351_SW0_O_pack_1
    );
  ALU_E_1 : X_SFF
    generic map(
      LOC => "SLICE_X72Y190",
      INIT => '0'
    )
    port map (
      I => ALU_E_1_DXMUX_5107,
      CE => VCC,
      CLK => ALU_E_1_CLKINV_5089,
      SET => GND,
      RST => GND,
      SSET => ALU_E_1_SRINV_5090,
      SRST => GND,
      O => ALU_E(1)
    );
  ALU_E_mux0001_0_31_2 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X54Y182"
    )
    port map (
      ADR0 => ALU_fun_0_1_2950,
      ADR1 => VCC,
      ADR2 => ALU_fun_2_1_2951,
      ADR3 => VCC,
      O => ALU_E_mux0001_0_311_pack_1
    );
  ALU_E_mux0001_52_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X54Y182"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_E_mux0001_0_311,
      ADR2 => ALU_B(52),
      ADR3 => ALU_A(52),
      O => ALU_E_mux0001_52_32_5133
    );
  ALU_E_mux0001_2_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X61Y185"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(2),
      O => ALU_E_mux0001_2_351_SW0_O_pack_1
    );
  ALU_E_mux0001_2_351 : X_LUT4
    generic map(
      INIT => X"F060",
      LOC => "SLICE_X61Y185"
    )
    port map (
      ADR0 => ALU_E_mux0001_2_351_SW0_O,
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(2),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_2_35
    );
  ALU_E_2 : X_SFF
    generic map(
      LOC => "SLICE_X61Y185",
      INIT => '0'
    )
    port map (
      I => ALU_E_2_DXMUX_5164,
      CE => VCC,
      CLK => ALU_E_2_CLKINV_5146,
      SET => GND,
      RST => GND,
      SSET => ALU_E_2_SRINV_5147,
      SRST => GND,
      O => ALU_E(2)
    );
  ALU_E_mux0001_0_31_1 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X54Y180"
    )
    port map (
      ADR0 => ALU_fun_0_1_2950,
      ADR1 => VCC,
      ADR2 => ALU_fun_2_1_2951,
      ADR3 => VCC,
      O => ALU_E_mux0001_0_31_pack_1
    );
  ALU_E_mux0001_38_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X54Y180"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_31_2980,
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(38),
      ADR3 => ALU_A(38),
      O => ALU_E_mux0001_38_32_5190
    );
  ALU_E_mux0001_3_351_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X64Y184"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(3),
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_3_351_SW0_O_pack_1
    );
  ALU_E_mux0001_3_351 : X_LUT4
    generic map(
      INIT => X"B0E0",
      LOC => "SLICE_X64Y184"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(3),
      ADR3 => ALU_E_mux0001_3_351_SW0_O,
      O => ALU_E_mux0001_3_35
    );
  ALU_E_3 : X_SFF
    generic map(
      LOC => "SLICE_X64Y184",
      INIT => '0'
    )
    port map (
      I => ALU_E_3_DXMUX_5221,
      CE => VCC,
      CLK => ALU_E_3_CLKINV_5203,
      SET => GND,
      RST => GND,
      SSET => ALU_E_3_SRINV_5204,
      SRST => GND,
      O => ALU_E(3)
    );
  ALU_E_mux0001_4_351_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X56Y181"
    )
    port map (
      ADR0 => ALU_B(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_4_351_SW0_O_pack_1
    );
  ALU_E_mux0001_4_351 : X_LUT4
    generic map(
      INIT => X"8AA8",
      LOC => "SLICE_X56Y181"
    )
    port map (
      ADR0 => ALU_A(4),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_4_351_SW0_O,
      ADR3 => ALU_fun(0),
      O => ALU_E_mux0001_4_35
    );
  ALU_E_4 : X_SFF
    generic map(
      LOC => "SLICE_X56Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_4_DXMUX_5254,
      CE => VCC,
      CLK => ALU_E_4_CLKINV_5236,
      SET => GND,
      RST => GND,
      SSET => ALU_E_4_SRINV_5237,
      SRST => GND,
      O => ALU_E(4)
    );
  ALU_E_mux0001_5_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X55Y184"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(5),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_5_351_SW0_O_pack_1
    );
  ALU_E_mux0001_5_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X55Y184"
    )
    port map (
      ADR0 => ALU_A(5),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_5_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_5_35
    );
  ALU_E_5 : X_SFF
    generic map(
      LOC => "SLICE_X55Y184",
      INIT => '0'
    )
    port map (
      I => ALU_E_5_DXMUX_5287,
      CE => VCC,
      CLK => ALU_E_5_CLKINV_5269,
      SET => GND,
      RST => GND,
      SSET => ALU_E_5_SRINV_5270,
      SRST => GND,
      O => ALU_E(5)
    );
  ALU_E_mux0001_6_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X58Y183"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(6),
      O => ALU_E_mux0001_6_351_SW0_O_pack_1
    );
  ALU_E_mux0001_6_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X58Y183"
    )
    port map (
      ADR0 => ALU_E_mux0001_6_351_SW0_O,
      ADR1 => ALU_A(6),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_6_35
    );
  ALU_E_6 : X_SFF
    generic map(
      LOC => "SLICE_X58Y183",
      INIT => '0'
    )
    port map (
      I => ALU_E_6_DXMUX_5320,
      CE => VCC,
      CLK => ALU_E_6_CLKINV_5302,
      SET => GND,
      RST => GND,
      SSET => ALU_E_6_SRINV_5303,
      SRST => GND,
      O => ALU_E(6)
    );
  ALU_E_mux0001_9_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X55Y178"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(9),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_9_351_SW0_O_pack_1
    );
  ALU_E_mux0001_9_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X55Y178"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_9_351_SW0_O,
      ADR3 => ALU_A(9),
      O => ALU_E_mux0001_9_35
    );
  ALU_E_9 : X_SFF
    generic map(
      LOC => "SLICE_X55Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_9_DXMUX_5419,
      CE => VCC,
      CLK => ALU_E_9_CLKINV_5401,
      SET => GND,
      RST => GND,
      SSET => ALU_E_9_SRINV_5402,
      SRST => GND,
      O => ALU_E(9)
    );
  ALU_E_mux0001_10_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X66Y193"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(10),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_10_351_SW0_O_pack_1
    );
  ALU_E_mux0001_10_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X66Y193"
    )
    port map (
      ADR0 => ALU_A(10),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_10_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_10_35
    );
  ALU_E_10 : X_SFF
    generic map(
      LOC => "SLICE_X66Y193",
      INIT => '0'
    )
    port map (
      I => ALU_E_10_DXMUX_5452,
      CE => VCC,
      CLK => ALU_E_10_CLKINV_5434,
      SET => GND,
      RST => GND,
      SSET => ALU_E_10_SRINV_5435,
      SRST => GND,
      O => ALU_E(10)
    );
  ALU_E_mux0001_11_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X73Y190"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(11),
      ADR3 => VCC,
      O => ALU_E_mux0001_11_351_SW0_O_pack_1
    );
  ALU_E_mux0001_11_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X73Y190"
    )
    port map (
      ADR0 => ALU_A(11),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_11_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_11_35
    );
  ALU_E_11 : X_SFF
    generic map(
      LOC => "SLICE_X73Y190",
      INIT => '0'
    )
    port map (
      I => ALU_E_11_DXMUX_5485,
      CE => VCC,
      CLK => ALU_E_11_CLKINV_5467,
      SET => GND,
      RST => GND,
      SSET => ALU_E_11_SRINV_5468,
      SRST => GND,
      O => ALU_E(11)
    );
  ALU_E_mux0001_20_351_SW0 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X65Y190"
    )
    port map (
      ADR0 => ALU_B(20),
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_20_351_SW0_O_pack_1
    );
  ALU_E_mux0001_20_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X65Y190"
    )
    port map (
      ADR0 => ALU_A(20),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_20_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_20_35
    );
  ALU_E_20 : X_SFF
    generic map(
      LOC => "SLICE_X65Y190",
      INIT => '0'
    )
    port map (
      I => ALU_E_20_DXMUX_5518,
      CE => VCC,
      CLK => ALU_E_20_CLKINV_5500,
      SET => GND,
      RST => GND,
      SSET => ALU_E_20_SRINV_5501,
      SRST => GND,
      O => ALU_E(20)
    );
  ALU_E_mux0001_12_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X57Y179"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(12),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_12_351_SW0_O_pack_1
    );
  ALU_E_mux0001_12_351 : X_LUT4
    generic map(
      INIT => X"8AA8",
      LOC => "SLICE_X57Y179"
    )
    port map (
      ADR0 => ALU_A(12),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_12_351_SW0_O,
      O => ALU_E_mux0001_12_35
    );
  ALU_E_12 : X_SFF
    generic map(
      LOC => "SLICE_X57Y179",
      INIT => '0'
    )
    port map (
      I => ALU_E_12_DXMUX_5551,
      CE => VCC,
      CLK => ALU_E_12_CLKINV_5533,
      SET => GND,
      RST => GND,
      SSET => ALU_E_12_SRINV_5534,
      SRST => GND,
      O => ALU_E(12)
    );
  ALU_E_mux0001_21_351_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X58Y191"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(21),
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_21_351_SW0_O_pack_1
    );
  ALU_E_mux0001_21_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X58Y191"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_21_351_SW0_O,
      ADR3 => ALU_A(21),
      O => ALU_E_mux0001_21_35
    );
  ALU_E_21 : X_SFF
    generic map(
      LOC => "SLICE_X58Y191",
      INIT => '0'
    )
    port map (
      I => ALU_E_21_DXMUX_5584,
      CE => VCC,
      CLK => ALU_E_21_CLKINV_5566,
      SET => GND,
      RST => GND,
      SSET => ALU_E_21_SRINV_5567,
      SRST => GND,
      O => ALU_E(21)
    );
  ALU_E_mux0001_13_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X57Y182"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(13),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_13_351_SW0_O_pack_1
    );
  ALU_E_mux0001_13_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X57Y182"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(13),
      ADR2 => ALU_E_mux0001_13_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_13_35
    );
  ALU_E_22 : X_SFF
    generic map(
      LOC => "SLICE_X65Y188",
      INIT => '0'
    )
    port map (
      I => ALU_E_22_DXMUX_5683,
      CE => VCC,
      CLK => ALU_E_22_CLKINV_5665,
      SET => GND,
      RST => GND,
      SSET => ALU_E_22_SRINV_5666,
      SRST => GND,
      O => ALU_E(22)
    );
  ALU_E_mux0001_14_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X65Y191"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(14),
      O => ALU_E_mux0001_14_351_SW0_O_pack_1
    );
  ALU_E_mux0001_14_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X65Y191"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(14),
      ADR3 => ALU_E_mux0001_14_351_SW0_O,
      O => ALU_E_mux0001_14_35
    );
  ALU_E_14 : X_SFF
    generic map(
      LOC => "SLICE_X65Y191",
      INIT => '0'
    )
    port map (
      I => ALU_E_14_DXMUX_5716,
      CE => VCC,
      CLK => ALU_E_14_CLKINV_5698,
      SET => GND,
      RST => GND,
      SSET => ALU_E_14_SRINV_5699,
      SRST => GND,
      O => ALU_E(14)
    );
  ALU_E_mux0001_31_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X56Y185"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(31),
      ADR3 => VCC,
      O => ALU_E_mux0001_31_351_SW0_O_pack_1
    );
  ALU_E_mux0001_31_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X56Y185"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_31_351_SW0_O,
      ADR3 => ALU_A(31),
      O => ALU_E_mux0001_31_35
    );
  ALU_E_31 : X_SFF
    generic map(
      LOC => "SLICE_X56Y185",
      INIT => '0'
    )
    port map (
      I => ALU_E_31_DXMUX_5749,
      CE => VCC,
      CLK => ALU_E_31_CLKINV_5731,
      SET => GND,
      RST => GND,
      SSET => ALU_E_31_SRINV_5732,
      SRST => GND,
      O => ALU_E(31)
    );
  ALU_E_mux0001_23_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X58Y188"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(23),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_23_351_SW0_O_pack_1
    );
  ALU_E_mux0001_23_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X58Y188"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(23),
      ADR3 => ALU_E_mux0001_23_351_SW0_O,
      O => ALU_E_mux0001_23_35
    );
  ALU_E_23 : X_SFF
    generic map(
      LOC => "SLICE_X58Y188",
      INIT => '0'
    )
    port map (
      I => ALU_E_23_DXMUX_5782,
      CE => VCC,
      CLK => ALU_E_23_CLKINV_5764,
      SET => GND,
      RST => GND,
      SSET => ALU_E_23_SRINV_5765,
      SRST => GND,
      O => ALU_E(23)
    );
  ALU_E_mux0001_15_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X60Y188"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(15),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_15_351_SW0_O_pack_1
    );
  ALU_E_mux0001_15_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X60Y188"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(15),
      ADR3 => ALU_E_mux0001_15_351_SW0_O,
      O => ALU_E_mux0001_15_35
    );
  ALU_E_15 : X_SFF
    generic map(
      LOC => "SLICE_X60Y188",
      INIT => '0'
    )
    port map (
      I => ALU_E_15_DXMUX_5815,
      CE => VCC,
      CLK => ALU_E_15_CLKINV_5797,
      SET => GND,
      RST => GND,
      SSET => ALU_E_15_SRINV_5798,
      SRST => GND,
      O => ALU_E(15)
    );
  ALU_E_mux0001_40_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X56Y178"
    )
    port map (
      ADR0 => ALU_B(40),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_40_351_SW0_O_pack_1
    );
  ALU_E_mux0001_40_351 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X56Y178"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(40),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_40_351_SW0_O,
      O => ALU_E_mux0001_40_35
    );
  ALU_E_40 : X_SFF
    generic map(
      LOC => "SLICE_X56Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_40_DXMUX_5848,
      CE => VCC,
      CLK => ALU_E_40_CLKINV_5830,
      SET => GND,
      RST => GND,
      SSET => ALU_E_40_SRINV_5831,
      SRST => GND,
      O => ALU_E(40)
    );
  ALU_E_mux0001_32_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X55Y181"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(32),
      O => ALU_E_mux0001_32_351_SW0_O_pack_1
    );
  ALU_E_mux0001_32_351 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X55Y181"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(32),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_32_351_SW0_O,
      O => ALU_E_mux0001_32_35
    );
  ALU_E_32 : X_SFF
    generic map(
      LOC => "SLICE_X55Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_32_DXMUX_5881,
      CE => VCC,
      CLK => ALU_E_32_CLKINV_5863,
      SET => GND,
      RST => GND,
      SSET => ALU_E_32_SRINV_5864,
      SRST => GND,
      O => ALU_E(32)
    );
  ALU_E_mux0001_24_351_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X60Y184"
    )
    port map (
      ADR0 => ALU_B(24),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_24_351_SW0_O_pack_1
    );
  ALU_E_41 : X_SFF
    generic map(
      LOC => "SLICE_X45Y171",
      INIT => '0'
    )
    port map (
      I => ALU_E_41_DXMUX_5980,
      CE => VCC,
      CLK => ALU_E_41_CLKINV_5962,
      SET => GND,
      RST => GND,
      SSET => ALU_E_41_SRINV_5963,
      SRST => GND,
      O => ALU_E(41)
    );
  ALU_E_mux0001_33_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X54Y185"
    )
    port map (
      ADR0 => ALU_B(33),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_33_351_SW0_O_pack_1
    );
  ALU_E_mux0001_33_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X54Y185"
    )
    port map (
      ADR0 => ALU_E_mux0001_33_351_SW0_O,
      ADR1 => ALU_fun(2),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_A(33),
      O => ALU_E_mux0001_33_35
    );
  ALU_E_33 : X_SFF
    generic map(
      LOC => "SLICE_X54Y185",
      INIT => '0'
    )
    port map (
      I => ALU_E_33_DXMUX_6013,
      CE => VCC,
      CLK => ALU_E_33_CLKINV_5995,
      SET => GND,
      RST => GND,
      SSET => ALU_E_33_SRINV_5996,
      SRST => GND,
      O => ALU_E(33)
    );
  ALU_E_mux0001_25_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X58Y181"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(25),
      ADR3 => VCC,
      O => ALU_E_mux0001_25_351_SW0_O_pack_1
    );
  ALU_E_mux0001_25_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X58Y181"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(25),
      ADR2 => ALU_E_mux0001_25_351_SW0_O,
      ADR3 => ALU_fun(0),
      O => ALU_E_mux0001_25_35
    );
  ALU_E_25 : X_SFF
    generic map(
      LOC => "SLICE_X58Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_25_DXMUX_6046,
      CE => VCC,
      CLK => ALU_E_25_CLKINV_6028,
      SET => GND,
      RST => GND,
      SSET => ALU_E_25_SRINV_6029,
      SRST => GND,
      O => ALU_E(25)
    );
  ALU_E_mux0001_17_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X61Y191"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(17),
      O => ALU_E_mux0001_17_351_SW0_O_pack_1
    );
  ALU_E_mux0001_17_351 : X_LUT4
    generic map(
      INIT => X"D0E0",
      LOC => "SLICE_X61Y191"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_A(17),
      ADR3 => ALU_E_mux0001_17_351_SW0_O,
      O => ALU_E_mux0001_17_35
    );
  ALU_E_17 : X_SFF
    generic map(
      LOC => "SLICE_X61Y191",
      INIT => '0'
    )
    port map (
      I => ALU_E_17_DXMUX_6079,
      CE => VCC,
      CLK => ALU_E_17_CLKINV_6061,
      SET => GND,
      RST => GND,
      SSET => ALU_E_17_SRINV_6062,
      SRST => GND,
      O => ALU_E(17)
    );
  ALU_E_mux0001_50_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X45Y176"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => ALU_B(50),
      O => ALU_E_mux0001_50_351_SW0_O_pack_1
    );
  ALU_E_mux0001_50_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X45Y176"
    )
    port map (
      ADR0 => ALU_A(50),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_50_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_50_35
    );
  ALU_E_50 : X_SFF
    generic map(
      LOC => "SLICE_X45Y176",
      INIT => '0'
    )
    port map (
      I => ALU_E_50_DXMUX_6112,
      CE => VCC,
      CLK => ALU_E_50_CLKINV_6094,
      SET => GND,
      RST => GND,
      SSET => ALU_E_50_SRINV_6095,
      SRST => GND,
      O => ALU_E(50)
    );
  ALU_E_mux0001_42_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X44Y172"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(42),
      ADR3 => VCC,
      O => ALU_E_mux0001_42_351_SW0_O_pack_1
    );
  ALU_E_mux0001_42_351 : X_LUT4
    generic map(
      INIT => X"A2A8",
      LOC => "SLICE_X44Y172"
    )
    port map (
      ADR0 => ALU_A(42),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_42_351_SW0_O,
      O => ALU_E_mux0001_42_35
    );
  ALU_E_42 : X_SFF
    generic map(
      LOC => "SLICE_X44Y172",
      INIT => '0'
    )
    port map (
      I => ALU_E_42_DXMUX_6145,
      CE => VCC,
      CLK => ALU_E_42_CLKINV_6127,
      SET => GND,
      RST => GND,
      SSET => ALU_E_42_SRINV_6128,
      SRST => GND,
      O => ALU_E(42)
    );
  ALU_E_mux0001_34_351_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X52Y176"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(34),
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_34_351_SW0_O_pack_1
    );
  ALU_E_mux0001_34_351 : X_LUT4
    generic map(
      INIT => X"B0E0",
      LOC => "SLICE_X52Y176"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(34),
      ADR3 => ALU_E_mux0001_34_351_SW0_O,
      O => ALU_E_mux0001_34_35
    );
  ALU_E_34 : X_SFF
    generic map(
      LOC => "SLICE_X52Y176",
      INIT => '0'
    )
    port map (
      I => ALU_E_34_DXMUX_6178,
      CE => VCC,
      CLK => ALU_E_34_CLKINV_6160,
      SET => GND,
      RST => GND,
      SSET => ALU_E_34_SRINV_6161,
      SRST => GND,
      O => ALU_E(34)
    );
  ALU_E_mux0001_51_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X54Y169"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(51),
      ADR3 => VCC,
      O => ALU_E_mux0001_51_351_SW0_O_pack_1
    );
  ALU_E_mux0001_51_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X54Y169"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_51_351_SW0_O,
      ADR3 => ALU_A(51),
      O => ALU_E_mux0001_51_35
    );
  ALU_E_51 : X_SFF
    generic map(
      LOC => "SLICE_X54Y169",
      INIT => '0'
    )
    port map (
      I => ALU_E_51_DXMUX_6277,
      CE => VCC,
      CLK => ALU_E_51_CLKINV_6259,
      SET => GND,
      RST => GND,
      SSET => ALU_E_51_SRINV_6260,
      SRST => GND,
      O => ALU_E(51)
    );
  ALU_E_mux0001_43_351_SW0 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X44Y177"
    )
    port map (
      ADR0 => ALU_B(43),
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_43_351_SW0_O_pack_1
    );
  ALU_E_mux0001_43_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X44Y177"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_43_351_SW0_O,
      ADR3 => ALU_A(43),
      O => ALU_E_mux0001_43_35
    );
  ALU_E_43 : X_SFF
    generic map(
      LOC => "SLICE_X44Y177",
      INIT => '0'
    )
    port map (
      I => ALU_E_43_DXMUX_6310,
      CE => VCC,
      CLK => ALU_E_43_CLKINV_6292,
      SET => GND,
      RST => GND,
      SSET => ALU_E_43_SRINV_6293,
      SRST => GND,
      O => ALU_E(43)
    );
  ALU_E_mux0001_35_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X46Y179"
    )
    port map (
      ADR0 => ALU_B(35),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_35_351_SW0_O_pack_1
    );
  ALU_E_mux0001_35_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X46Y179"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_35_351_SW0_O,
      ADR3 => ALU_A(35),
      O => ALU_E_mux0001_35_35
    );
  ALU_E_35 : X_SFF
    generic map(
      LOC => "SLICE_X46Y179",
      INIT => '0'
    )
    port map (
      I => ALU_E_35_DXMUX_6343,
      CE => VCC,
      CLK => ALU_E_35_CLKINV_6325,
      SET => GND,
      RST => GND,
      SSET => ALU_E_35_SRINV_6326,
      SRST => GND,
      O => ALU_E(35)
    );
  ALU_E_mux0001_27_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X56Y179"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(27),
      ADR3 => VCC,
      O => ALU_E_mux0001_27_351_SW0_O_pack_1
    );
  ALU_E_mux0001_27_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X56Y179"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_27_351_SW0_O,
      ADR3 => ALU_A(27),
      O => ALU_E_mux0001_27_35
    );
  ALU_E_27 : X_SFF
    generic map(
      LOC => "SLICE_X56Y179",
      INIT => '0'
    )
    port map (
      I => ALU_E_27_DXMUX_6376,
      CE => VCC,
      CLK => ALU_E_27_CLKINV_6358,
      SET => GND,
      RST => GND,
      SSET => ALU_E_27_SRINV_6359,
      SRST => GND,
      O => ALU_E(27)
    );
  ALU_E_mux0001_19_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X61Y187"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(19),
      O => ALU_E_mux0001_19_351_SW0_O_pack_1
    );
  ALU_E_mux0001_19_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X61Y187"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(19),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_19_351_SW0_O,
      O => ALU_E_mux0001_19_35
    );
  ALU_E_19 : X_SFF
    generic map(
      LOC => "SLICE_X61Y187",
      INIT => '0'
    )
    port map (
      I => ALU_E_19_DXMUX_6409,
      CE => VCC,
      CLK => ALU_E_19_CLKINV_6391,
      SET => GND,
      RST => GND,
      SSET => ALU_E_19_SRINV_6392,
      SRST => GND,
      O => ALU_E(19)
    );
  ALU_E_mux0001_60_351_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X52Y178"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(60),
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_60_351_SW0_O_pack_1
    );
  ALU_E_mux0001_60_351 : X_LUT4
    generic map(
      INIT => X"8CC8",
      LOC => "SLICE_X52Y178"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_A(60),
      ADR2 => ALU_fun(0),
      ADR3 => ALU_E_mux0001_60_351_SW0_O,
      O => ALU_E_mux0001_60_35
    );
  ALU_E_60 : X_SFF
    generic map(
      LOC => "SLICE_X52Y178",
      INIT => '0'
    )
    port map (
      I => ALU_E_60_DXMUX_6442,
      CE => VCC,
      CLK => ALU_E_60_CLKINV_6424,
      SET => GND,
      RST => GND,
      SSET => ALU_E_60_SRINV_6425,
      SRST => GND,
      O => ALU_E(60)
    );
  ALU_E_mux0001_52_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X55Y179"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => ALU_B(52),
      O => ALU_E_mux0001_52_351_SW0_O_pack_1
    );
  ALU_E_mux0001_52_351 : X_LUT4
    generic map(
      INIT => X"F060",
      LOC => "SLICE_X55Y179"
    )
    port map (
      ADR0 => ALU_E_mux0001_52_351_SW0_O,
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(52),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_52_35
    );
  ALU_E_mux0001_28_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X55Y183"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_B(28),
      O => ALU_E_mux0001_28_351_SW0_O_pack_1
    );
  ALU_E_mux0001_28_351 : X_LUT4
    generic map(
      INIT => X"F060",
      LOC => "SLICE_X55Y183"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_E_mux0001_28_351_SW0_O,
      ADR2 => ALU_A(28),
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_28_35
    );
  ALU_E_28 : X_SFF
    generic map(
      LOC => "SLICE_X55Y183",
      INIT => '0'
    )
    port map (
      I => ALU_E_28_DXMUX_6574,
      CE => VCC,
      CLK => ALU_E_28_CLKINV_6556,
      SET => GND,
      RST => GND,
      SSET => ALU_E_28_SRINV_6557,
      SRST => GND,
      O => ALU_E(28)
    );
  ALU_E_mux0001_61_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X47Y177"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(61),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_61_351_SW0_O_pack_1
    );
  ALU_E_mux0001_61_351 : X_LUT4
    generic map(
      INIT => X"A2A8",
      LOC => "SLICE_X47Y177"
    )
    port map (
      ADR0 => ALU_A(61),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_61_351_SW0_O,
      O => ALU_E_mux0001_61_35
    );
  ALU_E_61 : X_SFF
    generic map(
      LOC => "SLICE_X47Y177",
      INIT => '0'
    )
    port map (
      I => ALU_E_61_DXMUX_6607,
      CE => VCC,
      CLK => ALU_E_61_CLKINV_6589,
      SET => GND,
      RST => GND,
      SSET => ALU_E_61_SRINV_6590,
      SRST => GND,
      O => ALU_E(61)
    );
  ALU_E_mux0001_53_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X55Y185"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_fun(1),
      ADR3 => ALU_B(53),
      O => ALU_E_mux0001_53_351_SW0_O_pack_1
    );
  ALU_E_mux0001_53_351 : X_LUT4
    generic map(
      INIT => X"A2A8",
      LOC => "SLICE_X55Y185"
    )
    port map (
      ADR0 => ALU_A(53),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_53_351_SW0_O,
      O => ALU_E_mux0001_53_35
    );
  ALU_E_53 : X_SFF
    generic map(
      LOC => "SLICE_X55Y185",
      INIT => '0'
    )
    port map (
      I => ALU_E_53_DXMUX_6640,
      CE => VCC,
      CLK => ALU_E_53_CLKINV_6622,
      SET => GND,
      RST => GND,
      SSET => ALU_E_53_SRINV_6623,
      SRST => GND,
      O => ALU_E(53)
    );
  ALU_E_mux0001_45_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X46Y181"
    )
    port map (
      ADR0 => ALU_B(45),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_45_351_SW0_O_pack_1
    );
  ALU_E_mux0001_45_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X46Y181"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_45_351_SW0_O,
      ADR3 => ALU_A(45),
      O => ALU_E_mux0001_45_35
    );
  ALU_E_45 : X_SFF
    generic map(
      LOC => "SLICE_X46Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_45_DXMUX_6673,
      CE => VCC,
      CLK => ALU_E_45_CLKINV_6655,
      SET => GND,
      RST => GND,
      SSET => ALU_E_45_SRINV_6656,
      SRST => GND,
      O => ALU_E(45)
    );
  ALU_E_mux0001_37_351_SW0 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X53Y181"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ALU_B(37),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_37_351_SW0_O_pack_1
    );
  ALU_E_mux0001_37_351 : X_LUT4
    generic map(
      INIT => X"F600",
      LOC => "SLICE_X53Y181"
    )
    port map (
      ADR0 => ALU_E_mux0001_37_351_SW0_O,
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_A(37),
      O => ALU_E_mux0001_37_35
    );
  ALU_E_37 : X_SFF
    generic map(
      LOC => "SLICE_X53Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_37_DXMUX_6706,
      CE => VCC,
      CLK => ALU_E_37_CLKINV_6688,
      SET => GND,
      RST => GND,
      SSET => ALU_E_37_SRINV_6689,
      SRST => GND,
      O => ALU_E(37)
    );
  ALU_E_mux0001_29_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X53Y176"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => ALU_B(29),
      O => ALU_E_mux0001_29_351_SW0_O_pack_1
    );
  ALU_E_mux0001_29_351 : X_LUT4
    generic map(
      INIT => X"AA28",
      LOC => "SLICE_X53Y176"
    )
    port map (
      ADR0 => ALU_A(29),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_29_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_29_35
    );
  ALU_E_29 : X_SFF
    generic map(
      LOC => "SLICE_X53Y176",
      INIT => '0'
    )
    port map (
      I => ALU_E_29_DXMUX_6739,
      CE => VCC,
      CLK => ALU_E_29_CLKINV_6721,
      SET => GND,
      RST => GND,
      SSET => ALU_E_29_SRINV_6722,
      SRST => GND,
      O => ALU_E(29)
    );
  ALU_E_mux0001_62_351_SW0 : X_LUT4
    generic map(
      INIT => X"BBBB",
      LOC => "SLICE_X45Y175"
    )
    port map (
      ADR0 => ALU_B(62),
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_62_351_SW0_O_pack_1
    );
  ALU_E_mux0001_62_351 : X_LUT4
    generic map(
      INIT => X"B0E0",
      LOC => "SLICE_X45Y175"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_A(62),
      ADR3 => ALU_E_mux0001_62_351_SW0_O,
      O => ALU_E_mux0001_62_35
    );
  ALU_E_46 : X_SFF
    generic map(
      LOC => "SLICE_X46Y180",
      INIT => '0'
    )
    port map (
      I => ALU_E_46_DXMUX_6838,
      CE => VCC,
      CLK => ALU_E_46_CLKINV_6820,
      SET => GND,
      RST => GND,
      SSET => ALU_E_46_SRINV_6821,
      SRST => GND,
      O => ALU_E(46)
    );
  ALU_E_mux0001_38_351_SW0 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X54Y181"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(38),
      ADR3 => VCC,
      O => ALU_E_mux0001_38_351_SW0_O_pack_1
    );
  ALU_E_mux0001_38_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X54Y181"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_38_351_SW0_O,
      ADR3 => ALU_A(38),
      O => ALU_E_mux0001_38_35
    );
  ALU_E_38 : X_SFF
    generic map(
      LOC => "SLICE_X54Y181",
      INIT => '0'
    )
    port map (
      I => ALU_E_38_DXMUX_6871,
      CE => VCC,
      CLK => ALU_E_38_CLKINV_6853,
      SET => GND,
      RST => GND,
      SSET => ALU_E_38_SRINV_6854,
      SRST => GND,
      O => ALU_E(38)
    );
  ALU_E_mux0001_63_351_SW0 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X43Y173"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(63),
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_63_351_SW0_O_pack_1
    );
  ALU_E_mux0001_63_351 : X_LUT4
    generic map(
      INIT => X"C4C8",
      LOC => "SLICE_X43Y173"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(63),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_63_351_SW0_O,
      O => ALU_E_mux0001_63_35
    );
  ALU_E_63 : X_SFF
    generic map(
      LOC => "SLICE_X43Y173",
      INIT => '0'
    )
    port map (
      I => ALU_E_63_DXMUX_6904,
      CE => VCC,
      CLK => ALU_E_63_CLKINV_6886,
      SET => GND,
      RST => GND,
      SSET => ALU_E_63_SRINV_6887,
      SRST => GND,
      O => ALU_E(63)
    );
  ALU_E_mux0001_55_351_SW0 : X_LUT4
    generic map(
      INIT => X"AAFF",
      LOC => "SLICE_X52Y183"
    )
    port map (
      ADR0 => ALU_B(55),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_55_351_SW0_O_pack_1
    );
  ALU_E_mux0001_55_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X52Y183"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_55_351_SW0_O,
      ADR3 => ALU_A(55),
      O => ALU_E_mux0001_55_35
    );
  ALU_E_55 : X_SFF
    generic map(
      LOC => "SLICE_X52Y183",
      INIT => '0'
    )
    port map (
      I => ALU_E_55_DXMUX_6937,
      CE => VCC,
      CLK => ALU_E_55_CLKINV_6919,
      SET => GND,
      RST => GND,
      SSET => ALU_E_55_SRINV_6920,
      SRST => GND,
      O => ALU_E(55)
    );
  ALU_E_mux0001_47_351_SW0 : X_LUT4
    generic map(
      INIT => X"F5F5",
      LOC => "SLICE_X51Y166"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => VCC,
      ADR2 => ALU_B(47),
      ADR3 => VCC,
      O => ALU_E_mux0001_47_351_SW0_O_pack_1
    );
  ALU_E_mux0001_47_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X51Y166"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(47),
      ADR2 => ALU_E_mux0001_47_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_47_35
    );
  ALU_E_47 : X_SFF
    generic map(
      LOC => "SLICE_X51Y166",
      INIT => '0'
    )
    port map (
      I => ALU_E_47_DXMUX_6970,
      CE => VCC,
      CLK => ALU_E_47_CLKINV_6952,
      SET => GND,
      RST => GND,
      SSET => ALU_E_47_SRINV_6953,
      SRST => GND,
      O => ALU_E(47)
    );
  ALU_E_mux0001_39_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X65Y184"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => ALU_B(39),
      O => ALU_E_mux0001_39_351_SW0_O_pack_1
    );
  ALU_E_mux0001_39_351 : X_LUT4
    generic map(
      INIT => X"DE00",
      LOC => "SLICE_X65Y184"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_fun(2),
      ADR2 => ALU_E_mux0001_39_351_SW0_O,
      ADR3 => ALU_A(39),
      O => ALU_E_mux0001_39_35
    );
  ALU_E_39 : X_SFF
    generic map(
      LOC => "SLICE_X65Y184",
      INIT => '0'
    )
    port map (
      I => ALU_E_39_DXMUX_7003,
      CE => VCC,
      CLK => ALU_E_39_CLKINV_6985,
      SET => GND,
      RST => GND,
      SSET => ALU_E_39_SRINV_6986,
      SRST => GND,
      O => ALU_E(39)
    );
  ALU_E_mux0001_56_351_SW0 : X_LUT4
    generic map(
      INIT => X"FF33",
      LOC => "SLICE_X53Y179"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_fun(1),
      ADR2 => VCC,
      ADR3 => ALU_B(56),
      O => ALU_E_mux0001_56_351_SW0_O_pack_1
    );
  ALU_E_mux0001_56_351 : X_LUT4
    generic map(
      INIT => X"CC48",
      LOC => "SLICE_X53Y179"
    )
    port map (
      ADR0 => ALU_fun(0),
      ADR1 => ALU_A(56),
      ADR2 => ALU_E_mux0001_56_351_SW0_O,
      ADR3 => ALU_fun(2),
      O => ALU_E_mux0001_56_35
    );
  ALU_E_56 : X_SFF
    generic map(
      LOC => "SLICE_X53Y179",
      INIT => '0'
    )
    port map (
      I => ALU_E_56_DXMUX_7036,
      CE => VCC,
      CLK => ALU_E_56_CLKINV_7018,
      SET => GND,
      RST => GND,
      SSET => ALU_E_56_SRINV_7019,
      SRST => GND,
      O => ALU_E(56)
    );
  ALU_E_mux0001_48_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X51Y167"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(48),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_48_351_SW0_O_pack_1
    );
  ALU_E_49 : X_SFF
    generic map(
      LOC => "SLICE_X43Y183",
      INIT => '0'
    )
    port map (
      I => ALU_E_49_DXMUX_7135,
      CE => VCC,
      CLK => ALU_E_49_CLKINV_7117,
      SET => GND,
      RST => GND,
      SSET => ALU_E_49_SRINV_7118,
      SRST => GND,
      O => ALU_E(49)
    );
  ALU_E_mux0001_58_351_SW0 : X_LUT4
    generic map(
      INIT => X"CFCF",
      LOC => "SLICE_X47Y175"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ALU_B(58),
      ADR2 => ALU_fun(1),
      ADR3 => VCC,
      O => ALU_E_mux0001_58_351_SW0_O_pack_1
    );
  ALU_E_mux0001_58_351 : X_LUT4
    generic map(
      INIT => X"A2A8",
      LOC => "SLICE_X47Y175"
    )
    port map (
      ADR0 => ALU_A(58),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_fun(2),
      ADR3 => ALU_E_mux0001_58_351_SW0_O,
      O => ALU_E_mux0001_58_35
    );
  ALU_E_58 : X_SFF
    generic map(
      LOC => "SLICE_X47Y175",
      INIT => '0'
    )
    port map (
      I => ALU_E_58_DXMUX_7168,
      CE => VCC,
      CLK => ALU_E_58_CLKINV_7150,
      SET => GND,
      RST => GND,
      SSET => ALU_E_58_SRINV_7151,
      SRST => GND,
      O => ALU_E(58)
    );
  ALU_E_mux0001_59_351_SW0 : X_LUT4
    generic map(
      INIT => X"DDDD",
      LOC => "SLICE_X45Y174"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(59),
      ADR2 => VCC,
      ADR3 => VCC,
      O => ALU_E_mux0001_59_351_SW0_O_pack_1
    );
  ALU_E_mux0001_59_351 : X_LUT4
    generic map(
      INIT => X"BE00",
      LOC => "SLICE_X45Y174"
    )
    port map (
      ADR0 => ALU_fun(2),
      ADR1 => ALU_fun(0),
      ADR2 => ALU_E_mux0001_59_351_SW0_O,
      ADR3 => ALU_A(59),
      O => ALU_E_mux0001_59_35
    );
  ALU_E_59 : X_SFF
    generic map(
      LOC => "SLICE_X45Y174",
      INIT => '0'
    )
    port map (
      I => ALU_E_59_DXMUX_7201,
      CE => VCC,
      CLK => ALU_E_59_CLKINV_7183,
      SET => GND,
      RST => GND,
      SSET => ALU_E_59_SRINV_7184,
      SRST => GND,
      O => ALU_E(59)
    );
  ALU_A_mux0001_10_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X76Y207"
    )
    port map (
      ADR0 => valC_10_IBUF_2800,
      ADR1 => valA_10_IBUF_2728,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_10_1_7224
    );
  ALU_A_10 : X_SFF
    generic map(
      LOC => "SLICE_X76Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_11_DYMUX_7227,
      CE => VCC,
      CLK => ALU_A_11_CLKINV_7218,
      SET => GND,
      RST => GND,
      SSET => ALU_A_11_SRINV_7219,
      SRST => GND,
      O => ALU_A(10)
    );
  ALU_A_mux0001_11_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X76Y207"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valC_11_IBUF_2807,
      ADR2 => ALU_A_or0001,
      ADR3 => valA_11_IBUF_2729,
      O => ALU_A_mux0001_11_1_7236
    );
  ALU_A_11 : X_SFF
    generic map(
      LOC => "SLICE_X76Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_11_DXMUX_7239,
      CE => VCC,
      CLK => ALU_A_11_CLKINV_7218,
      SET => GND,
      RST => GND,
      SSET => ALU_A_11_SRINV_7219,
      SRST => GND,
      O => ALU_A(11)
    );
  ALU_A_mux0001_20_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X48Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valC_20_IBUF_2814,
      ADR2 => valA_20_IBUF_2730,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_20_1_7262
    );
  ALU_A_20 : X_SFF
    generic map(
      LOC => "SLICE_X48Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_21_DYMUX_7265,
      CE => VCC,
      CLK => ALU_A_21_CLKINV_7256,
      SET => GND,
      RST => GND,
      SSET => ALU_A_21_SRINV_7257,
      SRST => GND,
      O => ALU_A(20)
    );
  ALU_A_mux0001_21_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X48Y206"
    )
    port map (
      ADR0 => valA_21_IBUF_2732,
      ADR1 => ALU_A_or0000,
      ADR2 => valC_21_IBUF_2821,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_21_1_7274
    );
  ALU_A_21 : X_SFF
    generic map(
      LOC => "SLICE_X48Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_21_DXMUX_7277,
      CE => VCC,
      CLK => ALU_A_21_CLKINV_7256,
      SET => GND,
      RST => GND,
      SSET => ALU_A_21_SRINV_7257,
      SRST => GND,
      O => ALU_A(21)
    );
  ALU_A_mux0001_12_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X61Y206"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_12_IBUF_2731,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_12_IBUF_2815,
      O => ALU_A_mux0001_12_1_7300
    );
  ALU_A_12 : X_SFF
    generic map(
      LOC => "SLICE_X61Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_13_DYMUX_7303,
      CE => VCC,
      CLK => ALU_A_13_CLKINV_7294,
      SET => GND,
      RST => GND,
      SSET => ALU_A_13_SRINV_7295,
      SRST => GND,
      O => ALU_A(12)
    );
  ALU_A_mux0001_13_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X61Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valC_13_IBUF_2822,
      ADR3 => valA_13_IBUF_2733,
      O => ALU_A_mux0001_13_1_7312
    );
  ALU_A_13 : X_SFF
    generic map(
      LOC => "SLICE_X61Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_13_DXMUX_7315,
      CE => VCC,
      CLK => ALU_A_13_CLKINV_7294,
      SET => GND,
      RST => GND,
      SSET => ALU_A_13_SRINV_7295,
      SRST => GND,
      O => ALU_A(13)
    );
  ALU_A_mux0001_30_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X52Y203"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valC_30_IBUF_2828,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_30_IBUF_2734,
      O => ALU_A_mux0001_30_1_7338
    );
  ALU_A_30 : X_SFF
    generic map(
      LOC => "SLICE_X52Y203",
      INIT => '0'
    )
    port map (
      I => ALU_A_31_DYMUX_7341,
      CE => VCC,
      CLK => ALU_A_31_CLKINV_7332,
      SET => GND,
      RST => GND,
      SSET => ALU_A_31_SRINV_7333,
      SRST => GND,
      O => ALU_A(30)
    );
  ALU_A_15 : X_SFF
    generic map(
      LOC => "SLICE_X67Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_15_DXMUX_7429,
      CE => VCC,
      CLK => ALU_A_15_CLKINV_7408,
      SET => GND,
      RST => GND,
      SSET => ALU_A_15_SRINV_7409,
      SRST => GND,
      O => ALU_A(15)
    );
  ALU_A_mux0001_40_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X29Y194"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valC_40_IBUF_2842,
      ADR3 => valA_40_IBUF_2740,
      O => ALU_A_mux0001_40_1_7452
    );
  ALU_A_40 : X_SFF
    generic map(
      LOC => "SLICE_X29Y194",
      INIT => '0'
    )
    port map (
      I => ALU_A_41_DYMUX_7455,
      CE => VCC,
      CLK => ALU_A_41_CLKINV_7446,
      SET => GND,
      RST => GND,
      SSET => ALU_A_41_SRINV_7447,
      SRST => GND,
      O => ALU_A(40)
    );
  ALU_A_mux0001_41_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X29Y194"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valC_41_IBUF_2848,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_41_IBUF_2744,
      O => ALU_A_mux0001_41_1_7464
    );
  ALU_A_41 : X_SFF
    generic map(
      LOC => "SLICE_X29Y194",
      INIT => '0'
    )
    port map (
      I => ALU_A_41_DXMUX_7467,
      CE => VCC,
      CLK => ALU_A_41_CLKINV_7446,
      SET => GND,
      RST => GND,
      SSET => ALU_A_41_SRINV_7447,
      SRST => GND,
      O => ALU_A(41)
    );
  ALU_A_mux0001_32_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y198"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_32_IBUF_2741,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_32_IBUF_2843,
      O => ALU_A_mux0001_32_1_7490
    );
  ALU_A_32 : X_SFF
    generic map(
      LOC => "SLICE_X38Y198",
      INIT => '0'
    )
    port map (
      I => ALU_A_33_DYMUX_7493,
      CE => VCC,
      CLK => ALU_A_33_CLKINV_7484,
      SET => GND,
      RST => GND,
      SSET => ALU_A_33_SRINV_7485,
      SRST => GND,
      O => ALU_A(32)
    );
  ALU_A_mux0001_33_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X38Y198"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_33_IBUF_2745,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_33_IBUF_2849,
      O => ALU_A_mux0001_33_1_7502
    );
  ALU_A_33 : X_SFF
    generic map(
      LOC => "SLICE_X38Y198",
      INIT => '0'
    )
    port map (
      I => ALU_A_33_DXMUX_7505,
      CE => VCC,
      CLK => ALU_A_33_CLKINV_7484,
      SET => GND,
      RST => GND,
      SSET => ALU_A_33_SRINV_7485,
      SRST => GND,
      O => ALU_A(33)
    );
  ALU_A_mux0001_24_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X45Y204"
    )
    port map (
      ADR0 => valA_24_IBUF_2742,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_24_IBUF_2844,
      O => ALU_A_mux0001_24_1_7528
    );
  ALU_A_24 : X_SFF
    generic map(
      LOC => "SLICE_X45Y204",
      INIT => '0'
    )
    port map (
      I => ALU_A_25_DYMUX_7531,
      CE => VCC,
      CLK => ALU_A_25_CLKINV_7522,
      SET => GND,
      RST => GND,
      SSET => ALU_A_25_SRINV_7523,
      SRST => GND,
      O => ALU_A(24)
    );
  ALU_A_mux0001_25_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X45Y204"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valC_25_IBUF_2850,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_25_IBUF_2746,
      O => ALU_A_mux0001_25_1_7540
    );
  ALU_A_25 : X_SFF
    generic map(
      LOC => "SLICE_X45Y204",
      INIT => '0'
    )
    port map (
      I => ALU_A_25_DXMUX_7543,
      CE => VCC,
      CLK => ALU_A_25_CLKINV_7522,
      SET => GND,
      RST => GND,
      SSET => ALU_A_25_SRINV_7523,
      SRST => GND,
      O => ALU_A(25)
    );
  ALU_A_mux0001_16_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y204"
    )
    port map (
      ADR0 => valA_16_IBUF_2743,
      ADR1 => valC_16_IBUF_2845,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_16_1_7566
    );
  ALU_A_16 : X_SFF
    generic map(
      LOC => "SLICE_X67Y204",
      INIT => '0'
    )
    port map (
      I => ALU_A_17_DYMUX_7569,
      CE => VCC,
      CLK => ALU_A_17_CLKINV_7560,
      SET => GND,
      RST => GND,
      SSET => ALU_A_17_SRINV_7561,
      SRST => GND,
      O => ALU_A(16)
    );
  ALU_A_mux0001_17_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X67Y204"
    )
    port map (
      ADR0 => valC_17_IBUF_2851,
      ADR1 => valA_17_IBUF_2747,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_17_1_7578
    );
  ALU_A_17 : X_SFF
    generic map(
      LOC => "SLICE_X67Y204",
      INIT => '0'
    )
    port map (
      I => ALU_A_17_DXMUX_7581,
      CE => VCC,
      CLK => ALU_A_17_CLKINV_7560,
      SET => GND,
      RST => GND,
      SSET => ALU_A_17_SRINV_7561,
      SRST => GND,
      O => ALU_A(17)
    );
  ALU_A_mux0001_50_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X18Y185"
    )
    port map (
      ADR0 => valA_50_IBUF_2749,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_50_IBUF_2854,
      O => ALU_A_mux0001_50_1_7604
    );
  ALU_A_50 : X_SFF
    generic map(
      LOC => "SLICE_X18Y185",
      INIT => '0'
    )
    port map (
      I => ALU_A_51_DYMUX_7607,
      CE => VCC,
      CLK => ALU_A_51_CLKINV_7598,
      SET => GND,
      RST => GND,
      SSET => ALU_A_51_SRINV_7599,
      SRST => GND,
      O => ALU_A(50)
    );
  ALU_A_mux0001_51_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X18Y185"
    )
    port map (
      ADR0 => valC_51_IBUF_2860,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_51_IBUF_2755,
      O => ALU_A_mux0001_51_1_7616
    );
  ALU_A_51 : X_SFF
    generic map(
      LOC => "SLICE_X18Y185",
      INIT => '0'
    )
    port map (
      I => ALU_A_51_DXMUX_7619,
      CE => VCC,
      CLK => ALU_A_51_CLKINV_7598,
      SET => GND,
      RST => GND,
      SSET => ALU_A_51_SRINV_7599,
      SRST => GND,
      O => ALU_A(51)
    );
  ALU_A_mux0001_42_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X26Y198"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_42_IBUF_2750,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_42_IBUF_2855,
      O => ALU_A_mux0001_42_1_7642
    );
  ALU_A_27 : X_SFF
    generic map(
      LOC => "SLICE_X45Y202",
      INIT => '0'
    )
    port map (
      I => ALU_A_27_DXMUX_7733,
      CE => VCC,
      CLK => ALU_A_27_CLKINV_7712,
      SET => GND,
      RST => GND,
      SSET => ALU_A_27_SRINV_7713,
      SRST => GND,
      O => ALU_A(27)
    );
  ALU_A_mux0001_18_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X49Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valC_18_IBUF_2858,
      ADR3 => valA_18_IBUF_2753,
      O => ALU_A_mux0001_18_1_7756
    );
  ALU_A_18 : X_SFF
    generic map(
      LOC => "SLICE_X49Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_19_DYMUX_7759,
      CE => VCC,
      CLK => ALU_A_19_CLKINV_7750,
      SET => GND,
      RST => GND,
      SSET => ALU_A_19_SRINV_7751,
      SRST => GND,
      O => ALU_A(18)
    );
  ALU_A_mux0001_19_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X49Y206"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_19_IBUF_2759,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_19_IBUF_2864,
      O => ALU_A_mux0001_19_1_7768
    );
  ALU_A_19 : X_SFF
    generic map(
      LOC => "SLICE_X49Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_19_DXMUX_7771,
      CE => VCC,
      CLK => ALU_A_19_CLKINV_7750,
      SET => GND,
      RST => GND,
      SSET => ALU_A_19_SRINV_7751,
      SRST => GND,
      O => ALU_A(19)
    );
  ALU_A_mux0001_60_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X17Y170"
    )
    port map (
      ADR0 => valA_60_IBUF_2762,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_60_IBUF_2866,
      O => ALU_A_mux0001_60_1_7794
    );
  ALU_A_60 : X_SFF
    generic map(
      LOC => "SLICE_X17Y170",
      INIT => '0'
    )
    port map (
      I => ALU_A_61_DYMUX_7797,
      CE => VCC,
      CLK => ALU_A_61_CLKINV_7788,
      SET => GND,
      RST => GND,
      SSET => ALU_A_61_SRINV_7789,
      SRST => GND,
      O => ALU_A(60)
    );
  ALU_A_mux0001_61_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X17Y170"
    )
    port map (
      ADR0 => valC_61_IBUF_2871,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_61_IBUF_2769,
      O => ALU_A_mux0001_61_1_7806
    );
  ALU_A_61 : X_SFF
    generic map(
      LOC => "SLICE_X17Y170",
      INIT => '0'
    )
    port map (
      I => ALU_A_61_DXMUX_7809,
      CE => VCC,
      CLK => ALU_A_61_CLKINV_7788,
      SET => GND,
      RST => GND,
      SSET => ALU_A_61_SRINV_7789,
      SRST => GND,
      O => ALU_A(61)
    );
  ALU_A_mux0001_52_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X26Y207"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_52_IBUF_2763,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_52_IBUF_2867,
      O => ALU_A_mux0001_52_1_7832
    );
  ALU_A_52 : X_SFF
    generic map(
      LOC => "SLICE_X26Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_53_DYMUX_7835,
      CE => VCC,
      CLK => ALU_A_53_CLKINV_7826,
      SET => GND,
      RST => GND,
      SSET => ALU_A_53_SRINV_7827,
      SRST => GND,
      O => ALU_A(52)
    );
  ALU_A_mux0001_53_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X26Y207"
    )
    port map (
      ADR0 => valC_53_IBUF_2872,
      ADR1 => valA_53_IBUF_2770,
      ADR2 => ALU_A_or0001,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_53_1_7844
    );
  ALU_A_53 : X_SFF
    generic map(
      LOC => "SLICE_X26Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_53_DXMUX_7847,
      CE => VCC,
      CLK => ALU_A_53_CLKINV_7826,
      SET => GND,
      RST => GND,
      SSET => ALU_A_53_SRINV_7827,
      SRST => GND,
      O => ALU_A(53)
    );
  ALU_A_mux0001_44_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X31Y184"
    )
    port map (
      ADR0 => valA_44_IBUF_2764,
      ADR1 => valC_44_IBUF_2868,
      ADR2 => ALU_A_or0001,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_44_1_7870
    );
  ALU_A_44 : X_SFF
    generic map(
      LOC => "SLICE_X31Y184",
      INIT => '0'
    )
    port map (
      I => ALU_A_45_DYMUX_7873,
      CE => VCC,
      CLK => ALU_A_45_CLKINV_7864,
      SET => GND,
      RST => GND,
      SSET => ALU_A_45_SRINV_7865,
      SRST => GND,
      O => ALU_A(44)
    );
  ALU_A_mux0001_45_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X31Y184"
    )
    port map (
      ADR0 => valA_45_IBUF_2771,
      ADR1 => valC_45_IBUF_2873,
      ADR2 => ALU_A_or0001,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_45_1_7882
    );
  ALU_A_45 : X_SFF
    generic map(
      LOC => "SLICE_X31Y184",
      INIT => '0'
    )
    port map (
      I => ALU_A_45_DXMUX_7885,
      CE => VCC,
      CLK => ALU_A_45_CLKINV_7864,
      SET => GND,
      RST => GND,
      SSET => ALU_A_45_SRINV_7865,
      SRST => GND,
      O => ALU_A(45)
    );
  ALU_A_mux0001_36_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X36Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valA_36_IBUF_2765,
      ADR2 => ALU_A_or0001,
      ADR3 => valC_36_IBUF_2869,
      O => ALU_A_mux0001_36_1_7908
    );
  ALU_A_36 : X_SFF
    generic map(
      LOC => "SLICE_X36Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_37_DYMUX_7911,
      CE => VCC,
      CLK => ALU_A_37_CLKINV_7902,
      SET => GND,
      RST => GND,
      SSET => ALU_A_37_SRINV_7903,
      SRST => GND,
      O => ALU_A(36)
    );
  ALU_A_mux0001_37_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X36Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => valC_37_IBUF_2874,
      ADR2 => valA_37_IBUF_2772,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_37_1_7920
    );
  ALU_A_37 : X_SFF
    generic map(
      LOC => "SLICE_X36Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_37_DXMUX_7923,
      CE => VCC,
      CLK => ALU_A_37_CLKINV_7902,
      SET => GND,
      RST => GND,
      SSET => ALU_A_37_SRINV_7903,
      SRST => GND,
      O => ALU_A(37)
    );
  ALU_A_mux0001_28_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X40Y202"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valC_28_IBUF_2870,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_28_IBUF_2766,
      O => ALU_A_mux0001_28_1_7946
    );
  ALU_A_mux0001_55_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X53Y182"
    )
    port map (
      ADR0 => valA_55_IBUF_2785,
      ADR1 => ALU_A_or0001,
      ADR2 => valC_55_IBUF_2881,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_55_1_8034
    );
  ALU_A_55 : X_SFF
    generic map(
      LOC => "SLICE_X53Y182",
      INIT => '0'
    )
    port map (
      I => ALU_A_55_DXMUX_8037,
      CE => VCC,
      CLK => ALU_A_55_CLKINV_8016,
      SET => GND,
      RST => GND,
      SSET => ALU_A_55_SRINV_8017,
      SRST => GND,
      O => ALU_A(55)
    );
  ALU_A_mux0001_46_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X23Y176"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => ALU_A_or0000,
      ADR2 => valC_46_IBUF_2878,
      ADR3 => valA_46_IBUF_2779,
      O => ALU_A_mux0001_46_1_8060
    );
  ALU_A_46 : X_SFF
    generic map(
      LOC => "SLICE_X23Y176",
      INIT => '0'
    )
    port map (
      I => ALU_A_47_DYMUX_8063,
      CE => VCC,
      CLK => ALU_A_47_CLKINV_8054,
      SET => GND,
      RST => GND,
      SSET => ALU_A_47_SRINV_8055,
      SRST => GND,
      O => ALU_A(46)
    );
  ALU_A_mux0001_47_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X23Y176"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => ALU_A_or0000,
      ADR2 => valC_47_IBUF_2882,
      ADR3 => valA_47_IBUF_2786,
      O => ALU_A_mux0001_47_1_8072
    );
  ALU_A_47 : X_SFF
    generic map(
      LOC => "SLICE_X23Y176",
      INIT => '0'
    )
    port map (
      I => ALU_A_47_DXMUX_8075,
      CE => VCC,
      CLK => ALU_A_47_CLKINV_8054,
      SET => GND,
      RST => GND,
      SSET => ALU_A_47_SRINV_8055,
      SRST => GND,
      O => ALU_A(47)
    );
  ALU_A_mux0001_38_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X34Y206"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valC_38_IBUF_2879,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_38_IBUF_2780,
      O => ALU_A_mux0001_38_1_8098
    );
  ALU_A_38 : X_SFF
    generic map(
      LOC => "SLICE_X34Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_39_DYMUX_8101,
      CE => VCC,
      CLK => ALU_A_39_CLKINV_8092,
      SET => GND,
      RST => GND,
      SSET => ALU_A_39_SRINV_8093,
      SRST => GND,
      O => ALU_A(38)
    );
  ALU_A_mux0001_39_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X34Y206"
    )
    port map (
      ADR0 => valA_39_IBUF_2787,
      ADR1 => valC_39_IBUF_2883,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001_39_1_8110
    );
  ALU_A_39 : X_SFF
    generic map(
      LOC => "SLICE_X34Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_39_DXMUX_8113,
      CE => VCC,
      CLK => ALU_A_39_CLKINV_8092,
      SET => GND,
      RST => GND,
      SSET => ALU_A_39_SRINV_8093,
      SRST => GND,
      O => ALU_A(39)
    );
  ALU_A_mux0001_56_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X20Y173"
    )
    port map (
      ADR0 => valC_56_IBUF_2884,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_56_IBUF_2792,
      O => ALU_A_mux0001_56_1_8136
    );
  ALU_A_56 : X_SFF
    generic map(
      LOC => "SLICE_X20Y173",
      INIT => '0'
    )
    port map (
      I => ALU_A_57_DYMUX_8139,
      CE => VCC,
      CLK => ALU_A_57_CLKINV_8130,
      SET => GND,
      RST => GND,
      SSET => ALU_A_57_SRINV_8131,
      SRST => GND,
      O => ALU_A(56)
    );
  ALU_A_mux0001_57_1 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X20Y173"
    )
    port map (
      ADR0 => valC_57_IBUF_2886,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valA_57_IBUF_2798,
      O => ALU_A_mux0001_57_1_8148
    );
  ALU_A_57 : X_SFF
    generic map(
      LOC => "SLICE_X20Y173",
      INIT => '0'
    )
    port map (
      I => ALU_A_57_DXMUX_8151,
      CE => VCC,
      CLK => ALU_A_57_CLKINV_8130,
      SET => GND,
      RST => GND,
      SSET => ALU_A_57_SRINV_8131,
      SRST => GND,
      O => ALU_A(57)
    );
  ALU_A_mux0001_48_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X19Y183"
    )
    port map (
      ADR0 => valC_48_IBUF_2885,
      ADR1 => valA_48_IBUF_2793,
      ADR2 => ALU_A_or0001,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_48_1_8174
    );
  ALU_A_48 : X_SFF
    generic map(
      LOC => "SLICE_X19Y183",
      INIT => '0'
    )
    port map (
      I => ALU_A_49_DYMUX_8177,
      CE => VCC,
      CLK => ALU_A_49_CLKINV_8168,
      SET => GND,
      RST => GND,
      SSET => ALU_A_49_SRINV_8169,
      SRST => GND,
      O => ALU_A(48)
    );
  ALU_A_mux0001_49_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X19Y183"
    )
    port map (
      ADR0 => valC_49_IBUF_2887,
      ADR1 => ALU_A_or0000,
      ADR2 => ALU_A_or0001,
      ADR3 => valA_49_IBUF_2799,
      O => ALU_A_mux0001_49_1_8186
    );
  ALU_A_49 : X_SFF
    generic map(
      LOC => "SLICE_X19Y183",
      INIT => '0'
    )
    port map (
      I => ALU_A_49_DXMUX_8189,
      CE => VCC,
      CLK => ALU_A_49_CLKINV_8168,
      SET => GND,
      RST => GND,
      SSET => ALU_A_49_SRINV_8169,
      SRST => GND,
      O => ALU_A(49)
    );
  ALU_A_mux0001_58_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X17Y172"
    )
    port map (
      ADR0 => valC_58_IBUF_2889,
      ADR1 => ALU_A_or0000,
      ADR2 => ALU_A_or0001,
      ADR3 => valA_58_IBUF_2806,
      O => ALU_A_mux0001_58_1_8212
    );
  ALU_A_58 : X_SFF
    generic map(
      LOC => "SLICE_X17Y172",
      INIT => '0'
    )
    port map (
      I => ALU_A_59_DYMUX_8215,
      CE => VCC,
      CLK => ALU_A_59_CLKINV_8206,
      SET => GND,
      RST => GND,
      SSET => ALU_A_59_SRINV_8207,
      SRST => GND,
      O => ALU_A(58)
    );
  ALU_A_mux0001_59_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X17Y172"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => ALU_A_or0000,
      ADR2 => valC_59_IBUF_2891,
      ADR3 => valA_59_IBUF_2813,
      O => ALU_A_mux0001_59_1_8224
    );
  ALU_A_59 : X_SFF
    generic map(
      LOC => "SLICE_X17Y172",
      INIT => '0'
    )
    port map (
      I => ALU_A_59_DXMUX_8227,
      CE => VCC,
      CLK => ALU_A_59_CLKINV_8206,
      SET => GND,
      RST => GND,
      SSET => ALU_A_59_SRINV_8207,
      SRST => GND,
      O => ALU_A(59)
    );
  ALU_A_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X73Y199"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_0_IBUF_2684,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_0_IBUF_2696,
      O => ALU_A_mux0001(0)
    );
  ALU_A_mux0001_6_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X59Y206"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valA_6_IBUF_2693,
      ADR3 => valC_6_IBUF_2710,
      O => ALU_A_mux0001_6_1_8350
    );
  ALU_A_6 : X_SFF
    generic map(
      LOC => "SLICE_X59Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_7_DYMUX_8353,
      CE => VCC,
      CLK => ALU_A_7_CLKINV_8344,
      SET => GND,
      RST => GND,
      SSET => ALU_A_7_SRINV_8345,
      SRST => GND,
      O => ALU_A(6)
    );
  ALU_A_mux0001_7_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X59Y206"
    )
    port map (
      ADR0 => ALU_A_or0001,
      ADR1 => valA_7_IBUF_2695,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_7_IBUF_2711,
      O => ALU_A_mux0001_7_1_8362
    );
  ALU_A_7 : X_SFF
    generic map(
      LOC => "SLICE_X59Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_7_DXMUX_8365,
      CE => VCC,
      CLK => ALU_A_7_CLKINV_8344,
      SET => GND,
      RST => GND,
      SSET => ALU_A_7_SRINV_8345,
      SRST => GND,
      O => ALU_A(7)
    );
  ALU_A_mux0001_8_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X57Y207"
    )
    port map (
      ADR0 => valA_8_IBUF_2698,
      ADR1 => ALU_A_or0001,
      ADR2 => ALU_A_or0000,
      ADR3 => valC_8_IBUF_2713,
      O => ALU_A_mux0001_8_1_8388
    );
  ALU_A_8 : X_SFF
    generic map(
      LOC => "SLICE_X57Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_9_DYMUX_8391,
      CE => VCC,
      CLK => ALU_A_9_CLKINV_8382,
      SET => GND,
      RST => GND,
      SSET => ALU_A_9_SRINV_8383,
      SRST => GND,
      O => ALU_A(8)
    );
  ALU_A_mux0001_9_1 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X57Y207"
    )
    port map (
      ADR0 => ALU_A_or0000,
      ADR1 => ALU_A_or0001,
      ADR2 => valA_9_IBUF_2701,
      ADR3 => valC_9_IBUF_2715,
      O => ALU_A_mux0001_9_1_8400
    );
  ALU_A_9 : X_SFF
    generic map(
      LOC => "SLICE_X57Y207",
      INIT => '0'
    )
    port map (
      I => ALU_A_9_DXMUX_8403,
      CE => VCC,
      CLK => ALU_A_9_CLKINV_8382,
      SET => GND,
      RST => GND,
      SSET => ALU_A_9_SRINV_8383,
      SRST => GND,
      O => ALU_A(9)
    );
  ALU_E_mux0001_0_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X67Y193"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_A(0),
      ADR2 => N132,
      ADR3 => ALU_B(0),
      O => ALU_E_mux0001_0_32_8422
    );
  ALU_E_mux0001_10_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X67Y193"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => N132,
      ADR2 => ALU_B(10),
      ADR3 => ALU_A(10),
      O => ALU_E_mux0001_10_32_8429
    );
  ALU_E_mux0001_1_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X72Y191"
    )
    port map (
      ADR0 => ALU_B(1),
      ADR1 => ALU_A(1),
      ADR2 => N132,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_1_32_8446
    );
  ALU_E_mux0001_11_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X72Y191"
    )
    port map (
      ADR0 => ALU_A(11),
      ADR1 => ALU_B(11),
      ADR2 => N132,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_11_32_8453
    );
  ALU_E_mux0001_2_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X60Y185"
    )
    port map (
      ADR0 => ALU_A(2),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_B(2),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_2_32_8470
    );
  ALU_E_mux0001_24_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X60Y185"
    )
    port map (
      ADR0 => ALU_B(24),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_A(24),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_24_32_8477
    );
  ALU_E_mux0001_3_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X64Y185"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(3),
      ADR2 => ALU_A(3),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_3_32_8494
    );
  ALU_E_mux0001_39_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X64Y185"
    )
    port map (
      ADR0 => ALU_A(39),
      ADR1 => ALU_B(39),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_39_32_8501
    );
  ALU_E_mux0001_4_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X56Y180"
    )
    port map (
      ADR0 => ALU_B(4),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_A(4),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_4_32_8518
    );
  ALU_E_mux0001_40_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X56Y180"
    )
    port map (
      ADR0 => ALU_B(40),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_A(40),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_40_32_8525
    );
  ALU_E_mux0001_5_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X54Y184"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_312,
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(5),
      ADR3 => ALU_A(5),
      O => ALU_E_mux0001_5_32_8542
    );
  ALU_E_mux0001_53_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X54Y184"
    )
    port map (
      ADR0 => ALU_B(53),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_A(53),
      O => ALU_E_mux0001_53_32_8549
    );
  ALU_fun_0_1 : X_SFF
    generic map(
      LOC => "SLICE_X56Y186",
      INIT => '0'
    )
    port map (
      I => ALU_fun_0_1_DYMUX_8631,
      CE => VCC,
      CLK => ALU_fun_0_1_CLKINV_8628,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_fun_0_1_SRINV_8629,
      O => ALU_fun_0_1_2950
    );
  ALU_fun_2_1 : X_SFF
    generic map(
      LOC => "SLICE_X56Y187",
      INIT => '0'
    )
    port map (
      I => ALU_fun_2_1_DYMUX_8643,
      CE => VCC,
      CLK => ALU_fun_2_1_CLKINV_8640,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_fun_2_1_SRINV_8641,
      O => ALU_fun_2_1_2951
    );
  ALU_fun_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X72Y206"
    )
    port map (
      ADR0 => VCC,
      ADR1 => icode_3_IBUF_2727,
      ADR2 => icode_0_IBUF_2724,
      ADR3 => icode_1_IBUF_2725,
      O => ALU_A_or0000_pack_1
    );
  ALU_A_mux0001_4_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X72Y206"
    )
    port map (
      ADR0 => valA_4_IBUF_2689,
      ADR1 => valC_4_IBUF_2706,
      ADR2 => ALU_A_or0001,
      ADR3 => ALU_A_or0000,
      O => ALU_A_mux0001_4_1_8673
    );
  ALU_A_4 : X_SFF
    generic map(
      LOC => "SLICE_X72Y206",
      INIT => '0'
    )
    port map (
      I => ALU_A_4_DXMUX_8676,
      CE => VCC,
      CLK => ALU_A_4_CLKINV_8659,
      SET => GND,
      RST => GND,
      SSET => ALU_A_4_SRINV_8660,
      SRST => GND,
      O => ALU_A(4)
    );
  valE_10 : X_FF
    generic map(
      LOC => "SLICE_X31Y160",
      INIT => '0'
    )
    port map (
      I => valE_11_DYMUX_8688,
      CE => VCC,
      CLK => valE_11_CLKINV_8686,
      SET => GND,
      RST => GND,
      O => valE_10_2888
    );
  valE_11 : X_FF
    generic map(
      LOC => "SLICE_X31Y160",
      INIT => '0'
    )
    port map (
      I => valE_11_DXMUX_8693,
      CE => VCC,
      CLK => valE_11_CLKINV_8686,
      SET => GND,
      RST => GND,
      O => valE_11_2890
    );
  valE_20 : X_FF
    generic map(
      LOC => "SLICE_X27Y152",
      INIT => '0'
    )
    port map (
      I => valE_21_DYMUX_8704,
      CE => VCC,
      CLK => valE_21_CLKINV_8702,
      SET => GND,
      RST => GND,
      O => valE_20_2892
    );
  valE_21 : X_FF
    generic map(
      LOC => "SLICE_X27Y152",
      INIT => '0'
    )
    port map (
      I => valE_21_DXMUX_8709,
      CE => VCC,
      CLK => valE_21_CLKINV_8702,
      SET => GND,
      RST => GND,
      O => valE_21_2894
    );
  valE_12 : X_FF
    generic map(
      LOC => "SLICE_X29Y159",
      INIT => '0'
    )
    port map (
      I => valE_13_DYMUX_8720,
      CE => VCC,
      CLK => valE_13_CLKINV_8718,
      SET => GND,
      RST => GND,
      O => valE_12_2893
    );
  valE_13 : X_FF
    generic map(
      LOC => "SLICE_X29Y159",
      INIT => '0'
    )
    port map (
      I => valE_13_DXMUX_8725,
      CE => VCC,
      CLK => valE_13_CLKINV_8718,
      SET => GND,
      RST => GND,
      O => valE_13_2895
    );
  valE_30 : X_FF
    generic map(
      LOC => "SLICE_X24Y142",
      INIT => '0'
    )
    port map (
      I => valE_31_DYMUX_8736,
      CE => VCC,
      CLK => valE_31_CLKINV_8734,
      SET => GND,
      RST => GND,
      O => valE_30_2896
    );
  valE_31 : X_FF
    generic map(
      LOC => "SLICE_X24Y142",
      INIT => '0'
    )
    port map (
      I => valE_31_DXMUX_8741,
      CE => VCC,
      CLK => valE_31_CLKINV_8734,
      SET => GND,
      RST => GND,
      O => valE_31_2899
    );
  valE_22 : X_FF
    generic map(
      LOC => "SLICE_X26Y152",
      INIT => '0'
    )
    port map (
      I => valE_23_DYMUX_8752,
      CE => VCC,
      CLK => valE_23_CLKINV_8750,
      SET => GND,
      RST => GND,
      O => valE_22_2897
    );
  valE_23 : X_FF
    generic map(
      LOC => "SLICE_X26Y152",
      INIT => '0'
    )
    port map (
      I => valE_23_DXMUX_8757,
      CE => VCC,
      CLK => valE_23_CLKINV_8750,
      SET => GND,
      RST => GND,
      O => valE_23_2900
    );
  valE_14 : X_FF
    generic map(
      LOC => "SLICE_X26Y158",
      INIT => '0'
    )
    port map (
      I => valE_15_DYMUX_8768,
      CE => VCC,
      CLK => valE_15_CLKINV_8766,
      SET => GND,
      RST => GND,
      O => valE_14_2898
    );
  valE_15 : X_FF
    generic map(
      LOC => "SLICE_X26Y158",
      INIT => '0'
    )
    port map (
      I => valE_15_DXMUX_8773,
      CE => VCC,
      CLK => valE_15_CLKINV_8766,
      SET => GND,
      RST => GND,
      O => valE_15_2901
    );
  valE_40 : X_FF
    generic map(
      LOC => "SLICE_X22Y135",
      INIT => '0'
    )
    port map (
      I => valE_41_DYMUX_8784,
      CE => VCC,
      CLK => valE_41_CLKINV_8782,
      SET => GND,
      RST => GND,
      O => valE_40_2902
    );
  valE_16 : X_FF
    generic map(
      LOC => "SLICE_X26Y157",
      INIT => '0'
    )
    port map (
      I => valE_17_DYMUX_8832,
      CE => VCC,
      CLK => valE_17_CLKINV_8830,
      SET => GND,
      RST => GND,
      O => valE_16_2905
    );
  valE_17 : X_FF
    generic map(
      LOC => "SLICE_X26Y157",
      INIT => '0'
    )
    port map (
      I => valE_17_DXMUX_8837,
      CE => VCC,
      CLK => valE_17_CLKINV_8830,
      SET => GND,
      RST => GND,
      O => valE_17_2909
    );
  valE_50 : X_FF
    generic map(
      LOC => "SLICE_X21Y123",
      INIT => '0'
    )
    port map (
      I => valE_51_DYMUX_8848,
      CE => VCC,
      CLK => valE_51_CLKINV_8846,
      SET => GND,
      RST => GND,
      O => valE_50_2910
    );
  valE_51 : X_FF
    generic map(
      LOC => "SLICE_X21Y123",
      INIT => '0'
    )
    port map (
      I => valE_51_DXMUX_8853,
      CE => VCC,
      CLK => valE_51_CLKINV_8846,
      SET => GND,
      RST => GND,
      O => valE_51_2915
    );
  valE_42 : X_FF
    generic map(
      LOC => "SLICE_X20Y133",
      INIT => '0'
    )
    port map (
      I => valE_43_DYMUX_8864,
      CE => VCC,
      CLK => valE_43_CLKINV_8862,
      SET => GND,
      RST => GND,
      O => valE_42_2911
    );
  valE_43 : X_FF
    generic map(
      LOC => "SLICE_X20Y133",
      INIT => '0'
    )
    port map (
      I => valE_43_DXMUX_8869,
      CE => VCC,
      CLK => valE_43_CLKINV_8862,
      SET => GND,
      RST => GND,
      O => valE_43_2916
    );
  valE_34 : X_FF
    generic map(
      LOC => "SLICE_X23Y138",
      INIT => '0'
    )
    port map (
      I => valE_35_DYMUX_8880,
      CE => VCC,
      CLK => valE_35_CLKINV_8878,
      SET => GND,
      RST => GND,
      O => valE_34_2912
    );
  valE_35 : X_FF
    generic map(
      LOC => "SLICE_X23Y138",
      INIT => '0'
    )
    port map (
      I => valE_35_DXMUX_8885,
      CE => VCC,
      CLK => valE_35_CLKINV_8878,
      SET => GND,
      RST => GND,
      O => valE_35_2917
    );
  valE_26 : X_FF
    generic map(
      LOC => "SLICE_X24Y148",
      INIT => '0'
    )
    port map (
      I => valE_27_DYMUX_8896,
      CE => VCC,
      CLK => valE_27_CLKINV_8894,
      SET => GND,
      RST => GND,
      O => valE_26_2913
    );
  valE_27 : X_FF
    generic map(
      LOC => "SLICE_X24Y148",
      INIT => '0'
    )
    port map (
      I => valE_27_DXMUX_8901,
      CE => VCC,
      CLK => valE_27_CLKINV_8894,
      SET => GND,
      RST => GND,
      O => valE_27_2918
    );
  valE_18 : X_FF
    generic map(
      LOC => "SLICE_X27Y155",
      INIT => '0'
    )
    port map (
      I => valE_19_DYMUX_8912,
      CE => VCC,
      CLK => valE_19_CLKINV_8910,
      SET => GND,
      RST => GND,
      O => valE_18_2914
    );
  valE_19 : X_FF
    generic map(
      LOC => "SLICE_X27Y155",
      INIT => '0'
    )
    port map (
      I => valE_19_DXMUX_8917,
      CE => VCC,
      CLK => valE_19_CLKINV_8910,
      SET => GND,
      RST => GND,
      O => valE_19_2919
    );
  valE_60 : X_FF
    generic map(
      LOC => "SLICE_X47Y173",
      INIT => '0'
    )
    port map (
      I => valE_61_DYMUX_8928,
      CE => VCC,
      CLK => valE_61_CLKINV_8926,
      SET => GND,
      RST => GND,
      O => valE_60_2920
    );
  valE_61 : X_FF
    generic map(
      LOC => "SLICE_X47Y173",
      INIT => '0'
    )
    port map (
      I => valE_61_DXMUX_8933,
      CE => VCC,
      CLK => valE_61_CLKINV_8926,
      SET => GND,
      RST => GND,
      O => valE_61_2925
    );
  valE_52 : X_FF
    generic map(
      LOC => "SLICE_X46Y175",
      INIT => '0'
    )
    port map (
      I => valE_53_DYMUX_8944,
      CE => VCC,
      CLK => valE_53_CLKINV_8942,
      SET => GND,
      RST => GND,
      O => valE_52_2921
    );
  valE_53 : X_FF
    generic map(
      LOC => "SLICE_X46Y175",
      INIT => '0'
    )
    port map (
      I => valE_53_DXMUX_8949,
      CE => VCC,
      CLK => valE_53_CLKINV_8942,
      SET => GND,
      RST => GND,
      O => valE_53_2926
    );
  valE_44 : X_FF
    generic map(
      LOC => "SLICE_X20Y131",
      INIT => '0'
    )
    port map (
      I => valE_45_DYMUX_8960,
      CE => VCC,
      CLK => valE_45_CLKINV_8958,
      SET => GND,
      RST => GND,
      O => valE_44_2922
    );
  valE_62 : X_FF
    generic map(
      LOC => "SLICE_X16Y113",
      INIT => '0'
    )
    port map (
      I => valE_63_DYMUX_9008,
      CE => VCC,
      CLK => valE_63_CLKINV_9006,
      SET => GND,
      RST => GND,
      O => valE_62_2930
    );
  valE_63 : X_FF
    generic map(
      LOC => "SLICE_X16Y113",
      INIT => '0'
    )
    port map (
      I => valE_63_DXMUX_9013,
      CE => VCC,
      CLK => valE_63_CLKINV_9006,
      SET => GND,
      RST => GND,
      O => valE_63_2934
    );
  valE_54 : X_FF
    generic map(
      LOC => "SLICE_X53Y183",
      INIT => '0'
    )
    port map (
      I => valE_55_DYMUX_9024,
      CE => VCC,
      CLK => valE_55_CLKINV_9022,
      SET => GND,
      RST => GND,
      O => valE_54_2931
    );
  valE_55 : X_FF
    generic map(
      LOC => "SLICE_X53Y183",
      INIT => '0'
    )
    port map (
      I => valE_55_DXMUX_9029,
      CE => VCC,
      CLK => valE_55_CLKINV_9022,
      SET => GND,
      RST => GND,
      O => valE_55_2935
    );
  valE_46 : X_FF
    generic map(
      LOC => "SLICE_X20Y126",
      INIT => '0'
    )
    port map (
      I => valE_47_DYMUX_9040,
      CE => VCC,
      CLK => valE_47_CLKINV_9038,
      SET => GND,
      RST => GND,
      O => valE_46_2932
    );
  valE_47 : X_FF
    generic map(
      LOC => "SLICE_X20Y126",
      INIT => '0'
    )
    port map (
      I => valE_47_DXMUX_9045,
      CE => VCC,
      CLK => valE_47_CLKINV_9038,
      SET => GND,
      RST => GND,
      O => valE_47_2936
    );
  valE_38 : X_FF
    generic map(
      LOC => "SLICE_X47Y178",
      INIT => '0'
    )
    port map (
      I => valE_39_DYMUX_9056,
      CE => VCC,
      CLK => valE_39_CLKINV_9054,
      SET => GND,
      RST => GND,
      O => valE_38_2933
    );
  valE_39 : X_FF
    generic map(
      LOC => "SLICE_X47Y178",
      INIT => '0'
    )
    port map (
      I => valE_39_DXMUX_9061,
      CE => VCC,
      CLK => valE_39_CLKINV_9054,
      SET => GND,
      RST => GND,
      O => valE_39_2937
    );
  valE_56 : X_FF
    generic map(
      LOC => "SLICE_X51Y177",
      INIT => '0'
    )
    port map (
      I => valE_57_DYMUX_9072,
      CE => VCC,
      CLK => valE_57_CLKINV_9070,
      SET => GND,
      RST => GND,
      O => valE_56_2938
    );
  valE_57 : X_FF
    generic map(
      LOC => "SLICE_X51Y177",
      INIT => '0'
    )
    port map (
      I => valE_57_DXMUX_9077,
      CE => VCC,
      CLK => valE_57_CLKINV_9070,
      SET => GND,
      RST => GND,
      O => valE_57_2940
    );
  valE_48 : X_FF
    generic map(
      LOC => "SLICE_X20Y125",
      INIT => '0'
    )
    port map (
      I => valE_49_DYMUX_9088,
      CE => VCC,
      CLK => valE_49_CLKINV_9086,
      SET => GND,
      RST => GND,
      O => valE_48_2939
    );
  valE_49 : X_FF
    generic map(
      LOC => "SLICE_X20Y125",
      INIT => '0'
    )
    port map (
      I => valE_49_DXMUX_9093,
      CE => VCC,
      CLK => valE_49_CLKINV_9086,
      SET => GND,
      RST => GND,
      O => valE_49_2941
    );
  valE_58 : X_FF
    generic map(
      LOC => "SLICE_X17Y115",
      INIT => '0'
    )
    port map (
      I => valE_59_DYMUX_9104,
      CE => VCC,
      CLK => valE_59_CLKINV_9102,
      SET => GND,
      RST => GND,
      O => valE_58_2942
    );
  valE_59 : X_FF
    generic map(
      LOC => "SLICE_X17Y115",
      INIT => '0'
    )
    port map (
      I => valE_59_DXMUX_9109,
      CE => VCC,
      CLK => valE_59_CLKINV_9102,
      SET => GND,
      RST => GND,
      O => valE_59_2943
    );
  ALU_E_mux0001_12_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X56Y182"
    )
    port map (
      ADR0 => ALU_B(12),
      ADR1 => ALU_fun(1),
      ADR2 => N132,
      ADR3 => ALU_A(12),
      O => ALU_E_mux0001_12_32_9127
    );
  ALU_E_mux0001_13_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X56Y182"
    )
    port map (
      ADR0 => ALU_B(13),
      ADR1 => ALU_fun(1),
      ADR2 => N132,
      ADR3 => ALU_A(13),
      O => ALU_E_mux0001_13_32_9134
    );
  ALU_E_mux0001_20_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X64Y191"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(20),
      ADR2 => ALU_A(20),
      ADR3 => N132,
      O => ALU_E_mux0001_20_32_9151
    );
  ALU_E_mux0001_14_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X64Y191"
    )
    port map (
      ADR0 => ALU_A(14),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(14),
      ADR3 => N132,
      O => ALU_E_mux0001_14_32_9158
    );
  ALU_E_mux0001_26_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X57Y184"
    )
    port map (
      ADR0 => ALU_A(26),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_B(26),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_26_32_9254
    );
  ALU_E_mux0001_32_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X57Y180"
    )
    port map (
      ADR0 => ALU_A(32),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_fun(1),
      ADR3 => ALU_B(32),
      O => ALU_E_mux0001_32_32_9271
    );
  ALU_E_mux0001_27_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X57Y180"
    )
    port map (
      ADR0 => ALU_A(27),
      ADR1 => ALU_B(27),
      ADR2 => ALU_E_mux0001_0_31_2980,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_27_32_9278
    );
  ALU_E_mux0001_17_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X60Y191"
    )
    port map (
      ADR0 => ALU_B(17),
      ADR1 => ALU_A(17),
      ADR2 => ALU_fun(1),
      ADR3 => N132,
      O => ALU_E_mux0001_17_32_9295
    );
  ALU_E_mux0001_18_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X60Y191"
    )
    port map (
      ADR0 => ALU_A(18),
      ADR1 => ALU_B(18),
      ADR2 => N132,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_18_32_9302
    );
  ALU_E_mux0001_33_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X55Y182"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_31_2980,
      ADR1 => ALU_B(33),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_A(33),
      O => ALU_E_mux0001_33_32_9319
    );
  ALU_E_mux0001_28_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X55Y182"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_E_mux0001_0_31_2980,
      ADR2 => ALU_A(28),
      ADR3 => ALU_B(28),
      O => ALU_E_mux0001_28_32_9326
    );
  ALU_E_mux0001_41_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X45Y170"
    )
    port map (
      ADR0 => ALU_A(41),
      ADR1 => ALU_B(41),
      ADR2 => ALU_E_mux0001_0_311,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_41_32_9343
    );
  ALU_E_mux0001_42_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X45Y170"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_311,
      ADR1 => ALU_B(42),
      ADR2 => ALU_A(42),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_42_32_9350
    );
  ALU_E_mux0001_34_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X52Y177"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_31_2980,
      ADR1 => ALU_B(34),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_A(34),
      O => ALU_E_mux0001_34_32_9367
    );
  ALU_E_mux0001_29_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X52Y177"
    )
    port map (
      ADR0 => ALU_B(29),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_E_mux0001_0_31_2980,
      ADR3 => ALU_A(29),
      O => ALU_E_mux0001_29_32_9374
    );
  ALU_E_mux0001_50_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X45Y177"
    )
    port map (
      ADR0 => ALU_A(50),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_B(50),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_50_32_9391
    );
  ALU_E_mux0001_43_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X45Y177"
    )
    port map (
      ADR0 => ALU_B(43),
      ADR1 => ALU_E_mux0001_0_311,
      ADR2 => ALU_A(43),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_43_32_9398
    );
  ALU_E_mux0001_19_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X60Y187"
    )
    port map (
      ADR0 => ALU_B(19),
      ADR1 => ALU_fun(1),
      ADR2 => ALU_A(19),
      ADR3 => N132,
      O => ALU_E_mux0001_19_32_9410
    );
  ALU_E_mux0001_35_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X47Y179"
    )
    port map (
      ADR0 => ALU_A(35),
      ADR1 => ALU_B(35),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_E_mux0001_0_31_2980,
      O => ALU_E_mux0001_35_32_9427
    );
  ALU_E_mux0001_36_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X47Y179"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_31_2980,
      ADR1 => ALU_fun(1),
      ADR2 => ALU_A(36),
      ADR3 => ALU_B(36),
      O => ALU_E_mux0001_36_32_9434
    );
  ALU_E_mux0001_51_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X54Y168"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_E_mux0001_0_311,
      ADR2 => ALU_B(51),
      ADR3 => ALU_A(51),
      O => ALU_E_mux0001_51_32_9451
    );
  ALU_E_mux0001_44_32 : X_LUT4
    generic map(
      INIT => X"4C00",
      LOC => "SLICE_X54Y168"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(44),
      ADR2 => ALU_A(44),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_44_32_9458
    );
  ALU_E_mux0001_60_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X52Y179"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_312,
      ADR1 => ALU_B(60),
      ADR2 => ALU_A(60),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_60_32_9475
    );
  ALU_E_mux0001_57_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X52Y179"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_312,
      ADR1 => ALU_A(57),
      ADR2 => ALU_B(57),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_57_32_9482
    );
  ALU_E_mux0001_37_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X52Y181"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_B(37),
      ADR2 => ALU_E_mux0001_0_31_2980,
      ADR3 => ALU_A(37),
      O => ALU_E_mux0001_37_32_9494
    );
  ALU_E_mux0001_45_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X47Y181"
    )
    port map (
      ADR0 => ALU_B(45),
      ADR1 => ALU_E_mux0001_0_311,
      ADR2 => ALU_A(45),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_45_32_9511
    );
  ALU_E_mux0001_46_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X47Y181"
    )
    port map (
      ADR0 => ALU_B(46),
      ADR1 => ALU_E_mux0001_0_311,
      ADR2 => ALU_A(46),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_46_32_9518
    );
  ALU_E_mux0001_61_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X46Y176"
    )
    port map (
      ADR0 => ALU_B(61),
      ADR1 => ALU_A(61),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_61_32_9535
    );
  ALU_E_mux0001_58_32 : X_LUT4
    generic map(
      INIT => X"7000",
      LOC => "SLICE_X46Y176"
    )
    port map (
      ADR0 => ALU_fun(1),
      ADR1 => ALU_A(58),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_B(58),
      O => ALU_E_mux0001_58_32_9542
    );
  ALU_E_mux0001_62_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X44Y175"
    )
    port map (
      ADR0 => ALU_B(62),
      ADR1 => ALU_A(62),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_62_32_9559
    );
  ALU_E_mux0001_59_32 : X_LUT4
    generic map(
      INIT => X"20A0",
      LOC => "SLICE_X44Y175"
    )
    port map (
      ADR0 => ALU_B(59),
      ADR1 => ALU_A(59),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_59_32_9566
    );
  ALU_E_mux0001_47_32 : X_LUT4
    generic map(
      INIT => X"0888",
      LOC => "SLICE_X50Y167"
    )
    port map (
      ADR0 => ALU_E_mux0001_0_311,
      ADR1 => ALU_B(47),
      ADR2 => ALU_A(47),
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_47_32_9583
    );
  ALU_E_mux0001_48_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X50Y167"
    )
    port map (
      ADR0 => ALU_A(48),
      ADR1 => ALU_B(48),
      ADR2 => ALU_E_mux0001_0_311,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_48_32_9590
    );
  ALU_E_mux0001_63_32 : X_LUT4
    generic map(
      INIT => X"40C0",
      LOC => "SLICE_X43Y172"
    )
    port map (
      ADR0 => ALU_A(63),
      ADR1 => ALU_B(63),
      ADR2 => ALU_E_mux0001_0_312,
      ADR3 => ALU_fun(1),
      O => ALU_E_mux0001_63_32_9602
    );
  ALU_E_mux0001_49_32 : X_LUT4
    generic map(
      INIT => X"2A00",
      LOC => "SLICE_X43Y182"
    )
    port map (
      ADR0 => ALU_B(49),
      ADR1 => ALU_A(49),
      ADR2 => ALU_fun(1),
      ADR3 => ALU_E_mux0001_0_311,
      O => ALU_E_mux0001_49_32_9614
    );
  valE_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y171",
      INIT => '0'
    )
    port map (
      I => valE_1_DYMUX_9624,
      CE => VCC,
      CLK => valE_1_CLKINV_9622,
      SET => GND,
      RST => GND,
      O => valE_0_2712
    );
  valE_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y171",
      INIT => '0'
    )
    port map (
      I => valE_1_DXMUX_9629,
      CE => VCC,
      CLK => valE_1_CLKINV_9622,
      SET => GND,
      RST => GND,
      O => valE_1_2714
    );
  valE_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y167",
      INIT => '0'
    )
    port map (
      I => valE_3_DYMUX_9640,
      CE => VCC,
      CLK => valE_3_CLKINV_9638,
      SET => GND,
      RST => GND,
      O => valE_2_2716
    );
  valE_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y167",
      INIT => '0'
    )
    port map (
      I => valE_3_DXMUX_9645,
      CE => VCC,
      CLK => valE_3_CLKINV_9638,
      SET => GND,
      RST => GND,
      O => valE_3_2717
    );
  valE_4 : X_FF
    generic map(
      LOC => "SLICE_X29Y164",
      INIT => '0'
    )
    port map (
      I => valE_5_DYMUX_9656,
      CE => VCC,
      CLK => valE_5_CLKINV_9654,
      SET => GND,
      RST => GND,
      O => valE_4_2718
    );
  valE_5 : X_FF
    generic map(
      LOC => "SLICE_X29Y164",
      INIT => '0'
    )
    port map (
      I => valE_5_DXMUX_9661,
      CE => VCC,
      CLK => valE_5_CLKINV_9654,
      SET => GND,
      RST => GND,
      O => valE_5_2719
    );
  valE_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y162",
      INIT => '0'
    )
    port map (
      I => valE_7_DYMUX_9672,
      CE => VCC,
      CLK => valE_7_CLKINV_9670,
      SET => GND,
      RST => GND,
      O => valE_6_2720
    );
  valE_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y162",
      INIT => '0'
    )
    port map (
      I => valE_7_DXMUX_9677,
      CE => VCC,
      CLK => valE_7_CLKINV_9670,
      SET => GND,
      RST => GND,
      O => valE_7_2721
    );
  valE_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y162",
      INIT => '0'
    )
    port map (
      I => valE_9_DYMUX_9688,
      CE => VCC,
      CLK => valE_9_CLKINV_9686,
      SET => GND,
      RST => GND,
      O => valE_8_2722
    );
  valE_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y162",
      INIT => '0'
    )
    port map (
      I => valE_9_DXMUX_9693,
      CE => VCC,
      CLK => valE_9_CLKINV_9686,
      SET => GND,
      RST => GND,
      O => valE_9_2723
    );
  ALU_fun_0 : X_SFF
    generic map(
      LOC => "SLICE_X60Y186",
      INIT => '0'
    )
    port map (
      I => ALU_fun_1_DYMUX_9706,
      CE => VCC,
      CLK => ALU_fun_1_CLKINV_9703,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_fun_1_SRINV_9704,
      O => ALU_fun(0)
    );
  ALU_fun_1 : X_SFF
    generic map(
      LOC => "SLICE_X60Y186",
      INIT => '0'
    )
    port map (
      I => ALU_fun_1_DXMUX_9712,
      CE => VCC,
      CLK => ALU_fun_1_CLKINV_9703,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_fun_1_SRINV_9704,
      O => ALU_fun(1)
    );
  ALU_fun_2 : X_SFF
    generic map(
      LOC => "SLICE_X59Y186",
      INIT => '0'
    )
    port map (
      I => ALU_fun_2_DYMUX_9724,
      CE => VCC,
      CLK => ALU_fun_2_CLKINV_9721,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_fun_2_SRINV_9722,
      O => ALU_fun(2)
    );
  ALU_A_or00011 : X_LUT4
    generic map(
      INIT => X"0450",
      LOC => "SLICE_X71Y201"
    )
    port map (
      ADR0 => icode_3_IBUF_2727,
      ADR1 => icode_0_IBUF_2724,
      ADR2 => icode_2_IBUF_2726,
      ADR3 => icode_1_IBUF_2725,
      O => ALU_A_or0001_pack_1
    );
  ALU_A_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X71Y201"
    )
    port map (
      ADR0 => valC_2_IBUF_2702,
      ADR1 => valA_2_IBUF_2686,
      ADR2 => ALU_A_or0000,
      ADR3 => ALU_A_or0001,
      O => ALU_A_mux0001(2)
    );
  ALU_A_2 : X_FF
    generic map(
      LOC => "SLICE_X71Y201",
      INIT => '0'
    )
    port map (
      I => ALU_A_2_DXMUX_9755,
      CE => VCC,
      CLK => ALU_A_2_CLKINV_9740,
      SET => GND,
      RST => GND,
      O => ALU_A(2)
    );
  ALU_A_or00021 : X_LUT4
    generic map(
      INIT => X"000C",
      LOC => "SLICE_X72Y198"
    )
    port map (
      ADR0 => VCC,
      ADR1 => icode_3_IBUF_2727,
      ADR2 => icode_0_IBUF_2724,
      ADR3 => icode_2_IBUF_2726,
      O => ALU_A_or0002
    );
  ALU_B_not00011 : X_LUT4
    generic map(
      INIT => X"ECB3",
      LOC => "SLICE_X72Y198"
    )
    port map (
      ADR0 => icode_1_IBUF_2725,
      ADR1 => icode_3_IBUF_2727,
      ADR2 => icode_0_IBUF_2724,
      ADR3 => icode_2_IBUF_2726,
      O => ALU_B_not0001
    );
  ALU_B_10 : X_SFF
    generic map(
      LOC => "SLICE_X73Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_11_DYMUX_9792,
      CE => VCC,
      CLK => ALU_B_11_CLKINV_9789,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_11_SRINV_9790,
      O => ALU_B(10)
    );
  ALU_B_11 : X_SFF
    generic map(
      LOC => "SLICE_X73Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_11_DXMUX_9798,
      CE => VCC,
      CLK => ALU_B_11_CLKINV_9789,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_11_SRINV_9790,
      O => ALU_B(11)
    );
  ALU_B_20 : X_SFF
    generic map(
      LOC => "SLICE_X91Y194",
      INIT => '0'
    )
    port map (
      I => ALU_B_21_DYMUX_9812,
      CE => VCC,
      CLK => ALU_B_21_CLKINV_9809,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_21_SRINV_9810,
      O => ALU_B(20)
    );
  ALU_B_21 : X_SFF
    generic map(
      LOC => "SLICE_X91Y194",
      INIT => '0'
    )
    port map (
      I => ALU_B_21_DXMUX_9818,
      CE => VCC,
      CLK => ALU_B_21_CLKINV_9809,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_21_SRINV_9810,
      O => ALU_B(21)
    );
  ALU_B_12 : X_SFF
    generic map(
      LOC => "SLICE_X83Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_13_DYMUX_9832,
      CE => VCC,
      CLK => ALU_B_13_CLKINV_9829,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_13_SRINV_9830,
      O => ALU_B(12)
    );
  ALU_B_13 : X_SFF
    generic map(
      LOC => "SLICE_X83Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_13_DXMUX_9838,
      CE => VCC,
      CLK => ALU_B_13_CLKINV_9829,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_13_SRINV_9830,
      O => ALU_B(13)
    );
  ALU_B_30 : X_SFF
    generic map(
      LOC => "SLICE_X82Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_31_DYMUX_9852,
      CE => VCC,
      CLK => ALU_B_31_CLKINV_9849,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_31_SRINV_9850,
      O => ALU_B(30)
    );
  ALU_B_31 : X_SFF
    generic map(
      LOC => "SLICE_X82Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_31_DXMUX_9858,
      CE => VCC,
      CLK => ALU_B_31_CLKINV_9849,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_31_SRINV_9850,
      O => ALU_B(31)
    );
  ALU_B_22 : X_SFF
    generic map(
      LOC => "SLICE_X90Y195",
      INIT => '0'
    )
    port map (
      I => ALU_B_23_DYMUX_9872,
      CE => VCC,
      CLK => ALU_B_23_CLKINV_9869,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_23_SRINV_9870,
      O => ALU_B(22)
    );
  ALU_B_23 : X_SFF
    generic map(
      LOC => "SLICE_X90Y195",
      INIT => '0'
    )
    port map (
      I => ALU_B_23_DXMUX_9878,
      CE => VCC,
      CLK => ALU_B_23_CLKINV_9869,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_23_SRINV_9870,
      O => ALU_B(23)
    );
  ALU_B_14 : X_SFF
    generic map(
      LOC => "SLICE_X91Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_15_DYMUX_9892,
      CE => VCC,
      CLK => ALU_B_15_CLKINV_9889,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_15_SRINV_9890,
      O => ALU_B(14)
    );
  ALU_B_15 : X_SFF
    generic map(
      LOC => "SLICE_X91Y192",
      INIT => '0'
    )
    port map (
      I => ALU_B_15_DXMUX_9898,
      CE => VCC,
      CLK => ALU_B_15_CLKINV_9889,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_15_SRINV_9890,
      O => ALU_B(15)
    );
  ALU_B_40 : X_SFF
    generic map(
      LOC => "SLICE_X77Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_41_DYMUX_9912,
      CE => VCC,
      CLK => ALU_B_41_CLKINV_9909,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_41_SRINV_9910,
      O => ALU_B(40)
    );
  ALU_B_41 : X_SFF
    generic map(
      LOC => "SLICE_X77Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_41_DXMUX_9918,
      CE => VCC,
      CLK => ALU_B_41_CLKINV_9909,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_41_SRINV_9910,
      O => ALU_B(41)
    );
  ALU_B_32 : X_SFF
    generic map(
      LOC => "SLICE_X59Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_33_DYMUX_9932,
      CE => VCC,
      CLK => ALU_B_33_CLKINV_9929,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_33_SRINV_9930,
      O => ALU_B(32)
    );
  ALU_B_33 : X_SFF
    generic map(
      LOC => "SLICE_X59Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_33_DXMUX_9938,
      CE => VCC,
      CLK => ALU_B_33_CLKINV_9929,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_33_SRINV_9930,
      O => ALU_B(33)
    );
  ALU_B_24 : X_SFF
    generic map(
      LOC => "SLICE_X61Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_25_DYMUX_9952,
      CE => VCC,
      CLK => ALU_B_25_CLKINV_9949,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_25_SRINV_9950,
      O => ALU_B(24)
    );
  ALU_B_25 : X_SFF
    generic map(
      LOC => "SLICE_X61Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_25_DXMUX_9958,
      CE => VCC,
      CLK => ALU_B_25_CLKINV_9949,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_25_SRINV_9950,
      O => ALU_B(25)
    );
  ALU_B_16 : X_SFF
    generic map(
      LOC => "SLICE_X64Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_17_DYMUX_9972,
      CE => VCC,
      CLK => ALU_B_17_CLKINV_9969,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_17_SRINV_9970,
      O => ALU_B(16)
    );
  ALU_B_17 : X_SFF
    generic map(
      LOC => "SLICE_X64Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_17_DXMUX_9978,
      CE => VCC,
      CLK => ALU_B_17_CLKINV_9969,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_17_SRINV_9970,
      O => ALU_B(17)
    );
  ALU_B_50 : X_SFF
    generic map(
      LOC => "SLICE_X68Y186",
      INIT => '0'
    )
    port map (
      I => ALU_B_51_DYMUX_9992,
      CE => VCC,
      CLK => ALU_B_51_CLKINV_9989,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_51_SRINV_9990,
      O => ALU_B(50)
    );
  ALU_B_51 : X_SFF
    generic map(
      LOC => "SLICE_X68Y186",
      INIT => '0'
    )
    port map (
      I => ALU_B_51_DXMUX_9998,
      CE => VCC,
      CLK => ALU_B_51_CLKINV_9989,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_51_SRINV_9990,
      O => ALU_B(51)
    );
  ALU_B_42 : X_SFF
    generic map(
      LOC => "SLICE_X71Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_43_DYMUX_10012,
      CE => VCC,
      CLK => ALU_B_43_CLKINV_10009,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_43_SRINV_10010,
      O => ALU_B(42)
    );
  ALU_B_43 : X_SFF
    generic map(
      LOC => "SLICE_X71Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_43_DXMUX_10018,
      CE => VCC,
      CLK => ALU_B_43_CLKINV_10009,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_43_SRINV_10010,
      O => ALU_B(43)
    );
  ALU_B_34 : X_SFF
    generic map(
      LOC => "SLICE_X53Y180",
      INIT => '0'
    )
    port map (
      I => ALU_B_35_DYMUX_10032,
      CE => VCC,
      CLK => ALU_B_35_CLKINV_10029,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_35_SRINV_10030,
      O => ALU_B(34)
    );
  ALU_B_35 : X_SFF
    generic map(
      LOC => "SLICE_X53Y180",
      INIT => '0'
    )
    port map (
      I => ALU_B_35_DXMUX_10038,
      CE => VCC,
      CLK => ALU_B_35_CLKINV_10029,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_35_SRINV_10030,
      O => ALU_B(35)
    );
  ALU_B_26 : X_SFF
    generic map(
      LOC => "SLICE_X84Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_27_DYMUX_10052,
      CE => VCC,
      CLK => ALU_B_27_CLKINV_10049,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_27_SRINV_10050,
      O => ALU_B(26)
    );
  ALU_B_27 : X_SFF
    generic map(
      LOC => "SLICE_X84Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_27_DXMUX_10058,
      CE => VCC,
      CLK => ALU_B_27_CLKINV_10049,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_27_SRINV_10050,
      O => ALU_B(27)
    );
  ALU_B_18 : X_SFF
    generic map(
      LOC => "SLICE_X62Y190",
      INIT => '0'
    )
    port map (
      I => ALU_B_19_DYMUX_10072,
      CE => VCC,
      CLK => ALU_B_19_CLKINV_10069,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_19_SRINV_10070,
      O => ALU_B(18)
    );
  ALU_B_19 : X_SFF
    generic map(
      LOC => "SLICE_X62Y190",
      INIT => '0'
    )
    port map (
      I => ALU_B_19_DXMUX_10078,
      CE => VCC,
      CLK => ALU_B_19_CLKINV_10069,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_19_SRINV_10070,
      O => ALU_B(19)
    );
  ALU_B_60 : X_SFF
    generic map(
      LOC => "SLICE_X61Y181",
      INIT => '0'
    )
    port map (
      I => ALU_B_61_DYMUX_10092,
      CE => VCC,
      CLK => ALU_B_61_CLKINV_10089,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_61_SRINV_10090,
      O => ALU_B(60)
    );
  ALU_B_61 : X_SFF
    generic map(
      LOC => "SLICE_X61Y181",
      INIT => '0'
    )
    port map (
      I => ALU_B_61_DXMUX_10098,
      CE => VCC,
      CLK => ALU_B_61_CLKINV_10089,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_61_SRINV_10090,
      O => ALU_B(61)
    );
  ALU_B_52 : X_SFF
    generic map(
      LOC => "SLICE_X72Y188",
      INIT => '0'
    )
    port map (
      I => ALU_B_53_DYMUX_10112,
      CE => VCC,
      CLK => ALU_B_53_CLKINV_10109,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_53_SRINV_10110,
      O => ALU_B(52)
    );
  ALU_B_53 : X_SFF
    generic map(
      LOC => "SLICE_X72Y188",
      INIT => '0'
    )
    port map (
      I => ALU_B_53_DXMUX_10118,
      CE => VCC,
      CLK => ALU_B_53_CLKINV_10109,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_53_SRINV_10110,
      O => ALU_B(53)
    );
  ALU_B_44 : X_SFF
    generic map(
      LOC => "SLICE_X61Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_45_DYMUX_10132,
      CE => VCC,
      CLK => ALU_B_45_CLKINV_10129,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_45_SRINV_10130,
      O => ALU_B(44)
    );
  ALU_B_45 : X_SFF
    generic map(
      LOC => "SLICE_X61Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_45_DXMUX_10138,
      CE => VCC,
      CLK => ALU_B_45_CLKINV_10129,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_45_SRINV_10130,
      O => ALU_B(45)
    );
  ALU_B_36 : X_SFF
    generic map(
      LOC => "SLICE_X79Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_37_DYMUX_10152,
      CE => VCC,
      CLK => ALU_B_37_CLKINV_10149,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_37_SRINV_10150,
      O => ALU_B(36)
    );
  ALU_B_37 : X_SFF
    generic map(
      LOC => "SLICE_X79Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_37_DXMUX_10158,
      CE => VCC,
      CLK => ALU_B_37_CLKINV_10149,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_37_SRINV_10150,
      O => ALU_B(37)
    );
  ALU_B_28 : X_SFF
    generic map(
      LOC => "SLICE_X54Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_29_DYMUX_10172,
      CE => VCC,
      CLK => ALU_B_29_CLKINV_10169,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_29_SRINV_10170,
      O => ALU_B(28)
    );
  ALU_B_29 : X_SFF
    generic map(
      LOC => "SLICE_X54Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_29_DXMUX_10178,
      CE => VCC,
      CLK => ALU_B_29_CLKINV_10169,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_29_SRINV_10170,
      O => ALU_B(29)
    );
  ALU_B_62 : X_SFF
    generic map(
      LOC => "SLICE_X57Y178",
      INIT => '0'
    )
    port map (
      I => ALU_B_63_DYMUX_10192,
      CE => VCC,
      CLK => ALU_B_63_CLKINV_10189,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_63_SRINV_10190,
      O => ALU_B(62)
    );
  ALU_B_63 : X_SFF
    generic map(
      LOC => "SLICE_X57Y178",
      INIT => '0'
    )
    port map (
      I => ALU_B_63_DXMUX_10198,
      CE => VCC,
      CLK => ALU_B_63_CLKINV_10189,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_63_SRINV_10190,
      O => ALU_B(63)
    );
  ALU_B_54 : X_SFF
    generic map(
      LOC => "SLICE_X72Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_55_DYMUX_10212,
      CE => VCC,
      CLK => ALU_B_55_CLKINV_10209,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_55_SRINV_10210,
      O => ALU_B(54)
    );
  ALU_B_55 : X_SFF
    generic map(
      LOC => "SLICE_X72Y189",
      INIT => '0'
    )
    port map (
      I => ALU_B_55_DXMUX_10218,
      CE => VCC,
      CLK => ALU_B_55_CLKINV_10209,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_55_SRINV_10210,
      O => ALU_B(55)
    );
  ALU_B_46 : X_SFF
    generic map(
      LOC => "SLICE_X52Y180",
      INIT => '0'
    )
    port map (
      I => ALU_B_47_DYMUX_10232,
      CE => VCC,
      CLK => ALU_B_47_CLKINV_10229,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_47_SRINV_10230,
      O => ALU_B(46)
    );
  ALU_B_47 : X_SFF
    generic map(
      LOC => "SLICE_X52Y180",
      INIT => '0'
    )
    port map (
      I => ALU_B_47_DXMUX_10238,
      CE => VCC,
      CLK => ALU_B_47_CLKINV_10229,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_47_SRINV_10230,
      O => ALU_B(47)
    );
  ALU_B_38 : X_SFF
    generic map(
      LOC => "SLICE_X68Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_39_DYMUX_10252,
      CE => VCC,
      CLK => ALU_B_39_CLKINV_10249,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_39_SRINV_10250,
      O => ALU_B(38)
    );
  ALU_B_39 : X_SFF
    generic map(
      LOC => "SLICE_X68Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_39_DXMUX_10258,
      CE => VCC,
      CLK => ALU_B_39_CLKINV_10249,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_39_SRINV_10250,
      O => ALU_B(39)
    );
  ALU_B_56 : X_SFF
    generic map(
      LOC => "SLICE_X69Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_57_DYMUX_10272,
      CE => VCC,
      CLK => ALU_B_57_CLKINV_10269,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_57_SRINV_10270,
      O => ALU_B(56)
    );
  ALU_B_57 : X_SFF
    generic map(
      LOC => "SLICE_X69Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_57_DXMUX_10278,
      CE => VCC,
      CLK => ALU_B_57_CLKINV_10269,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_57_SRINV_10270,
      O => ALU_B(57)
    );
  ALU_B_48 : X_SFF
    generic map(
      LOC => "SLICE_X75Y187",
      INIT => '0'
    )
    port map (
      I => ALU_B_49_DYMUX_10292,
      CE => VCC,
      CLK => ALU_B_49_CLKINV_10289,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_49_SRINV_10290,
      O => ALU_B(48)
    );
  ALU_B_49 : X_SFF
    generic map(
      LOC => "SLICE_X75Y187",
      INIT => '0'
    )
    port map (
      I => ALU_B_49_DXMUX_10298,
      CE => VCC,
      CLK => ALU_B_49_CLKINV_10289,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_49_SRINV_10290,
      O => ALU_B(49)
    );
  ALU_B_58 : X_SFF
    generic map(
      LOC => "SLICE_X60Y181",
      INIT => '0'
    )
    port map (
      I => ALU_B_59_DYMUX_10312,
      CE => VCC,
      CLK => ALU_B_59_CLKINV_10309,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_59_SRINV_10310,
      O => ALU_B(58)
    );
  ALU_B_59 : X_SFF
    generic map(
      LOC => "SLICE_X60Y181",
      INIT => '0'
    )
    port map (
      I => ALU_B_59_DXMUX_10318,
      CE => VCC,
      CLK => ALU_B_59_CLKINV_10309,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_59_SRINV_10310,
      O => ALU_B(59)
    );
  ALU_B_0 : X_SFF
    generic map(
      LOC => "SLICE_X78Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_1_DYMUX_10332,
      CE => VCC,
      CLK => ALU_B_1_CLKINV_10329,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_1_SRINV_10330,
      O => ALU_B(0)
    );
  ALU_B_1 : X_SFF
    generic map(
      LOC => "SLICE_X78Y193",
      INIT => '0'
    )
    port map (
      I => ALU_B_1_DXMUX_10338,
      CE => VCC,
      CLK => ALU_B_1_CLKINV_10329,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_1_SRINV_10330,
      O => ALU_B(1)
    );
  ALU_B_2 : X_SFF
    generic map(
      LOC => "SLICE_X66Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_3_DYMUX_10352,
      CE => VCC,
      CLK => ALU_B_3_CLKINV_10349,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_3_SRINV_10350,
      O => ALU_B(2)
    );
  ALU_B_3 : X_SFF
    generic map(
      LOC => "SLICE_X66Y185",
      INIT => '0'
    )
    port map (
      I => ALU_B_3_DXMUX_10358,
      CE => VCC,
      CLK => ALU_B_3_CLKINV_10349,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_3_SRINV_10350,
      O => ALU_B(3)
    );
  ALU_B_4 : X_SFF
    generic map(
      LOC => "SLICE_X62Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_5_DYMUX_10372,
      CE => VCC,
      CLK => ALU_B_5_CLKINV_10369,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_5_SRINV_10370,
      O => ALU_B(4)
    );
  ALU_B_5 : X_SFF
    generic map(
      LOC => "SLICE_X62Y184",
      INIT => '0'
    )
    port map (
      I => ALU_B_5_DXMUX_10378,
      CE => VCC,
      CLK => ALU_B_5_CLKINV_10369,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_5_SRINV_10370,
      O => ALU_B(5)
    );
  ALU_B_6 : X_SFF
    generic map(
      LOC => "SLICE_X59Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_7_DYMUX_10392,
      CE => VCC,
      CLK => ALU_B_7_CLKINV_10389,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_7_SRINV_10390,
      O => ALU_B(6)
    );
  ALU_B_7 : X_SFF
    generic map(
      LOC => "SLICE_X59Y183",
      INIT => '0'
    )
    port map (
      I => ALU_B_7_DXMUX_10398,
      CE => VCC,
      CLK => ALU_B_7_CLKINV_10389,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_7_SRINV_10390,
      O => ALU_B(7)
    );
  ALU_B_8 : X_SFF
    generic map(
      LOC => "SLICE_X59Y179",
      INIT => '0'
    )
    port map (
      I => ALU_B_9_DYMUX_10412,
      CE => VCC,
      CLK => ALU_B_9_CLKINV_10409,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_9_SRINV_10410,
      O => ALU_B(8)
    );
  ALU_B_9 : X_SFF
    generic map(
      LOC => "SLICE_X59Y179",
      INIT => '0'
    )
    port map (
      I => ALU_B_9_DXMUX_10418,
      CE => VCC,
      CLK => ALU_B_9_CLKINV_10409,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ALU_B_9_SRINV_10410,
      O => ALU_B(9)
    );
  valE_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD764",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_0_2712,
      O => valE_0_O
    );
  valE_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD763",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_1_2714,
      O => valE_1_O
    );
  valE_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD760",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_2_2716,
      O => valE_2_O
    );
  valE_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD759",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_3_2717,
      O => valE_3_O
    );
  valE_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD758",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_4_2718,
      O => valE_4_O
    );
  valE_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD757",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_5_2719,
      O => valE_5_O
    );
  valE_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD756",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_6_2720,
      O => valE_6_O
    );
  valE_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD755",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_7_2721,
      O => valE_7_O
    );
  valE_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD754",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_8_2722,
      O => valE_8_O
    );
  valE_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD753",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_9_2723,
      O => valE_9_O
    );
  valE_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD748",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_10_2888,
      O => valE_10_O
    );
  valE_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD747",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_11_2890,
      O => valE_11_O
    );
  valE_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD736",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_20_2892,
      O => valE_20_O
    );
  valE_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD746",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_12_2893,
      O => valE_12_O
    );
  valE_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD735",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_21_2894,
      O => valE_21_O
    );
  valE_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD745",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_13_2895,
      O => valE_13_O
    );
  valE_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD720",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_30_2896,
      O => valE_30_O
    );
  valE_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD734",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_22_2897,
      O => valE_22_O
    );
  valE_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD744",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_14_2898,
      O => valE_14_O
    );
  valE_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD719",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_31_2899,
      O => valE_31_O
    );
  valE_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD733",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_23_2900,
      O => valE_23_O
    );
  valE_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD743",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_15_2901,
      O => valE_15_O
    );
  valE_40_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD710",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_40_2902,
      O => valE_40_O
    );
  valE_32_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD718",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_32_2903,
      O => valE_32_O
    );
  valE_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD732",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_24_2904,
      O => valE_24_O
    );
  valE_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD742",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_16_2905,
      O => valE_16_O
    );
  valE_41_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD709",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_41_2906,
      O => valE_41_O
    );
  valE_33_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD717",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_33_2907,
      O => valE_33_O
    );
  valE_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD731",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_25_2908,
      O => valE_25_O
    );
  valE_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD741",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_17_2909,
      O => valE_17_O
    );
  valE_50_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD694",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_50_2910,
      O => valE_50_O
    );
  valE_42_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD708",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_42_2911,
      O => valE_42_O
    );
  valE_34_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD716",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_34_2912,
      O => valE_34_O
    );
  valE_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD730",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_26_2913,
      O => valE_26_O
    );
  valE_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD740",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_18_2914,
      O => valE_18_O
    );
  valE_51_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD693",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_51_2915,
      O => valE_51_O
    );
  valE_43_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD707",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_43_2916,
      O => valE_43_O
    );
  valE_35_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD715",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_35_2917,
      O => valE_35_O
    );
  valE_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD729",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_27_2918,
      O => valE_27_O
    );
  valE_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD739",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_19_2919,
      O => valE_19_O
    );
  valE_60_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD682",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_60_2920,
      O => valE_60_O
    );
  valE_52_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD692",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_52_2921,
      O => valE_52_O
    );
  valE_44_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD706",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_44_2922,
      O => valE_44_O
    );
  valE_36_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD714",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_36_2923,
      O => valE_36_O
    );
  valE_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD728",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_28_2924,
      O => valE_28_O
    );
  valE_61_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD681",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_61_2925,
      O => valE_61_O
    );
  valE_53_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD691",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_53_2926,
      O => valE_53_O
    );
  valE_45_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD705",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_45_2927,
      O => valE_45_O
    );
  valE_37_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD713",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_37_2928,
      O => valE_37_O
    );
  valE_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD727",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_29_2929,
      O => valE_29_O
    );
  valE_62_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD680",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_62_2930,
      O => valE_62_O
    );
  valE_54_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD690",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_54_2931,
      O => valE_54_O
    );
  valE_46_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD698",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_46_2932,
      O => valE_46_O
    );
  valE_38_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD712",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_38_2933,
      O => valE_38_O
    );
  valE_63_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD679",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_63_2934,
      O => valE_63_O
    );
  valE_55_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD689",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_55_2935,
      O => valE_55_O
    );
  valE_47_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD697",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_47_2936,
      O => valE_47_O
    );
  valE_39_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD711",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_39_2937,
      O => valE_39_O
    );
  valE_56_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD686",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_56_2938,
      O => valE_56_O
    );
  valE_48_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD696",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_48_2939,
      O => valE_48_O
    );
  valE_57_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD685",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_57_2940,
      O => valE_57_O
    );
  valE_49_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD695",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_49_2941,
      O => valE_49_O
    );
  valE_58_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD684",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_58_2942,
      O => valE_58_O
    );
  valE_59_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD683",
      PATHPULSE => 526 ps
    )
    port map (
      I => valE_59_2943,
      O => valE_59_O
    );
  NlwBlock_ALU_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ALU_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

