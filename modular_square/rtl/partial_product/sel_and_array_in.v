`timescale 1ns/1ns
/*******************************************************************************
    Institute:   Xi'an Jiaotong University
    Department:  Microelectronic
    Author :     Li Xiaocong

    Unless you get the permission of the Author, you can't modify,
    distribute or use for commercial purposes.
*******************************************************************************/
module sel_and_array_in
(
	input wire [1023:0] al,
	input wire [1021:0] ctrl_1,
	input wire [1021:0] ctrl_2,
	input wire [1021:0] ctrl_3,
	input wire [1021:0] ctrl_4,
	input wire [1021:0] ctrl_5,
	input wire [1021:0] ctrl_6,
	input wire [1021:0] ctrl_7,
	input wire [1021:0] ctrl_8,
	input wire [1021:0] ctrl_9,
	input wire [1021:0] ctrl_10,
	input wire [1021:0] ctrl_11,
	input wire [1021:0] ctrl_12,
	input wire [1021:0] ctrl_13,
	input wire [1021:0] ctrl_14,
	input wire [1021:0] ctrl_15,
	input wire [1021:0] ctrl_16,
	input wire [1021:0] ctrl_17,
	input wire [1021:0] ctrl_18,
	input wire [1021:0] ctrl_19,
	input wire [1021:0] ctrl_20,
	input wire [1021:0] ctrl_21,
	input wire [1021:0] ctrl_22,
	input wire [1021:0] ctrl_23,
	input wire [1021:0] ctrl_24,
	input wire [1021:0] ctrl_25,
	input wire [1021:0] ctrl_26,
	input wire [1021:0] ctrl_27,
	input wire [1021:0] ctrl_28,
	input wire [1021:0] ctrl_29,
	input wire [1021:0] ctrl_30,
	input wire [1021:0] ctrl_31,
	input wire [1021:0] ctrl_32,
	input wire [1021:0] ctrl_33,
	input wire [1021:0] ctrl_34,
	input wire [1021:0] ctrl_35,
	input wire [1021:0] ctrl_36,
	input wire [1021:0] ctrl_37,
	input wire [1021:0] ctrl_38,
	input wire [1021:0] ctrl_39,
	input wire [1021:0] ctrl_40,
	input wire [1021:0] ctrl_41,
	input wire [1021:0] ctrl_42,
	input wire [1021:0] ctrl_43,
	input wire [1021:0] ctrl_44,
	input wire [1021:0] ctrl_45,
	input wire [1021:0] ctrl_46,
	input wire [1021:0] ctrl_47,
	input wire [1021:0] ctrl_48,
	input wire [1021:0] ctrl_49,
	input wire [1021:0] ctrl_50,
	input wire [1021:0] ctrl_51,
	input wire [1021:0] ctrl_52,
	input wire [1021:0] ctrl_53,
	input wire [1021:0] ctrl_54,
	input wire [1021:0] ctrl_55,
	input wire [1021:0] ctrl_56,
	input wire [1021:0] ctrl_57,
	input wire [1021:0] ctrl_58,
	input wire [1021:0] ctrl_59,
	input wire [1021:0] ctrl_60,
	input wire [1021:0] ctrl_61,
	input wire [1021:0] ctrl_62,
	input wire [1021:0] ctrl_63,
	input wire [1021:0] ctrl_64,
	input wire [1021:0] ctrl_65,
	input wire [1021:0] ctrl_66,
	input wire [1021:0] ctrl_67,
	input wire [1021:0] ctrl_68,
	input wire [1021:0] ctrl_69,
	input wire [1021:0] ctrl_70,
	input wire [1021:0] ctrl_71,
	input wire [1021:0] ctrl_72,
	input wire [1021:0] ctrl_73,
	input wire [1021:0] ctrl_74,
	input wire [1021:0] ctrl_75,
	input wire [1021:0] ctrl_76,
	input wire [1021:0] ctrl_77,
	input wire [1021:0] ctrl_78,
	input wire [1021:0] ctrl_79,
	input wire [1021:0] ctrl_80,
	input wire [1021:0] ctrl_81,
	input wire [1021:0] ctrl_82,
	input wire [1021:0] ctrl_83,
	input wire [1021:0] ctrl_84,
	input wire [1021:0] ctrl_85,
	input wire [1021:0] ctrl_86,
	input wire [1021:0] ctrl_87,
	input wire [1021:0] ctrl_88,
	input wire [1021:0] ctrl_89,
	input wire [1021:0] ctrl_90,
	input wire [1021:0] ctrl_91,
	input wire [1021:0] ctrl_92,
	input wire [1021:0] ctrl_93,
	input wire [1021:0] ctrl_94,
	input wire [1021:0] ctrl_95,
	input wire [1021:0] ctrl_96,
	input wire [1021:0] ctrl_97,
	input wire [1021:0] ctrl_98,
	input wire [1021:0] ctrl_99,
	input wire [1021:0] ctrl_100,
	input wire [1021:0] ctrl_101,
	input wire [1021:0] ctrl_102,
	input wire [1021:0] ctrl_103,
	input wire [1021:0] ctrl_104,
	input wire [1021:0] ctrl_105,
	input wire [1021:0] ctrl_106,
	input wire [1021:0] ctrl_107,
	input wire [1021:0] ctrl_108,
	input wire [1021:0] ctrl_109,
	input wire [1021:0] ctrl_110,
	input wire [1021:0] ctrl_111,
	input wire [1021:0] ctrl_112,
	input wire [1021:0] ctrl_113,
	input wire [1021:0] ctrl_114,
	input wire [1021:0] ctrl_115,
	input wire [1021:0] ctrl_116,
	input wire [1021:0] ctrl_117,
	input wire [1021:0] ctrl_118,
	input wire [1021:0] ctrl_119,
	input wire [1021:0] ctrl_120,
	input wire [1021:0] ctrl_121,
	input wire [1021:0] ctrl_122,
	input wire [1021:0] ctrl_123,
	input wire [1021:0] ctrl_124,
	input wire [1021:0] ctrl_125,
	input wire [1021:0] ctrl_126,
	input wire [1021:0] ctrl_127,
	input wire [1021:0] ctrl_128,
	output wire [1021:0] a_left_1,
	output wire [1021:0] a_left_2,
	output wire [1021:0] a_left_3,
	output wire [1021:0] a_left_4,
	output wire [1021:0] a_left_5,
	output wire [1021:0] a_left_6,
	output wire [1021:0] a_left_7,
	output wire [1021:0] a_left_8,
	output wire [1021:0] a_left_9,
	output wire [1021:0] a_left_10,
	output wire [1021:0] a_left_11,
	output wire [1021:0] a_left_12,
	output wire [1021:0] a_left_13,
	output wire [1021:0] a_left_14,
	output wire [1021:0] a_left_15,
	output wire [1021:0] a_left_16,
	output wire [1021:0] a_left_17,
	output wire [1021:0] a_left_18,
	output wire [1021:0] a_left_19,
	output wire [1021:0] a_left_20,
	output wire [1021:0] a_left_21,
	output wire [1021:0] a_left_22,
	output wire [1021:0] a_left_23,
	output wire [1021:0] a_left_24,
	output wire [1021:0] a_left_25,
	output wire [1021:0] a_left_26,
	output wire [1021:0] a_left_27,
	output wire [1021:0] a_left_28,
	output wire [1021:0] a_left_29,
	output wire [1021:0] a_left_30,
	output wire [1021:0] a_left_31,
	output wire [1021:0] a_left_32,
	output wire [1021:0] a_left_33,
	output wire [1021:0] a_left_34,
	output wire [1021:0] a_left_35,
	output wire [1021:0] a_left_36,
	output wire [1021:0] a_left_37,
	output wire [1021:0] a_left_38,
	output wire [1021:0] a_left_39,
	output wire [1021:0] a_left_40,
	output wire [1021:0] a_left_41,
	output wire [1021:0] a_left_42,
	output wire [1021:0] a_left_43,
	output wire [1021:0] a_left_44,
	output wire [1021:0] a_left_45,
	output wire [1021:0] a_left_46,
	output wire [1021:0] a_left_47,
	output wire [1021:0] a_left_48,
	output wire [1021:0] a_left_49,
	output wire [1021:0] a_left_50,
	output wire [1021:0] a_left_51,
	output wire [1021:0] a_left_52,
	output wire [1021:0] a_left_53,
	output wire [1021:0] a_left_54,
	output wire [1021:0] a_left_55,
	output wire [1021:0] a_left_56,
	output wire [1021:0] a_left_57,
	output wire [1021:0] a_left_58,
	output wire [1021:0] a_left_59,
	output wire [1021:0] a_left_60,
	output wire [1021:0] a_left_61,
	output wire [1021:0] a_left_62,
	output wire [1021:0] a_left_63,
	output wire [1021:0] a_left_64,
	output wire [1021:0] a_left_65,
	output wire [1021:0] a_left_66,
	output wire [1021:0] a_left_67,
	output wire [1021:0] a_left_68,
	output wire [1021:0] a_left_69,
	output wire [1021:0] a_left_70,
	output wire [1021:0] a_left_71,
	output wire [1021:0] a_left_72,
	output wire [1021:0] a_left_73,
	output wire [1021:0] a_left_74,
	output wire [1021:0] a_left_75,
	output wire [1021:0] a_left_76,
	output wire [1021:0] a_left_77,
	output wire [1021:0] a_left_78,
	output wire [1021:0] a_left_79,
	output wire [1021:0] a_left_80,
	output wire [1021:0] a_left_81,
	output wire [1021:0] a_left_82,
	output wire [1021:0] a_left_83,
	output wire [1021:0] a_left_84,
	output wire [1021:0] a_left_85,
	output wire [1021:0] a_left_86,
	output wire [1021:0] a_left_87,
	output wire [1021:0] a_left_88,
	output wire [1021:0] a_left_89,
	output wire [1021:0] a_left_90,
	output wire [1021:0] a_left_91,
	output wire [1021:0] a_left_92,
	output wire [1021:0] a_left_93,
	output wire [1021:0] a_left_94,
	output wire [1021:0] a_left_95,
	output wire [1021:0] a_left_96,
	output wire [1021:0] a_left_97,
	output wire [1021:0] a_left_98,
	output wire [1021:0] a_left_99,
	output wire [1021:0] a_left_100,
	output wire [1021:0] a_left_101,
	output wire [1021:0] a_left_102,
	output wire [1021:0] a_left_103,
	output wire [1021:0] a_left_104,
	output wire [1021:0] a_left_105,
	output wire [1021:0] a_left_106,
	output wire [1021:0] a_left_107,
	output wire [1021:0] a_left_108,
	output wire [1021:0] a_left_109,
	output wire [1021:0] a_left_110,
	output wire [1021:0] a_left_111,
	output wire [1021:0] a_left_112,
	output wire [1021:0] a_left_113,
	output wire [1021:0] a_left_114,
	output wire [1021:0] a_left_115,
	output wire [1021:0] a_left_116,
	output wire [1021:0] a_left_117,
	output wire [1021:0] a_left_118,
	output wire [1021:0] a_left_119,
	output wire [1021:0] a_left_120,
	output wire [1021:0] a_left_121,
	output wire [1021:0] a_left_122,
	output wire [1021:0] a_left_123,
	output wire [1021:0] a_left_124,
	output wire [1021:0] a_left_125,
	output wire [1021:0] a_left_126,
	output wire [1021:0] a_left_127,
	output wire [1021:0] a_left_128,
	output wire [1021:0] a_right_1,
	output wire [1021:0] a_right_2,
	output wire [1021:0] a_right_3,
	output wire [1021:0] a_right_4,
	output wire [1021:0] a_right_5,
	output wire [1021:0] a_right_6,
	output wire [1021:0] a_right_7,
	output wire [1021:0] a_right_8,
	output wire [1021:0] a_right_9,
	output wire [1021:0] a_right_10,
	output wire [1021:0] a_right_11,
	output wire [1021:0] a_right_12,
	output wire [1021:0] a_right_13,
	output wire [1021:0] a_right_14,
	output wire [1021:0] a_right_15,
	output wire [1021:0] a_right_16,
	output wire [1021:0] a_right_17,
	output wire [1021:0] a_right_18,
	output wire [1021:0] a_right_19,
	output wire [1021:0] a_right_20,
	output wire [1021:0] a_right_21,
	output wire [1021:0] a_right_22,
	output wire [1021:0] a_right_23,
	output wire [1021:0] a_right_24,
	output wire [1021:0] a_right_25,
	output wire [1021:0] a_right_26,
	output wire [1021:0] a_right_27,
	output wire [1021:0] a_right_28,
	output wire [1021:0] a_right_29,
	output wire [1021:0] a_right_30,
	output wire [1021:0] a_right_31,
	output wire [1021:0] a_right_32,
	output wire [1021:0] a_right_33,
	output wire [1021:0] a_right_34,
	output wire [1021:0] a_right_35,
	output wire [1021:0] a_right_36,
	output wire [1021:0] a_right_37,
	output wire [1021:0] a_right_38,
	output wire [1021:0] a_right_39,
	output wire [1021:0] a_right_40,
	output wire [1021:0] a_right_41,
	output wire [1021:0] a_right_42,
	output wire [1021:0] a_right_43,
	output wire [1021:0] a_right_44,
	output wire [1021:0] a_right_45,
	output wire [1021:0] a_right_46,
	output wire [1021:0] a_right_47,
	output wire [1021:0] a_right_48,
	output wire [1021:0] a_right_49,
	output wire [1021:0] a_right_50,
	output wire [1021:0] a_right_51,
	output wire [1021:0] a_right_52,
	output wire [1021:0] a_right_53,
	output wire [1021:0] a_right_54,
	output wire [1021:0] a_right_55,
	output wire [1021:0] a_right_56,
	output wire [1021:0] a_right_57,
	output wire [1021:0] a_right_58,
	output wire [1021:0] a_right_59,
	output wire [1021:0] a_right_60,
	output wire [1021:0] a_right_61,
	output wire [1021:0] a_right_62,
	output wire [1021:0] a_right_63,
	output wire [1021:0] a_right_64,
	output wire [1021:0] a_right_65,
	output wire [1021:0] a_right_66,
	output wire [1021:0] a_right_67,
	output wire [1021:0] a_right_68,
	output wire [1021:0] a_right_69,
	output wire [1021:0] a_right_70,
	output wire [1021:0] a_right_71,
	output wire [1021:0] a_right_72,
	output wire [1021:0] a_right_73,
	output wire [1021:0] a_right_74,
	output wire [1021:0] a_right_75,
	output wire [1021:0] a_right_76,
	output wire [1021:0] a_right_77,
	output wire [1021:0] a_right_78,
	output wire [1021:0] a_right_79,
	output wire [1021:0] a_right_80,
	output wire [1021:0] a_right_81,
	output wire [1021:0] a_right_82,
	output wire [1021:0] a_right_83,
	output wire [1021:0] a_right_84,
	output wire [1021:0] a_right_85,
	output wire [1021:0] a_right_86,
	output wire [1021:0] a_right_87,
	output wire [1021:0] a_right_88,
	output wire [1021:0] a_right_89,
	output wire [1021:0] a_right_90,
	output wire [1021:0] a_right_91,
	output wire [1021:0] a_right_92,
	output wire [1021:0] a_right_93,
	output wire [1021:0] a_right_94,
	output wire [1021:0] a_right_95,
	output wire [1021:0] a_right_96,
	output wire [1021:0] a_right_97,
	output wire [1021:0] a_right_98,
	output wire [1021:0] a_right_99,
	output wire [1021:0] a_right_100,
	output wire [1021:0] a_right_101,
	output wire [1021:0] a_right_102,
	output wire [1021:0] a_right_103,
	output wire [1021:0] a_right_104,
	output wire [1021:0] a_right_105,
	output wire [1021:0] a_right_106,
	output wire [1021:0] a_right_107,
	output wire [1021:0] a_right_108,
	output wire [1021:0] a_right_109,
	output wire [1021:0] a_right_110,
	output wire [1021:0] a_right_111,
	output wire [1021:0] a_right_112,
	output wire [1021:0] a_right_113,
	output wire [1021:0] a_right_114,
	output wire [1021:0] a_right_115,
	output wire [1021:0] a_right_116,
	output wire [1021:0] a_right_117,
	output wire [1021:0] a_right_118,
	output wire [1021:0] a_right_119,
	output wire [1021:0] a_right_120,
	output wire [1021:0] a_right_121,
	output wire [1021:0] a_right_122,
	output wire [1021:0] a_right_123,
	output wire [1021:0] a_right_124,
	output wire [1021:0] a_right_125,
	output wire [1021:0] a_right_126,
	output wire [1021:0] a_right_127,
	output wire [1021:0] a_right_128
);


genvar k;
generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_1
		assign a_left_1[k] = ctrl_1[k] ? al[512 - 1] : al[1024 - 1];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_2
		assign a_left_2[k] = ctrl_2[k] ? al[512 - 2] : al[1024 - 2];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_3
		assign a_left_3[k] = ctrl_3[k] ? al[512 - 3] : al[1024 - 3];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_4
		assign a_left_4[k] = ctrl_4[k] ? al[512 - 4] : al[1024 - 4];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_5
		assign a_left_5[k] = ctrl_5[k] ? al[512 - 5] : al[1024 - 5];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_6
		assign a_left_6[k] = ctrl_6[k] ? al[512 - 6] : al[1024 - 6];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_7
		assign a_left_7[k] = ctrl_7[k] ? al[512 - 7] : al[1024 - 7];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_8
		assign a_left_8[k] = ctrl_8[k] ? al[512 - 8] : al[1024 - 8];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_9
		assign a_left_9[k] = ctrl_9[k] ? al[512 - 9] : al[1024 - 9];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_10
		assign a_left_10[k] = ctrl_10[k] ? al[512 - 10] : al[1024 - 10];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_11
		assign a_left_11[k] = ctrl_11[k] ? al[512 - 11] : al[1024 - 11];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_12
		assign a_left_12[k] = ctrl_12[k] ? al[512 - 12] : al[1024 - 12];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_13
		assign a_left_13[k] = ctrl_13[k] ? al[512 - 13] : al[1024 - 13];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_14
		assign a_left_14[k] = ctrl_14[k] ? al[512 - 14] : al[1024 - 14];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_15
		assign a_left_15[k] = ctrl_15[k] ? al[512 - 15] : al[1024 - 15];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_16
		assign a_left_16[k] = ctrl_16[k] ? al[512 - 16] : al[1024 - 16];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_17
		assign a_left_17[k] = ctrl_17[k] ? al[512 - 17] : al[1024 - 17];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_18
		assign a_left_18[k] = ctrl_18[k] ? al[512 - 18] : al[1024 - 18];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_19
		assign a_left_19[k] = ctrl_19[k] ? al[512 - 19] : al[1024 - 19];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_20
		assign a_left_20[k] = ctrl_20[k] ? al[512 - 20] : al[1024 - 20];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_21
		assign a_left_21[k] = ctrl_21[k] ? al[512 - 21] : al[1024 - 21];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_22
		assign a_left_22[k] = ctrl_22[k] ? al[512 - 22] : al[1024 - 22];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_23
		assign a_left_23[k] = ctrl_23[k] ? al[512 - 23] : al[1024 - 23];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_24
		assign a_left_24[k] = ctrl_24[k] ? al[512 - 24] : al[1024 - 24];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_25
		assign a_left_25[k] = ctrl_25[k] ? al[512 - 25] : al[1024 - 25];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_26
		assign a_left_26[k] = ctrl_26[k] ? al[512 - 26] : al[1024 - 26];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_27
		assign a_left_27[k] = ctrl_27[k] ? al[512 - 27] : al[1024 - 27];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_28
		assign a_left_28[k] = ctrl_28[k] ? al[512 - 28] : al[1024 - 28];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_29
		assign a_left_29[k] = ctrl_29[k] ? al[512 - 29] : al[1024 - 29];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_30
		assign a_left_30[k] = ctrl_30[k] ? al[512 - 30] : al[1024 - 30];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_31
		assign a_left_31[k] = ctrl_31[k] ? al[512 - 31] : al[1024 - 31];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_32
		assign a_left_32[k] = ctrl_32[k] ? al[512 - 32] : al[1024 - 32];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_33
		assign a_left_33[k] = ctrl_33[k] ? al[512 - 33] : al[1024 - 33];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_34
		assign a_left_34[k] = ctrl_34[k] ? al[512 - 34] : al[1024 - 34];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_35
		assign a_left_35[k] = ctrl_35[k] ? al[512 - 35] : al[1024 - 35];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_36
		assign a_left_36[k] = ctrl_36[k] ? al[512 - 36] : al[1024 - 36];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_37
		assign a_left_37[k] = ctrl_37[k] ? al[512 - 37] : al[1024 - 37];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_38
		assign a_left_38[k] = ctrl_38[k] ? al[512 - 38] : al[1024 - 38];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_39
		assign a_left_39[k] = ctrl_39[k] ? al[512 - 39] : al[1024 - 39];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_40
		assign a_left_40[k] = ctrl_40[k] ? al[512 - 40] : al[1024 - 40];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_41
		assign a_left_41[k] = ctrl_41[k] ? al[512 - 41] : al[1024 - 41];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_42
		assign a_left_42[k] = ctrl_42[k] ? al[512 - 42] : al[1024 - 42];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_43
		assign a_left_43[k] = ctrl_43[k] ? al[512 - 43] : al[1024 - 43];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_44
		assign a_left_44[k] = ctrl_44[k] ? al[512 - 44] : al[1024 - 44];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_45
		assign a_left_45[k] = ctrl_45[k] ? al[512 - 45] : al[1024 - 45];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_46
		assign a_left_46[k] = ctrl_46[k] ? al[512 - 46] : al[1024 - 46];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_47
		assign a_left_47[k] = ctrl_47[k] ? al[512 - 47] : al[1024 - 47];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_48
		assign a_left_48[k] = ctrl_48[k] ? al[512 - 48] : al[1024 - 48];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_49
		assign a_left_49[k] = ctrl_49[k] ? al[512 - 49] : al[1024 - 49];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_50
		assign a_left_50[k] = ctrl_50[k] ? al[512 - 50] : al[1024 - 50];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_51
		assign a_left_51[k] = ctrl_51[k] ? al[512 - 51] : al[1024 - 51];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_52
		assign a_left_52[k] = ctrl_52[k] ? al[512 - 52] : al[1024 - 52];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_53
		assign a_left_53[k] = ctrl_53[k] ? al[512 - 53] : al[1024 - 53];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_54
		assign a_left_54[k] = ctrl_54[k] ? al[512 - 54] : al[1024 - 54];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_55
		assign a_left_55[k] = ctrl_55[k] ? al[512 - 55] : al[1024 - 55];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_56
		assign a_left_56[k] = ctrl_56[k] ? al[512 - 56] : al[1024 - 56];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_57
		assign a_left_57[k] = ctrl_57[k] ? al[512 - 57] : al[1024 - 57];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_58
		assign a_left_58[k] = ctrl_58[k] ? al[512 - 58] : al[1024 - 58];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_59
		assign a_left_59[k] = ctrl_59[k] ? al[512 - 59] : al[1024 - 59];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_60
		assign a_left_60[k] = ctrl_60[k] ? al[512 - 60] : al[1024 - 60];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_61
		assign a_left_61[k] = ctrl_61[k] ? al[512 - 61] : al[1024 - 61];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_62
		assign a_left_62[k] = ctrl_62[k] ? al[512 - 62] : al[1024 - 62];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_63
		assign a_left_63[k] = ctrl_63[k] ? al[512 - 63] : al[1024 - 63];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_64
		assign a_left_64[k] = ctrl_64[k] ? al[512 - 64] : al[1024 - 64];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_65
		assign a_left_65[k] = ctrl_65[k] ? al[512 - 65] : al[1024 - 65];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_66
		assign a_left_66[k] = ctrl_66[k] ? al[512 - 66] : al[1024 - 66];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_67
		assign a_left_67[k] = ctrl_67[k] ? al[512 - 67] : al[1024 - 67];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_68
		assign a_left_68[k] = ctrl_68[k] ? al[512 - 68] : al[1024 - 68];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_69
		assign a_left_69[k] = ctrl_69[k] ? al[512 - 69] : al[1024 - 69];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_70
		assign a_left_70[k] = ctrl_70[k] ? al[512 - 70] : al[1024 - 70];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_71
		assign a_left_71[k] = ctrl_71[k] ? al[512 - 71] : al[1024 - 71];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_72
		assign a_left_72[k] = ctrl_72[k] ? al[512 - 72] : al[1024 - 72];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_73
		assign a_left_73[k] = ctrl_73[k] ? al[512 - 73] : al[1024 - 73];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_74
		assign a_left_74[k] = ctrl_74[k] ? al[512 - 74] : al[1024 - 74];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_75
		assign a_left_75[k] = ctrl_75[k] ? al[512 - 75] : al[1024 - 75];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_76
		assign a_left_76[k] = ctrl_76[k] ? al[512 - 76] : al[1024 - 76];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_77
		assign a_left_77[k] = ctrl_77[k] ? al[512 - 77] : al[1024 - 77];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_78
		assign a_left_78[k] = ctrl_78[k] ? al[512 - 78] : al[1024 - 78];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_79
		assign a_left_79[k] = ctrl_79[k] ? al[512 - 79] : al[1024 - 79];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_80
		assign a_left_80[k] = ctrl_80[k] ? al[512 - 80] : al[1024 - 80];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_81
		assign a_left_81[k] = ctrl_81[k] ? al[512 - 81] : al[1024 - 81];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_82
		assign a_left_82[k] = ctrl_82[k] ? al[512 - 82] : al[1024 - 82];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_83
		assign a_left_83[k] = ctrl_83[k] ? al[512 - 83] : al[1024 - 83];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_84
		assign a_left_84[k] = ctrl_84[k] ? al[512 - 84] : al[1024 - 84];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_85
		assign a_left_85[k] = ctrl_85[k] ? al[512 - 85] : al[1024 - 85];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_86
		assign a_left_86[k] = ctrl_86[k] ? al[512 - 86] : al[1024 - 86];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_87
		assign a_left_87[k] = ctrl_87[k] ? al[512 - 87] : al[1024 - 87];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_88
		assign a_left_88[k] = ctrl_88[k] ? al[512 - 88] : al[1024 - 88];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_89
		assign a_left_89[k] = ctrl_89[k] ? al[512 - 89] : al[1024 - 89];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_90
		assign a_left_90[k] = ctrl_90[k] ? al[512 - 90] : al[1024 - 90];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_91
		assign a_left_91[k] = ctrl_91[k] ? al[512 - 91] : al[1024 - 91];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_92
		assign a_left_92[k] = ctrl_92[k] ? al[512 - 92] : al[1024 - 92];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_93
		assign a_left_93[k] = ctrl_93[k] ? al[512 - 93] : al[1024 - 93];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_94
		assign a_left_94[k] = ctrl_94[k] ? al[512 - 94] : al[1024 - 94];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_95
		assign a_left_95[k] = ctrl_95[k] ? al[512 - 95] : al[1024 - 95];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_96
		assign a_left_96[k] = ctrl_96[k] ? al[512 - 96] : al[1024 - 96];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_97
		assign a_left_97[k] = ctrl_97[k] ? al[512 - 97] : al[1024 - 97];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_98
		assign a_left_98[k] = ctrl_98[k] ? al[512 - 98] : al[1024 - 98];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_99
		assign a_left_99[k] = ctrl_99[k] ? al[512 - 99] : al[1024 - 99];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_100
		assign a_left_100[k] = ctrl_100[k] ? al[512 - 100] : al[1024 - 100];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_101
		assign a_left_101[k] = ctrl_101[k] ? al[512 - 101] : al[1024 - 101];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_102
		assign a_left_102[k] = ctrl_102[k] ? al[512 - 102] : al[1024 - 102];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_103
		assign a_left_103[k] = ctrl_103[k] ? al[512 - 103] : al[1024 - 103];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_104
		assign a_left_104[k] = ctrl_104[k] ? al[512 - 104] : al[1024 - 104];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_105
		assign a_left_105[k] = ctrl_105[k] ? al[512 - 105] : al[1024 - 105];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_106
		assign a_left_106[k] = ctrl_106[k] ? al[512 - 106] : al[1024 - 106];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_107
		assign a_left_107[k] = ctrl_107[k] ? al[512 - 107] : al[1024 - 107];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_108
		assign a_left_108[k] = ctrl_108[k] ? al[512 - 108] : al[1024 - 108];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_109
		assign a_left_109[k] = ctrl_109[k] ? al[512 - 109] : al[1024 - 109];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_110
		assign a_left_110[k] = ctrl_110[k] ? al[512 - 110] : al[1024 - 110];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_111
		assign a_left_111[k] = ctrl_111[k] ? al[512 - 111] : al[1024 - 111];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_112
		assign a_left_112[k] = ctrl_112[k] ? al[512 - 112] : al[1024 - 112];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_113
		assign a_left_113[k] = ctrl_113[k] ? al[512 - 113] : al[1024 - 113];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_114
		assign a_left_114[k] = ctrl_114[k] ? al[512 - 114] : al[1024 - 114];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_115
		assign a_left_115[k] = ctrl_115[k] ? al[512 - 115] : al[1024 - 115];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_116
		assign a_left_116[k] = ctrl_116[k] ? al[512 - 116] : al[1024 - 116];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_117
		assign a_left_117[k] = ctrl_117[k] ? al[512 - 117] : al[1024 - 117];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_118
		assign a_left_118[k] = ctrl_118[k] ? al[512 - 118] : al[1024 - 118];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_119
		assign a_left_119[k] = ctrl_119[k] ? al[512 - 119] : al[1024 - 119];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_120
		assign a_left_120[k] = ctrl_120[k] ? al[512 - 120] : al[1024 - 120];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_121
		assign a_left_121[k] = ctrl_121[k] ? al[512 - 121] : al[1024 - 121];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_122
		assign a_left_122[k] = ctrl_122[k] ? al[512 - 122] : al[1024 - 122];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_123
		assign a_left_123[k] = ctrl_123[k] ? al[512 - 123] : al[1024 - 123];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_124
		assign a_left_124[k] = ctrl_124[k] ? al[512 - 124] : al[1024 - 124];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_125
		assign a_left_125[k] = ctrl_125[k] ? al[512 - 125] : al[1024 - 125];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_126
		assign a_left_126[k] = ctrl_126[k] ? al[512 - 126] : al[1024 - 126];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_127
		assign a_left_127[k] = ctrl_127[k] ? al[512 - 127] : al[1024 - 127];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_left_128
		assign a_left_128[k] = ctrl_128[k] ? al[512 - 128] : al[1024 - 128];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_1
		if(1022 - 1 - k < 0)
			assign a_right_1[1021 - k] = ctrl_1[1021 - k] ? al[1534 - 1 - k] : al[2046 - 1 - k];
		else if(1534 - 1 - k >= 1024)
			assign a_right_1[1021 - k] = ctrl_1[1021 - k] ? al[510 - 1 - k] : al[1022 - 1 - k];
		else
			assign a_right_1[1021 - k] = ctrl_1[1021 - k] ? al[1534 - 1 - k] : al[1022 - 1 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_2
		if(1022 - 2 - k < 0)
			assign a_right_2[1021 - k] = ctrl_2[1021 - k] ? al[1534 - 2 - k] : al[2046 - 2 - k];
		else if(1534 - 2 - k >= 1024)
			assign a_right_2[1021 - k] = ctrl_2[1021 - k] ? al[510 - 2 - k] : al[1022 - 2 - k];
		else
			assign a_right_2[1021 - k] = ctrl_2[1021 - k] ? al[1534 - 2 - k] : al[1022 - 2 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_3
		if(1022 - 3 - k < 0)
			assign a_right_3[1021 - k] = ctrl_3[1021 - k] ? al[1534 - 3 - k] : al[2046 - 3 - k];
		else if(1534 - 3 - k >= 1024)
			assign a_right_3[1021 - k] = ctrl_3[1021 - k] ? al[510 - 3 - k] : al[1022 - 3 - k];
		else
			assign a_right_3[1021 - k] = ctrl_3[1021 - k] ? al[1534 - 3 - k] : al[1022 - 3 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_4
		if(1022 - 4 - k < 0)
			assign a_right_4[1021 - k] = ctrl_4[1021 - k] ? al[1534 - 4 - k] : al[2046 - 4 - k];
		else if(1534 - 4 - k >= 1024)
			assign a_right_4[1021 - k] = ctrl_4[1021 - k] ? al[510 - 4 - k] : al[1022 - 4 - k];
		else
			assign a_right_4[1021 - k] = ctrl_4[1021 - k] ? al[1534 - 4 - k] : al[1022 - 4 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_5
		if(1022 - 5 - k < 0)
			assign a_right_5[1021 - k] = ctrl_5[1021 - k] ? al[1534 - 5 - k] : al[2046 - 5 - k];
		else if(1534 - 5 - k >= 1024)
			assign a_right_5[1021 - k] = ctrl_5[1021 - k] ? al[510 - 5 - k] : al[1022 - 5 - k];
		else
			assign a_right_5[1021 - k] = ctrl_5[1021 - k] ? al[1534 - 5 - k] : al[1022 - 5 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_6
		if(1022 - 6 - k < 0)
			assign a_right_6[1021 - k] = ctrl_6[1021 - k] ? al[1534 - 6 - k] : al[2046 - 6 - k];
		else if(1534 - 6 - k >= 1024)
			assign a_right_6[1021 - k] = ctrl_6[1021 - k] ? al[510 - 6 - k] : al[1022 - 6 - k];
		else
			assign a_right_6[1021 - k] = ctrl_6[1021 - k] ? al[1534 - 6 - k] : al[1022 - 6 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_7
		if(1022 - 7 - k < 0)
			assign a_right_7[1021 - k] = ctrl_7[1021 - k] ? al[1534 - 7 - k] : al[2046 - 7 - k];
		else if(1534 - 7 - k >= 1024)
			assign a_right_7[1021 - k] = ctrl_7[1021 - k] ? al[510 - 7 - k] : al[1022 - 7 - k];
		else
			assign a_right_7[1021 - k] = ctrl_7[1021 - k] ? al[1534 - 7 - k] : al[1022 - 7 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_8
		if(1022 - 8 - k < 0)
			assign a_right_8[1021 - k] = ctrl_8[1021 - k] ? al[1534 - 8 - k] : al[2046 - 8 - k];
		else if(1534 - 8 - k >= 1024)
			assign a_right_8[1021 - k] = ctrl_8[1021 - k] ? al[510 - 8 - k] : al[1022 - 8 - k];
		else
			assign a_right_8[1021 - k] = ctrl_8[1021 - k] ? al[1534 - 8 - k] : al[1022 - 8 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_9
		if(1022 - 9 - k < 0)
			assign a_right_9[1021 - k] = ctrl_9[1021 - k] ? al[1534 - 9 - k] : al[2046 - 9 - k];
		else if(1534 - 9 - k >= 1024)
			assign a_right_9[1021 - k] = ctrl_9[1021 - k] ? al[510 - 9 - k] : al[1022 - 9 - k];
		else
			assign a_right_9[1021 - k] = ctrl_9[1021 - k] ? al[1534 - 9 - k] : al[1022 - 9 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_10
		if(1022 - 10 - k < 0)
			assign a_right_10[1021 - k] = ctrl_10[1021 - k] ? al[1534 - 10 - k] : al[2046 - 10 - k];
		else if(1534 - 10 - k >= 1024)
			assign a_right_10[1021 - k] = ctrl_10[1021 - k] ? al[510 - 10 - k] : al[1022 - 10 - k];
		else
			assign a_right_10[1021 - k] = ctrl_10[1021 - k] ? al[1534 - 10 - k] : al[1022 - 10 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_11
		if(1022 - 11 - k < 0)
			assign a_right_11[1021 - k] = ctrl_11[1021 - k] ? al[1534 - 11 - k] : al[2046 - 11 - k];
		else if(1534 - 11 - k >= 1024)
			assign a_right_11[1021 - k] = ctrl_11[1021 - k] ? al[510 - 11 - k] : al[1022 - 11 - k];
		else
			assign a_right_11[1021 - k] = ctrl_11[1021 - k] ? al[1534 - 11 - k] : al[1022 - 11 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_12
		if(1022 - 12 - k < 0)
			assign a_right_12[1021 - k] = ctrl_12[1021 - k] ? al[1534 - 12 - k] : al[2046 - 12 - k];
		else if(1534 - 12 - k >= 1024)
			assign a_right_12[1021 - k] = ctrl_12[1021 - k] ? al[510 - 12 - k] : al[1022 - 12 - k];
		else
			assign a_right_12[1021 - k] = ctrl_12[1021 - k] ? al[1534 - 12 - k] : al[1022 - 12 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_13
		if(1022 - 13 - k < 0)
			assign a_right_13[1021 - k] = ctrl_13[1021 - k] ? al[1534 - 13 - k] : al[2046 - 13 - k];
		else if(1534 - 13 - k >= 1024)
			assign a_right_13[1021 - k] = ctrl_13[1021 - k] ? al[510 - 13 - k] : al[1022 - 13 - k];
		else
			assign a_right_13[1021 - k] = ctrl_13[1021 - k] ? al[1534 - 13 - k] : al[1022 - 13 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_14
		if(1022 - 14 - k < 0)
			assign a_right_14[1021 - k] = ctrl_14[1021 - k] ? al[1534 - 14 - k] : al[2046 - 14 - k];
		else if(1534 - 14 - k >= 1024)
			assign a_right_14[1021 - k] = ctrl_14[1021 - k] ? al[510 - 14 - k] : al[1022 - 14 - k];
		else
			assign a_right_14[1021 - k] = ctrl_14[1021 - k] ? al[1534 - 14 - k] : al[1022 - 14 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_15
		if(1022 - 15 - k < 0)
			assign a_right_15[1021 - k] = ctrl_15[1021 - k] ? al[1534 - 15 - k] : al[2046 - 15 - k];
		else if(1534 - 15 - k >= 1024)
			assign a_right_15[1021 - k] = ctrl_15[1021 - k] ? al[510 - 15 - k] : al[1022 - 15 - k];
		else
			assign a_right_15[1021 - k] = ctrl_15[1021 - k] ? al[1534 - 15 - k] : al[1022 - 15 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_16
		if(1022 - 16 - k < 0)
			assign a_right_16[1021 - k] = ctrl_16[1021 - k] ? al[1534 - 16 - k] : al[2046 - 16 - k];
		else if(1534 - 16 - k >= 1024)
			assign a_right_16[1021 - k] = ctrl_16[1021 - k] ? al[510 - 16 - k] : al[1022 - 16 - k];
		else
			assign a_right_16[1021 - k] = ctrl_16[1021 - k] ? al[1534 - 16 - k] : al[1022 - 16 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_17
		if(1022 - 17 - k < 0)
			assign a_right_17[1021 - k] = ctrl_17[1021 - k] ? al[1534 - 17 - k] : al[2046 - 17 - k];
		else if(1534 - 17 - k >= 1024)
			assign a_right_17[1021 - k] = ctrl_17[1021 - k] ? al[510 - 17 - k] : al[1022 - 17 - k];
		else
			assign a_right_17[1021 - k] = ctrl_17[1021 - k] ? al[1534 - 17 - k] : al[1022 - 17 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_18
		if(1022 - 18 - k < 0)
			assign a_right_18[1021 - k] = ctrl_18[1021 - k] ? al[1534 - 18 - k] : al[2046 - 18 - k];
		else if(1534 - 18 - k >= 1024)
			assign a_right_18[1021 - k] = ctrl_18[1021 - k] ? al[510 - 18 - k] : al[1022 - 18 - k];
		else
			assign a_right_18[1021 - k] = ctrl_18[1021 - k] ? al[1534 - 18 - k] : al[1022 - 18 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_19
		if(1022 - 19 - k < 0)
			assign a_right_19[1021 - k] = ctrl_19[1021 - k] ? al[1534 - 19 - k] : al[2046 - 19 - k];
		else if(1534 - 19 - k >= 1024)
			assign a_right_19[1021 - k] = ctrl_19[1021 - k] ? al[510 - 19 - k] : al[1022 - 19 - k];
		else
			assign a_right_19[1021 - k] = ctrl_19[1021 - k] ? al[1534 - 19 - k] : al[1022 - 19 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_20
		if(1022 - 20 - k < 0)
			assign a_right_20[1021 - k] = ctrl_20[1021 - k] ? al[1534 - 20 - k] : al[2046 - 20 - k];
		else if(1534 - 20 - k >= 1024)
			assign a_right_20[1021 - k] = ctrl_20[1021 - k] ? al[510 - 20 - k] : al[1022 - 20 - k];
		else
			assign a_right_20[1021 - k] = ctrl_20[1021 - k] ? al[1534 - 20 - k] : al[1022 - 20 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_21
		if(1022 - 21 - k < 0)
			assign a_right_21[1021 - k] = ctrl_21[1021 - k] ? al[1534 - 21 - k] : al[2046 - 21 - k];
		else if(1534 - 21 - k >= 1024)
			assign a_right_21[1021 - k] = ctrl_21[1021 - k] ? al[510 - 21 - k] : al[1022 - 21 - k];
		else
			assign a_right_21[1021 - k] = ctrl_21[1021 - k] ? al[1534 - 21 - k] : al[1022 - 21 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_22
		if(1022 - 22 - k < 0)
			assign a_right_22[1021 - k] = ctrl_22[1021 - k] ? al[1534 - 22 - k] : al[2046 - 22 - k];
		else if(1534 - 22 - k >= 1024)
			assign a_right_22[1021 - k] = ctrl_22[1021 - k] ? al[510 - 22 - k] : al[1022 - 22 - k];
		else
			assign a_right_22[1021 - k] = ctrl_22[1021 - k] ? al[1534 - 22 - k] : al[1022 - 22 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_23
		if(1022 - 23 - k < 0)
			assign a_right_23[1021 - k] = ctrl_23[1021 - k] ? al[1534 - 23 - k] : al[2046 - 23 - k];
		else if(1534 - 23 - k >= 1024)
			assign a_right_23[1021 - k] = ctrl_23[1021 - k] ? al[510 - 23 - k] : al[1022 - 23 - k];
		else
			assign a_right_23[1021 - k] = ctrl_23[1021 - k] ? al[1534 - 23 - k] : al[1022 - 23 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_24
		if(1022 - 24 - k < 0)
			assign a_right_24[1021 - k] = ctrl_24[1021 - k] ? al[1534 - 24 - k] : al[2046 - 24 - k];
		else if(1534 - 24 - k >= 1024)
			assign a_right_24[1021 - k] = ctrl_24[1021 - k] ? al[510 - 24 - k] : al[1022 - 24 - k];
		else
			assign a_right_24[1021 - k] = ctrl_24[1021 - k] ? al[1534 - 24 - k] : al[1022 - 24 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_25
		if(1022 - 25 - k < 0)
			assign a_right_25[1021 - k] = ctrl_25[1021 - k] ? al[1534 - 25 - k] : al[2046 - 25 - k];
		else if(1534 - 25 - k >= 1024)
			assign a_right_25[1021 - k] = ctrl_25[1021 - k] ? al[510 - 25 - k] : al[1022 - 25 - k];
		else
			assign a_right_25[1021 - k] = ctrl_25[1021 - k] ? al[1534 - 25 - k] : al[1022 - 25 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_26
		if(1022 - 26 - k < 0)
			assign a_right_26[1021 - k] = ctrl_26[1021 - k] ? al[1534 - 26 - k] : al[2046 - 26 - k];
		else if(1534 - 26 - k >= 1024)
			assign a_right_26[1021 - k] = ctrl_26[1021 - k] ? al[510 - 26 - k] : al[1022 - 26 - k];
		else
			assign a_right_26[1021 - k] = ctrl_26[1021 - k] ? al[1534 - 26 - k] : al[1022 - 26 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_27
		if(1022 - 27 - k < 0)
			assign a_right_27[1021 - k] = ctrl_27[1021 - k] ? al[1534 - 27 - k] : al[2046 - 27 - k];
		else if(1534 - 27 - k >= 1024)
			assign a_right_27[1021 - k] = ctrl_27[1021 - k] ? al[510 - 27 - k] : al[1022 - 27 - k];
		else
			assign a_right_27[1021 - k] = ctrl_27[1021 - k] ? al[1534 - 27 - k] : al[1022 - 27 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_28
		if(1022 - 28 - k < 0)
			assign a_right_28[1021 - k] = ctrl_28[1021 - k] ? al[1534 - 28 - k] : al[2046 - 28 - k];
		else if(1534 - 28 - k >= 1024)
			assign a_right_28[1021 - k] = ctrl_28[1021 - k] ? al[510 - 28 - k] : al[1022 - 28 - k];
		else
			assign a_right_28[1021 - k] = ctrl_28[1021 - k] ? al[1534 - 28 - k] : al[1022 - 28 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_29
		if(1022 - 29 - k < 0)
			assign a_right_29[1021 - k] = ctrl_29[1021 - k] ? al[1534 - 29 - k] : al[2046 - 29 - k];
		else if(1534 - 29 - k >= 1024)
			assign a_right_29[1021 - k] = ctrl_29[1021 - k] ? al[510 - 29 - k] : al[1022 - 29 - k];
		else
			assign a_right_29[1021 - k] = ctrl_29[1021 - k] ? al[1534 - 29 - k] : al[1022 - 29 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_30
		if(1022 - 30 - k < 0)
			assign a_right_30[1021 - k] = ctrl_30[1021 - k] ? al[1534 - 30 - k] : al[2046 - 30 - k];
		else if(1534 - 30 - k >= 1024)
			assign a_right_30[1021 - k] = ctrl_30[1021 - k] ? al[510 - 30 - k] : al[1022 - 30 - k];
		else
			assign a_right_30[1021 - k] = ctrl_30[1021 - k] ? al[1534 - 30 - k] : al[1022 - 30 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_31
		if(1022 - 31 - k < 0)
			assign a_right_31[1021 - k] = ctrl_31[1021 - k] ? al[1534 - 31 - k] : al[2046 - 31 - k];
		else if(1534 - 31 - k >= 1024)
			assign a_right_31[1021 - k] = ctrl_31[1021 - k] ? al[510 - 31 - k] : al[1022 - 31 - k];
		else
			assign a_right_31[1021 - k] = ctrl_31[1021 - k] ? al[1534 - 31 - k] : al[1022 - 31 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_32
		if(1022 - 32 - k < 0)
			assign a_right_32[1021 - k] = ctrl_32[1021 - k] ? al[1534 - 32 - k] : al[2046 - 32 - k];
		else if(1534 - 32 - k >= 1024)
			assign a_right_32[1021 - k] = ctrl_32[1021 - k] ? al[510 - 32 - k] : al[1022 - 32 - k];
		else
			assign a_right_32[1021 - k] = ctrl_32[1021 - k] ? al[1534 - 32 - k] : al[1022 - 32 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_33
		if(1022 - 33 - k < 0)
			assign a_right_33[1021 - k] = ctrl_33[1021 - k] ? al[1534 - 33 - k] : al[2046 - 33 - k];
		else if(1534 - 33 - k >= 1024)
			assign a_right_33[1021 - k] = ctrl_33[1021 - k] ? al[510 - 33 - k] : al[1022 - 33 - k];
		else
			assign a_right_33[1021 - k] = ctrl_33[1021 - k] ? al[1534 - 33 - k] : al[1022 - 33 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_34
		if(1022 - 34 - k < 0)
			assign a_right_34[1021 - k] = ctrl_34[1021 - k] ? al[1534 - 34 - k] : al[2046 - 34 - k];
		else if(1534 - 34 - k >= 1024)
			assign a_right_34[1021 - k] = ctrl_34[1021 - k] ? al[510 - 34 - k] : al[1022 - 34 - k];
		else
			assign a_right_34[1021 - k] = ctrl_34[1021 - k] ? al[1534 - 34 - k] : al[1022 - 34 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_35
		if(1022 - 35 - k < 0)
			assign a_right_35[1021 - k] = ctrl_35[1021 - k] ? al[1534 - 35 - k] : al[2046 - 35 - k];
		else if(1534 - 35 - k >= 1024)
			assign a_right_35[1021 - k] = ctrl_35[1021 - k] ? al[510 - 35 - k] : al[1022 - 35 - k];
		else
			assign a_right_35[1021 - k] = ctrl_35[1021 - k] ? al[1534 - 35 - k] : al[1022 - 35 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_36
		if(1022 - 36 - k < 0)
			assign a_right_36[1021 - k] = ctrl_36[1021 - k] ? al[1534 - 36 - k] : al[2046 - 36 - k];
		else if(1534 - 36 - k >= 1024)
			assign a_right_36[1021 - k] = ctrl_36[1021 - k] ? al[510 - 36 - k] : al[1022 - 36 - k];
		else
			assign a_right_36[1021 - k] = ctrl_36[1021 - k] ? al[1534 - 36 - k] : al[1022 - 36 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_37
		if(1022 - 37 - k < 0)
			assign a_right_37[1021 - k] = ctrl_37[1021 - k] ? al[1534 - 37 - k] : al[2046 - 37 - k];
		else if(1534 - 37 - k >= 1024)
			assign a_right_37[1021 - k] = ctrl_37[1021 - k] ? al[510 - 37 - k] : al[1022 - 37 - k];
		else
			assign a_right_37[1021 - k] = ctrl_37[1021 - k] ? al[1534 - 37 - k] : al[1022 - 37 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_38
		if(1022 - 38 - k < 0)
			assign a_right_38[1021 - k] = ctrl_38[1021 - k] ? al[1534 - 38 - k] : al[2046 - 38 - k];
		else if(1534 - 38 - k >= 1024)
			assign a_right_38[1021 - k] = ctrl_38[1021 - k] ? al[510 - 38 - k] : al[1022 - 38 - k];
		else
			assign a_right_38[1021 - k] = ctrl_38[1021 - k] ? al[1534 - 38 - k] : al[1022 - 38 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_39
		if(1022 - 39 - k < 0)
			assign a_right_39[1021 - k] = ctrl_39[1021 - k] ? al[1534 - 39 - k] : al[2046 - 39 - k];
		else if(1534 - 39 - k >= 1024)
			assign a_right_39[1021 - k] = ctrl_39[1021 - k] ? al[510 - 39 - k] : al[1022 - 39 - k];
		else
			assign a_right_39[1021 - k] = ctrl_39[1021 - k] ? al[1534 - 39 - k] : al[1022 - 39 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_40
		if(1022 - 40 - k < 0)
			assign a_right_40[1021 - k] = ctrl_40[1021 - k] ? al[1534 - 40 - k] : al[2046 - 40 - k];
		else if(1534 - 40 - k >= 1024)
			assign a_right_40[1021 - k] = ctrl_40[1021 - k] ? al[510 - 40 - k] : al[1022 - 40 - k];
		else
			assign a_right_40[1021 - k] = ctrl_40[1021 - k] ? al[1534 - 40 - k] : al[1022 - 40 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_41
		if(1022 - 41 - k < 0)
			assign a_right_41[1021 - k] = ctrl_41[1021 - k] ? al[1534 - 41 - k] : al[2046 - 41 - k];
		else if(1534 - 41 - k >= 1024)
			assign a_right_41[1021 - k] = ctrl_41[1021 - k] ? al[510 - 41 - k] : al[1022 - 41 - k];
		else
			assign a_right_41[1021 - k] = ctrl_41[1021 - k] ? al[1534 - 41 - k] : al[1022 - 41 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_42
		if(1022 - 42 - k < 0)
			assign a_right_42[1021 - k] = ctrl_42[1021 - k] ? al[1534 - 42 - k] : al[2046 - 42 - k];
		else if(1534 - 42 - k >= 1024)
			assign a_right_42[1021 - k] = ctrl_42[1021 - k] ? al[510 - 42 - k] : al[1022 - 42 - k];
		else
			assign a_right_42[1021 - k] = ctrl_42[1021 - k] ? al[1534 - 42 - k] : al[1022 - 42 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_43
		if(1022 - 43 - k < 0)
			assign a_right_43[1021 - k] = ctrl_43[1021 - k] ? al[1534 - 43 - k] : al[2046 - 43 - k];
		else if(1534 - 43 - k >= 1024)
			assign a_right_43[1021 - k] = ctrl_43[1021 - k] ? al[510 - 43 - k] : al[1022 - 43 - k];
		else
			assign a_right_43[1021 - k] = ctrl_43[1021 - k] ? al[1534 - 43 - k] : al[1022 - 43 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_44
		if(1022 - 44 - k < 0)
			assign a_right_44[1021 - k] = ctrl_44[1021 - k] ? al[1534 - 44 - k] : al[2046 - 44 - k];
		else if(1534 - 44 - k >= 1024)
			assign a_right_44[1021 - k] = ctrl_44[1021 - k] ? al[510 - 44 - k] : al[1022 - 44 - k];
		else
			assign a_right_44[1021 - k] = ctrl_44[1021 - k] ? al[1534 - 44 - k] : al[1022 - 44 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_45
		if(1022 - 45 - k < 0)
			assign a_right_45[1021 - k] = ctrl_45[1021 - k] ? al[1534 - 45 - k] : al[2046 - 45 - k];
		else if(1534 - 45 - k >= 1024)
			assign a_right_45[1021 - k] = ctrl_45[1021 - k] ? al[510 - 45 - k] : al[1022 - 45 - k];
		else
			assign a_right_45[1021 - k] = ctrl_45[1021 - k] ? al[1534 - 45 - k] : al[1022 - 45 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_46
		if(1022 - 46 - k < 0)
			assign a_right_46[1021 - k] = ctrl_46[1021 - k] ? al[1534 - 46 - k] : al[2046 - 46 - k];
		else if(1534 - 46 - k >= 1024)
			assign a_right_46[1021 - k] = ctrl_46[1021 - k] ? al[510 - 46 - k] : al[1022 - 46 - k];
		else
			assign a_right_46[1021 - k] = ctrl_46[1021 - k] ? al[1534 - 46 - k] : al[1022 - 46 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_47
		if(1022 - 47 - k < 0)
			assign a_right_47[1021 - k] = ctrl_47[1021 - k] ? al[1534 - 47 - k] : al[2046 - 47 - k];
		else if(1534 - 47 - k >= 1024)
			assign a_right_47[1021 - k] = ctrl_47[1021 - k] ? al[510 - 47 - k] : al[1022 - 47 - k];
		else
			assign a_right_47[1021 - k] = ctrl_47[1021 - k] ? al[1534 - 47 - k] : al[1022 - 47 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_48
		if(1022 - 48 - k < 0)
			assign a_right_48[1021 - k] = ctrl_48[1021 - k] ? al[1534 - 48 - k] : al[2046 - 48 - k];
		else if(1534 - 48 - k >= 1024)
			assign a_right_48[1021 - k] = ctrl_48[1021 - k] ? al[510 - 48 - k] : al[1022 - 48 - k];
		else
			assign a_right_48[1021 - k] = ctrl_48[1021 - k] ? al[1534 - 48 - k] : al[1022 - 48 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_49
		if(1022 - 49 - k < 0)
			assign a_right_49[1021 - k] = ctrl_49[1021 - k] ? al[1534 - 49 - k] : al[2046 - 49 - k];
		else if(1534 - 49 - k >= 1024)
			assign a_right_49[1021 - k] = ctrl_49[1021 - k] ? al[510 - 49 - k] : al[1022 - 49 - k];
		else
			assign a_right_49[1021 - k] = ctrl_49[1021 - k] ? al[1534 - 49 - k] : al[1022 - 49 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_50
		if(1022 - 50 - k < 0)
			assign a_right_50[1021 - k] = ctrl_50[1021 - k] ? al[1534 - 50 - k] : al[2046 - 50 - k];
		else if(1534 - 50 - k >= 1024)
			assign a_right_50[1021 - k] = ctrl_50[1021 - k] ? al[510 - 50 - k] : al[1022 - 50 - k];
		else
			assign a_right_50[1021 - k] = ctrl_50[1021 - k] ? al[1534 - 50 - k] : al[1022 - 50 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_51
		if(1022 - 51 - k < 0)
			assign a_right_51[1021 - k] = ctrl_51[1021 - k] ? al[1534 - 51 - k] : al[2046 - 51 - k];
		else if(1534 - 51 - k >= 1024)
			assign a_right_51[1021 - k] = ctrl_51[1021 - k] ? al[510 - 51 - k] : al[1022 - 51 - k];
		else
			assign a_right_51[1021 - k] = ctrl_51[1021 - k] ? al[1534 - 51 - k] : al[1022 - 51 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_52
		if(1022 - 52 - k < 0)
			assign a_right_52[1021 - k] = ctrl_52[1021 - k] ? al[1534 - 52 - k] : al[2046 - 52 - k];
		else if(1534 - 52 - k >= 1024)
			assign a_right_52[1021 - k] = ctrl_52[1021 - k] ? al[510 - 52 - k] : al[1022 - 52 - k];
		else
			assign a_right_52[1021 - k] = ctrl_52[1021 - k] ? al[1534 - 52 - k] : al[1022 - 52 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_53
		if(1022 - 53 - k < 0)
			assign a_right_53[1021 - k] = ctrl_53[1021 - k] ? al[1534 - 53 - k] : al[2046 - 53 - k];
		else if(1534 - 53 - k >= 1024)
			assign a_right_53[1021 - k] = ctrl_53[1021 - k] ? al[510 - 53 - k] : al[1022 - 53 - k];
		else
			assign a_right_53[1021 - k] = ctrl_53[1021 - k] ? al[1534 - 53 - k] : al[1022 - 53 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_54
		if(1022 - 54 - k < 0)
			assign a_right_54[1021 - k] = ctrl_54[1021 - k] ? al[1534 - 54 - k] : al[2046 - 54 - k];
		else if(1534 - 54 - k >= 1024)
			assign a_right_54[1021 - k] = ctrl_54[1021 - k] ? al[510 - 54 - k] : al[1022 - 54 - k];
		else
			assign a_right_54[1021 - k] = ctrl_54[1021 - k] ? al[1534 - 54 - k] : al[1022 - 54 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_55
		if(1022 - 55 - k < 0)
			assign a_right_55[1021 - k] = ctrl_55[1021 - k] ? al[1534 - 55 - k] : al[2046 - 55 - k];
		else if(1534 - 55 - k >= 1024)
			assign a_right_55[1021 - k] = ctrl_55[1021 - k] ? al[510 - 55 - k] : al[1022 - 55 - k];
		else
			assign a_right_55[1021 - k] = ctrl_55[1021 - k] ? al[1534 - 55 - k] : al[1022 - 55 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_56
		if(1022 - 56 - k < 0)
			assign a_right_56[1021 - k] = ctrl_56[1021 - k] ? al[1534 - 56 - k] : al[2046 - 56 - k];
		else if(1534 - 56 - k >= 1024)
			assign a_right_56[1021 - k] = ctrl_56[1021 - k] ? al[510 - 56 - k] : al[1022 - 56 - k];
		else
			assign a_right_56[1021 - k] = ctrl_56[1021 - k] ? al[1534 - 56 - k] : al[1022 - 56 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_57
		if(1022 - 57 - k < 0)
			assign a_right_57[1021 - k] = ctrl_57[1021 - k] ? al[1534 - 57 - k] : al[2046 - 57 - k];
		else if(1534 - 57 - k >= 1024)
			assign a_right_57[1021 - k] = ctrl_57[1021 - k] ? al[510 - 57 - k] : al[1022 - 57 - k];
		else
			assign a_right_57[1021 - k] = ctrl_57[1021 - k] ? al[1534 - 57 - k] : al[1022 - 57 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_58
		if(1022 - 58 - k < 0)
			assign a_right_58[1021 - k] = ctrl_58[1021 - k] ? al[1534 - 58 - k] : al[2046 - 58 - k];
		else if(1534 - 58 - k >= 1024)
			assign a_right_58[1021 - k] = ctrl_58[1021 - k] ? al[510 - 58 - k] : al[1022 - 58 - k];
		else
			assign a_right_58[1021 - k] = ctrl_58[1021 - k] ? al[1534 - 58 - k] : al[1022 - 58 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_59
		if(1022 - 59 - k < 0)
			assign a_right_59[1021 - k] = ctrl_59[1021 - k] ? al[1534 - 59 - k] : al[2046 - 59 - k];
		else if(1534 - 59 - k >= 1024)
			assign a_right_59[1021 - k] = ctrl_59[1021 - k] ? al[510 - 59 - k] : al[1022 - 59 - k];
		else
			assign a_right_59[1021 - k] = ctrl_59[1021 - k] ? al[1534 - 59 - k] : al[1022 - 59 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_60
		if(1022 - 60 - k < 0)
			assign a_right_60[1021 - k] = ctrl_60[1021 - k] ? al[1534 - 60 - k] : al[2046 - 60 - k];
		else if(1534 - 60 - k >= 1024)
			assign a_right_60[1021 - k] = ctrl_60[1021 - k] ? al[510 - 60 - k] : al[1022 - 60 - k];
		else
			assign a_right_60[1021 - k] = ctrl_60[1021 - k] ? al[1534 - 60 - k] : al[1022 - 60 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_61
		if(1022 - 61 - k < 0)
			assign a_right_61[1021 - k] = ctrl_61[1021 - k] ? al[1534 - 61 - k] : al[2046 - 61 - k];
		else if(1534 - 61 - k >= 1024)
			assign a_right_61[1021 - k] = ctrl_61[1021 - k] ? al[510 - 61 - k] : al[1022 - 61 - k];
		else
			assign a_right_61[1021 - k] = ctrl_61[1021 - k] ? al[1534 - 61 - k] : al[1022 - 61 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_62
		if(1022 - 62 - k < 0)
			assign a_right_62[1021 - k] = ctrl_62[1021 - k] ? al[1534 - 62 - k] : al[2046 - 62 - k];
		else if(1534 - 62 - k >= 1024)
			assign a_right_62[1021 - k] = ctrl_62[1021 - k] ? al[510 - 62 - k] : al[1022 - 62 - k];
		else
			assign a_right_62[1021 - k] = ctrl_62[1021 - k] ? al[1534 - 62 - k] : al[1022 - 62 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_63
		if(1022 - 63 - k < 0)
			assign a_right_63[1021 - k] = ctrl_63[1021 - k] ? al[1534 - 63 - k] : al[2046 - 63 - k];
		else if(1534 - 63 - k >= 1024)
			assign a_right_63[1021 - k] = ctrl_63[1021 - k] ? al[510 - 63 - k] : al[1022 - 63 - k];
		else
			assign a_right_63[1021 - k] = ctrl_63[1021 - k] ? al[1534 - 63 - k] : al[1022 - 63 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_64
		if(1022 - 64 - k < 0)
			assign a_right_64[1021 - k] = ctrl_64[1021 - k] ? al[1534 - 64 - k] : al[2046 - 64 - k];
		else if(1534 - 64 - k >= 1024)
			assign a_right_64[1021 - k] = ctrl_64[1021 - k] ? al[510 - 64 - k] : al[1022 - 64 - k];
		else
			assign a_right_64[1021 - k] = ctrl_64[1021 - k] ? al[1534 - 64 - k] : al[1022 - 64 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_65
		if(1022 - 65 - k < 0)
			assign a_right_65[1021 - k] = ctrl_65[1021 - k] ? al[1534 - 65 - k] : al[2046 - 65 - k];
		else if(1534 - 65 - k >= 1024)
			assign a_right_65[1021 - k] = ctrl_65[1021 - k] ? al[510 - 65 - k] : al[1022 - 65 - k];
		else
			assign a_right_65[1021 - k] = ctrl_65[1021 - k] ? al[1534 - 65 - k] : al[1022 - 65 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_66
		if(1022 - 66 - k < 0)
			assign a_right_66[1021 - k] = ctrl_66[1021 - k] ? al[1534 - 66 - k] : al[2046 - 66 - k];
		else if(1534 - 66 - k >= 1024)
			assign a_right_66[1021 - k] = ctrl_66[1021 - k] ? al[510 - 66 - k] : al[1022 - 66 - k];
		else
			assign a_right_66[1021 - k] = ctrl_66[1021 - k] ? al[1534 - 66 - k] : al[1022 - 66 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_67
		if(1022 - 67 - k < 0)
			assign a_right_67[1021 - k] = ctrl_67[1021 - k] ? al[1534 - 67 - k] : al[2046 - 67 - k];
		else if(1534 - 67 - k >= 1024)
			assign a_right_67[1021 - k] = ctrl_67[1021 - k] ? al[510 - 67 - k] : al[1022 - 67 - k];
		else
			assign a_right_67[1021 - k] = ctrl_67[1021 - k] ? al[1534 - 67 - k] : al[1022 - 67 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_68
		if(1022 - 68 - k < 0)
			assign a_right_68[1021 - k] = ctrl_68[1021 - k] ? al[1534 - 68 - k] : al[2046 - 68 - k];
		else if(1534 - 68 - k >= 1024)
			assign a_right_68[1021 - k] = ctrl_68[1021 - k] ? al[510 - 68 - k] : al[1022 - 68 - k];
		else
			assign a_right_68[1021 - k] = ctrl_68[1021 - k] ? al[1534 - 68 - k] : al[1022 - 68 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_69
		if(1022 - 69 - k < 0)
			assign a_right_69[1021 - k] = ctrl_69[1021 - k] ? al[1534 - 69 - k] : al[2046 - 69 - k];
		else if(1534 - 69 - k >= 1024)
			assign a_right_69[1021 - k] = ctrl_69[1021 - k] ? al[510 - 69 - k] : al[1022 - 69 - k];
		else
			assign a_right_69[1021 - k] = ctrl_69[1021 - k] ? al[1534 - 69 - k] : al[1022 - 69 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_70
		if(1022 - 70 - k < 0)
			assign a_right_70[1021 - k] = ctrl_70[1021 - k] ? al[1534 - 70 - k] : al[2046 - 70 - k];
		else if(1534 - 70 - k >= 1024)
			assign a_right_70[1021 - k] = ctrl_70[1021 - k] ? al[510 - 70 - k] : al[1022 - 70 - k];
		else
			assign a_right_70[1021 - k] = ctrl_70[1021 - k] ? al[1534 - 70 - k] : al[1022 - 70 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_71
		if(1022 - 71 - k < 0)
			assign a_right_71[1021 - k] = ctrl_71[1021 - k] ? al[1534 - 71 - k] : al[2046 - 71 - k];
		else if(1534 - 71 - k >= 1024)
			assign a_right_71[1021 - k] = ctrl_71[1021 - k] ? al[510 - 71 - k] : al[1022 - 71 - k];
		else
			assign a_right_71[1021 - k] = ctrl_71[1021 - k] ? al[1534 - 71 - k] : al[1022 - 71 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_72
		if(1022 - 72 - k < 0)
			assign a_right_72[1021 - k] = ctrl_72[1021 - k] ? al[1534 - 72 - k] : al[2046 - 72 - k];
		else if(1534 - 72 - k >= 1024)
			assign a_right_72[1021 - k] = ctrl_72[1021 - k] ? al[510 - 72 - k] : al[1022 - 72 - k];
		else
			assign a_right_72[1021 - k] = ctrl_72[1021 - k] ? al[1534 - 72 - k] : al[1022 - 72 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_73
		if(1022 - 73 - k < 0)
			assign a_right_73[1021 - k] = ctrl_73[1021 - k] ? al[1534 - 73 - k] : al[2046 - 73 - k];
		else if(1534 - 73 - k >= 1024)
			assign a_right_73[1021 - k] = ctrl_73[1021 - k] ? al[510 - 73 - k] : al[1022 - 73 - k];
		else
			assign a_right_73[1021 - k] = ctrl_73[1021 - k] ? al[1534 - 73 - k] : al[1022 - 73 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_74
		if(1022 - 74 - k < 0)
			assign a_right_74[1021 - k] = ctrl_74[1021 - k] ? al[1534 - 74 - k] : al[2046 - 74 - k];
		else if(1534 - 74 - k >= 1024)
			assign a_right_74[1021 - k] = ctrl_74[1021 - k] ? al[510 - 74 - k] : al[1022 - 74 - k];
		else
			assign a_right_74[1021 - k] = ctrl_74[1021 - k] ? al[1534 - 74 - k] : al[1022 - 74 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_75
		if(1022 - 75 - k < 0)
			assign a_right_75[1021 - k] = ctrl_75[1021 - k] ? al[1534 - 75 - k] : al[2046 - 75 - k];
		else if(1534 - 75 - k >= 1024)
			assign a_right_75[1021 - k] = ctrl_75[1021 - k] ? al[510 - 75 - k] : al[1022 - 75 - k];
		else
			assign a_right_75[1021 - k] = ctrl_75[1021 - k] ? al[1534 - 75 - k] : al[1022 - 75 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_76
		if(1022 - 76 - k < 0)
			assign a_right_76[1021 - k] = ctrl_76[1021 - k] ? al[1534 - 76 - k] : al[2046 - 76 - k];
		else if(1534 - 76 - k >= 1024)
			assign a_right_76[1021 - k] = ctrl_76[1021 - k] ? al[510 - 76 - k] : al[1022 - 76 - k];
		else
			assign a_right_76[1021 - k] = ctrl_76[1021 - k] ? al[1534 - 76 - k] : al[1022 - 76 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_77
		if(1022 - 77 - k < 0)
			assign a_right_77[1021 - k] = ctrl_77[1021 - k] ? al[1534 - 77 - k] : al[2046 - 77 - k];
		else if(1534 - 77 - k >= 1024)
			assign a_right_77[1021 - k] = ctrl_77[1021 - k] ? al[510 - 77 - k] : al[1022 - 77 - k];
		else
			assign a_right_77[1021 - k] = ctrl_77[1021 - k] ? al[1534 - 77 - k] : al[1022 - 77 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_78
		if(1022 - 78 - k < 0)
			assign a_right_78[1021 - k] = ctrl_78[1021 - k] ? al[1534 - 78 - k] : al[2046 - 78 - k];
		else if(1534 - 78 - k >= 1024)
			assign a_right_78[1021 - k] = ctrl_78[1021 - k] ? al[510 - 78 - k] : al[1022 - 78 - k];
		else
			assign a_right_78[1021 - k] = ctrl_78[1021 - k] ? al[1534 - 78 - k] : al[1022 - 78 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_79
		if(1022 - 79 - k < 0)
			assign a_right_79[1021 - k] = ctrl_79[1021 - k] ? al[1534 - 79 - k] : al[2046 - 79 - k];
		else if(1534 - 79 - k >= 1024)
			assign a_right_79[1021 - k] = ctrl_79[1021 - k] ? al[510 - 79 - k] : al[1022 - 79 - k];
		else
			assign a_right_79[1021 - k] = ctrl_79[1021 - k] ? al[1534 - 79 - k] : al[1022 - 79 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_80
		if(1022 - 80 - k < 0)
			assign a_right_80[1021 - k] = ctrl_80[1021 - k] ? al[1534 - 80 - k] : al[2046 - 80 - k];
		else if(1534 - 80 - k >= 1024)
			assign a_right_80[1021 - k] = ctrl_80[1021 - k] ? al[510 - 80 - k] : al[1022 - 80 - k];
		else
			assign a_right_80[1021 - k] = ctrl_80[1021 - k] ? al[1534 - 80 - k] : al[1022 - 80 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_81
		if(1022 - 81 - k < 0)
			assign a_right_81[1021 - k] = ctrl_81[1021 - k] ? al[1534 - 81 - k] : al[2046 - 81 - k];
		else if(1534 - 81 - k >= 1024)
			assign a_right_81[1021 - k] = ctrl_81[1021 - k] ? al[510 - 81 - k] : al[1022 - 81 - k];
		else
			assign a_right_81[1021 - k] = ctrl_81[1021 - k] ? al[1534 - 81 - k] : al[1022 - 81 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_82
		if(1022 - 82 - k < 0)
			assign a_right_82[1021 - k] = ctrl_82[1021 - k] ? al[1534 - 82 - k] : al[2046 - 82 - k];
		else if(1534 - 82 - k >= 1024)
			assign a_right_82[1021 - k] = ctrl_82[1021 - k] ? al[510 - 82 - k] : al[1022 - 82 - k];
		else
			assign a_right_82[1021 - k] = ctrl_82[1021 - k] ? al[1534 - 82 - k] : al[1022 - 82 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_83
		if(1022 - 83 - k < 0)
			assign a_right_83[1021 - k] = ctrl_83[1021 - k] ? al[1534 - 83 - k] : al[2046 - 83 - k];
		else if(1534 - 83 - k >= 1024)
			assign a_right_83[1021 - k] = ctrl_83[1021 - k] ? al[510 - 83 - k] : al[1022 - 83 - k];
		else
			assign a_right_83[1021 - k] = ctrl_83[1021 - k] ? al[1534 - 83 - k] : al[1022 - 83 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_84
		if(1022 - 84 - k < 0)
			assign a_right_84[1021 - k] = ctrl_84[1021 - k] ? al[1534 - 84 - k] : al[2046 - 84 - k];
		else if(1534 - 84 - k >= 1024)
			assign a_right_84[1021 - k] = ctrl_84[1021 - k] ? al[510 - 84 - k] : al[1022 - 84 - k];
		else
			assign a_right_84[1021 - k] = ctrl_84[1021 - k] ? al[1534 - 84 - k] : al[1022 - 84 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_85
		if(1022 - 85 - k < 0)
			assign a_right_85[1021 - k] = ctrl_85[1021 - k] ? al[1534 - 85 - k] : al[2046 - 85 - k];
		else if(1534 - 85 - k >= 1024)
			assign a_right_85[1021 - k] = ctrl_85[1021 - k] ? al[510 - 85 - k] : al[1022 - 85 - k];
		else
			assign a_right_85[1021 - k] = ctrl_85[1021 - k] ? al[1534 - 85 - k] : al[1022 - 85 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_86
		if(1022 - 86 - k < 0)
			assign a_right_86[1021 - k] = ctrl_86[1021 - k] ? al[1534 - 86 - k] : al[2046 - 86 - k];
		else if(1534 - 86 - k >= 1024)
			assign a_right_86[1021 - k] = ctrl_86[1021 - k] ? al[510 - 86 - k] : al[1022 - 86 - k];
		else
			assign a_right_86[1021 - k] = ctrl_86[1021 - k] ? al[1534 - 86 - k] : al[1022 - 86 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_87
		if(1022 - 87 - k < 0)
			assign a_right_87[1021 - k] = ctrl_87[1021 - k] ? al[1534 - 87 - k] : al[2046 - 87 - k];
		else if(1534 - 87 - k >= 1024)
			assign a_right_87[1021 - k] = ctrl_87[1021 - k] ? al[510 - 87 - k] : al[1022 - 87 - k];
		else
			assign a_right_87[1021 - k] = ctrl_87[1021 - k] ? al[1534 - 87 - k] : al[1022 - 87 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_88
		if(1022 - 88 - k < 0)
			assign a_right_88[1021 - k] = ctrl_88[1021 - k] ? al[1534 - 88 - k] : al[2046 - 88 - k];
		else if(1534 - 88 - k >= 1024)
			assign a_right_88[1021 - k] = ctrl_88[1021 - k] ? al[510 - 88 - k] : al[1022 - 88 - k];
		else
			assign a_right_88[1021 - k] = ctrl_88[1021 - k] ? al[1534 - 88 - k] : al[1022 - 88 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_89
		if(1022 - 89 - k < 0)
			assign a_right_89[1021 - k] = ctrl_89[1021 - k] ? al[1534 - 89 - k] : al[2046 - 89 - k];
		else if(1534 - 89 - k >= 1024)
			assign a_right_89[1021 - k] = ctrl_89[1021 - k] ? al[510 - 89 - k] : al[1022 - 89 - k];
		else
			assign a_right_89[1021 - k] = ctrl_89[1021 - k] ? al[1534 - 89 - k] : al[1022 - 89 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_90
		if(1022 - 90 - k < 0)
			assign a_right_90[1021 - k] = ctrl_90[1021 - k] ? al[1534 - 90 - k] : al[2046 - 90 - k];
		else if(1534 - 90 - k >= 1024)
			assign a_right_90[1021 - k] = ctrl_90[1021 - k] ? al[510 - 90 - k] : al[1022 - 90 - k];
		else
			assign a_right_90[1021 - k] = ctrl_90[1021 - k] ? al[1534 - 90 - k] : al[1022 - 90 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_91
		if(1022 - 91 - k < 0)
			assign a_right_91[1021 - k] = ctrl_91[1021 - k] ? al[1534 - 91 - k] : al[2046 - 91 - k];
		else if(1534 - 91 - k >= 1024)
			assign a_right_91[1021 - k] = ctrl_91[1021 - k] ? al[510 - 91 - k] : al[1022 - 91 - k];
		else
			assign a_right_91[1021 - k] = ctrl_91[1021 - k] ? al[1534 - 91 - k] : al[1022 - 91 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_92
		if(1022 - 92 - k < 0)
			assign a_right_92[1021 - k] = ctrl_92[1021 - k] ? al[1534 - 92 - k] : al[2046 - 92 - k];
		else if(1534 - 92 - k >= 1024)
			assign a_right_92[1021 - k] = ctrl_92[1021 - k] ? al[510 - 92 - k] : al[1022 - 92 - k];
		else
			assign a_right_92[1021 - k] = ctrl_92[1021 - k] ? al[1534 - 92 - k] : al[1022 - 92 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_93
		if(1022 - 93 - k < 0)
			assign a_right_93[1021 - k] = ctrl_93[1021 - k] ? al[1534 - 93 - k] : al[2046 - 93 - k];
		else if(1534 - 93 - k >= 1024)
			assign a_right_93[1021 - k] = ctrl_93[1021 - k] ? al[510 - 93 - k] : al[1022 - 93 - k];
		else
			assign a_right_93[1021 - k] = ctrl_93[1021 - k] ? al[1534 - 93 - k] : al[1022 - 93 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_94
		if(1022 - 94 - k < 0)
			assign a_right_94[1021 - k] = ctrl_94[1021 - k] ? al[1534 - 94 - k] : al[2046 - 94 - k];
		else if(1534 - 94 - k >= 1024)
			assign a_right_94[1021 - k] = ctrl_94[1021 - k] ? al[510 - 94 - k] : al[1022 - 94 - k];
		else
			assign a_right_94[1021 - k] = ctrl_94[1021 - k] ? al[1534 - 94 - k] : al[1022 - 94 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_95
		if(1022 - 95 - k < 0)
			assign a_right_95[1021 - k] = ctrl_95[1021 - k] ? al[1534 - 95 - k] : al[2046 - 95 - k];
		else if(1534 - 95 - k >= 1024)
			assign a_right_95[1021 - k] = ctrl_95[1021 - k] ? al[510 - 95 - k] : al[1022 - 95 - k];
		else
			assign a_right_95[1021 - k] = ctrl_95[1021 - k] ? al[1534 - 95 - k] : al[1022 - 95 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_96
		if(1022 - 96 - k < 0)
			assign a_right_96[1021 - k] = ctrl_96[1021 - k] ? al[1534 - 96 - k] : al[2046 - 96 - k];
		else if(1534 - 96 - k >= 1024)
			assign a_right_96[1021 - k] = ctrl_96[1021 - k] ? al[510 - 96 - k] : al[1022 - 96 - k];
		else
			assign a_right_96[1021 - k] = ctrl_96[1021 - k] ? al[1534 - 96 - k] : al[1022 - 96 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_97
		if(1022 - 97 - k < 0)
			assign a_right_97[1021 - k] = ctrl_97[1021 - k] ? al[1534 - 97 - k] : al[2046 - 97 - k];
		else if(1534 - 97 - k >= 1024)
			assign a_right_97[1021 - k] = ctrl_97[1021 - k] ? al[510 - 97 - k] : al[1022 - 97 - k];
		else
			assign a_right_97[1021 - k] = ctrl_97[1021 - k] ? al[1534 - 97 - k] : al[1022 - 97 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_98
		if(1022 - 98 - k < 0)
			assign a_right_98[1021 - k] = ctrl_98[1021 - k] ? al[1534 - 98 - k] : al[2046 - 98 - k];
		else if(1534 - 98 - k >= 1024)
			assign a_right_98[1021 - k] = ctrl_98[1021 - k] ? al[510 - 98 - k] : al[1022 - 98 - k];
		else
			assign a_right_98[1021 - k] = ctrl_98[1021 - k] ? al[1534 - 98 - k] : al[1022 - 98 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_99
		if(1022 - 99 - k < 0)
			assign a_right_99[1021 - k] = ctrl_99[1021 - k] ? al[1534 - 99 - k] : al[2046 - 99 - k];
		else if(1534 - 99 - k >= 1024)
			assign a_right_99[1021 - k] = ctrl_99[1021 - k] ? al[510 - 99 - k] : al[1022 - 99 - k];
		else
			assign a_right_99[1021 - k] = ctrl_99[1021 - k] ? al[1534 - 99 - k] : al[1022 - 99 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_100
		if(1022 - 100 - k < 0)
			assign a_right_100[1021 - k] = ctrl_100[1021 - k] ? al[1534 - 100 - k] : al[2046 - 100 - k];
		else if(1534 - 100 - k >= 1024)
			assign a_right_100[1021 - k] = ctrl_100[1021 - k] ? al[510 - 100 - k] : al[1022 - 100 - k];
		else
			assign a_right_100[1021 - k] = ctrl_100[1021 - k] ? al[1534 - 100 - k] : al[1022 - 100 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_101
		if(1022 - 101 - k < 0)
			assign a_right_101[1021 - k] = ctrl_101[1021 - k] ? al[1534 - 101 - k] : al[2046 - 101 - k];
		else if(1534 - 101 - k >= 1024)
			assign a_right_101[1021 - k] = ctrl_101[1021 - k] ? al[510 - 101 - k] : al[1022 - 101 - k];
		else
			assign a_right_101[1021 - k] = ctrl_101[1021 - k] ? al[1534 - 101 - k] : al[1022 - 101 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_102
		if(1022 - 102 - k < 0)
			assign a_right_102[1021 - k] = ctrl_102[1021 - k] ? al[1534 - 102 - k] : al[2046 - 102 - k];
		else if(1534 - 102 - k >= 1024)
			assign a_right_102[1021 - k] = ctrl_102[1021 - k] ? al[510 - 102 - k] : al[1022 - 102 - k];
		else
			assign a_right_102[1021 - k] = ctrl_102[1021 - k] ? al[1534 - 102 - k] : al[1022 - 102 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_103
		if(1022 - 103 - k < 0)
			assign a_right_103[1021 - k] = ctrl_103[1021 - k] ? al[1534 - 103 - k] : al[2046 - 103 - k];
		else if(1534 - 103 - k >= 1024)
			assign a_right_103[1021 - k] = ctrl_103[1021 - k] ? al[510 - 103 - k] : al[1022 - 103 - k];
		else
			assign a_right_103[1021 - k] = ctrl_103[1021 - k] ? al[1534 - 103 - k] : al[1022 - 103 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_104
		if(1022 - 104 - k < 0)
			assign a_right_104[1021 - k] = ctrl_104[1021 - k] ? al[1534 - 104 - k] : al[2046 - 104 - k];
		else if(1534 - 104 - k >= 1024)
			assign a_right_104[1021 - k] = ctrl_104[1021 - k] ? al[510 - 104 - k] : al[1022 - 104 - k];
		else
			assign a_right_104[1021 - k] = ctrl_104[1021 - k] ? al[1534 - 104 - k] : al[1022 - 104 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_105
		if(1022 - 105 - k < 0)
			assign a_right_105[1021 - k] = ctrl_105[1021 - k] ? al[1534 - 105 - k] : al[2046 - 105 - k];
		else if(1534 - 105 - k >= 1024)
			assign a_right_105[1021 - k] = ctrl_105[1021 - k] ? al[510 - 105 - k] : al[1022 - 105 - k];
		else
			assign a_right_105[1021 - k] = ctrl_105[1021 - k] ? al[1534 - 105 - k] : al[1022 - 105 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_106
		if(1022 - 106 - k < 0)
			assign a_right_106[1021 - k] = ctrl_106[1021 - k] ? al[1534 - 106 - k] : al[2046 - 106 - k];
		else if(1534 - 106 - k >= 1024)
			assign a_right_106[1021 - k] = ctrl_106[1021 - k] ? al[510 - 106 - k] : al[1022 - 106 - k];
		else
			assign a_right_106[1021 - k] = ctrl_106[1021 - k] ? al[1534 - 106 - k] : al[1022 - 106 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_107
		if(1022 - 107 - k < 0)
			assign a_right_107[1021 - k] = ctrl_107[1021 - k] ? al[1534 - 107 - k] : al[2046 - 107 - k];
		else if(1534 - 107 - k >= 1024)
			assign a_right_107[1021 - k] = ctrl_107[1021 - k] ? al[510 - 107 - k] : al[1022 - 107 - k];
		else
			assign a_right_107[1021 - k] = ctrl_107[1021 - k] ? al[1534 - 107 - k] : al[1022 - 107 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_108
		if(1022 - 108 - k < 0)
			assign a_right_108[1021 - k] = ctrl_108[1021 - k] ? al[1534 - 108 - k] : al[2046 - 108 - k];
		else if(1534 - 108 - k >= 1024)
			assign a_right_108[1021 - k] = ctrl_108[1021 - k] ? al[510 - 108 - k] : al[1022 - 108 - k];
		else
			assign a_right_108[1021 - k] = ctrl_108[1021 - k] ? al[1534 - 108 - k] : al[1022 - 108 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_109
		if(1022 - 109 - k < 0)
			assign a_right_109[1021 - k] = ctrl_109[1021 - k] ? al[1534 - 109 - k] : al[2046 - 109 - k];
		else if(1534 - 109 - k >= 1024)
			assign a_right_109[1021 - k] = ctrl_109[1021 - k] ? al[510 - 109 - k] : al[1022 - 109 - k];
		else
			assign a_right_109[1021 - k] = ctrl_109[1021 - k] ? al[1534 - 109 - k] : al[1022 - 109 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_110
		if(1022 - 110 - k < 0)
			assign a_right_110[1021 - k] = ctrl_110[1021 - k] ? al[1534 - 110 - k] : al[2046 - 110 - k];
		else if(1534 - 110 - k >= 1024)
			assign a_right_110[1021 - k] = ctrl_110[1021 - k] ? al[510 - 110 - k] : al[1022 - 110 - k];
		else
			assign a_right_110[1021 - k] = ctrl_110[1021 - k] ? al[1534 - 110 - k] : al[1022 - 110 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_111
		if(1022 - 111 - k < 0)
			assign a_right_111[1021 - k] = ctrl_111[1021 - k] ? al[1534 - 111 - k] : al[2046 - 111 - k];
		else if(1534 - 111 - k >= 1024)
			assign a_right_111[1021 - k] = ctrl_111[1021 - k] ? al[510 - 111 - k] : al[1022 - 111 - k];
		else
			assign a_right_111[1021 - k] = ctrl_111[1021 - k] ? al[1534 - 111 - k] : al[1022 - 111 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_112
		if(1022 - 112 - k < 0)
			assign a_right_112[1021 - k] = ctrl_112[1021 - k] ? al[1534 - 112 - k] : al[2046 - 112 - k];
		else if(1534 - 112 - k >= 1024)
			assign a_right_112[1021 - k] = ctrl_112[1021 - k] ? al[510 - 112 - k] : al[1022 - 112 - k];
		else
			assign a_right_112[1021 - k] = ctrl_112[1021 - k] ? al[1534 - 112 - k] : al[1022 - 112 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_113
		if(1022 - 113 - k < 0)
			assign a_right_113[1021 - k] = ctrl_113[1021 - k] ? al[1534 - 113 - k] : al[2046 - 113 - k];
		else if(1534 - 113 - k >= 1024)
			assign a_right_113[1021 - k] = ctrl_113[1021 - k] ? al[510 - 113 - k] : al[1022 - 113 - k];
		else
			assign a_right_113[1021 - k] = ctrl_113[1021 - k] ? al[1534 - 113 - k] : al[1022 - 113 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_114
		if(1022 - 114 - k < 0)
			assign a_right_114[1021 - k] = ctrl_114[1021 - k] ? al[1534 - 114 - k] : al[2046 - 114 - k];
		else if(1534 - 114 - k >= 1024)
			assign a_right_114[1021 - k] = ctrl_114[1021 - k] ? al[510 - 114 - k] : al[1022 - 114 - k];
		else
			assign a_right_114[1021 - k] = ctrl_114[1021 - k] ? al[1534 - 114 - k] : al[1022 - 114 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_115
		if(1022 - 115 - k < 0)
			assign a_right_115[1021 - k] = ctrl_115[1021 - k] ? al[1534 - 115 - k] : al[2046 - 115 - k];
		else if(1534 - 115 - k >= 1024)
			assign a_right_115[1021 - k] = ctrl_115[1021 - k] ? al[510 - 115 - k] : al[1022 - 115 - k];
		else
			assign a_right_115[1021 - k] = ctrl_115[1021 - k] ? al[1534 - 115 - k] : al[1022 - 115 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_116
		if(1022 - 116 - k < 0)
			assign a_right_116[1021 - k] = ctrl_116[1021 - k] ? al[1534 - 116 - k] : al[2046 - 116 - k];
		else if(1534 - 116 - k >= 1024)
			assign a_right_116[1021 - k] = ctrl_116[1021 - k] ? al[510 - 116 - k] : al[1022 - 116 - k];
		else
			assign a_right_116[1021 - k] = ctrl_116[1021 - k] ? al[1534 - 116 - k] : al[1022 - 116 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_117
		if(1022 - 117 - k < 0)
			assign a_right_117[1021 - k] = ctrl_117[1021 - k] ? al[1534 - 117 - k] : al[2046 - 117 - k];
		else if(1534 - 117 - k >= 1024)
			assign a_right_117[1021 - k] = ctrl_117[1021 - k] ? al[510 - 117 - k] : al[1022 - 117 - k];
		else
			assign a_right_117[1021 - k] = ctrl_117[1021 - k] ? al[1534 - 117 - k] : al[1022 - 117 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_118
		if(1022 - 118 - k < 0)
			assign a_right_118[1021 - k] = ctrl_118[1021 - k] ? al[1534 - 118 - k] : al[2046 - 118 - k];
		else if(1534 - 118 - k >= 1024)
			assign a_right_118[1021 - k] = ctrl_118[1021 - k] ? al[510 - 118 - k] : al[1022 - 118 - k];
		else
			assign a_right_118[1021 - k] = ctrl_118[1021 - k] ? al[1534 - 118 - k] : al[1022 - 118 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_119
		if(1022 - 119 - k < 0)
			assign a_right_119[1021 - k] = ctrl_119[1021 - k] ? al[1534 - 119 - k] : al[2046 - 119 - k];
		else if(1534 - 119 - k >= 1024)
			assign a_right_119[1021 - k] = ctrl_119[1021 - k] ? al[510 - 119 - k] : al[1022 - 119 - k];
		else
			assign a_right_119[1021 - k] = ctrl_119[1021 - k] ? al[1534 - 119 - k] : al[1022 - 119 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_120
		if(1022 - 120 - k < 0)
			assign a_right_120[1021 - k] = ctrl_120[1021 - k] ? al[1534 - 120 - k] : al[2046 - 120 - k];
		else if(1534 - 120 - k >= 1024)
			assign a_right_120[1021 - k] = ctrl_120[1021 - k] ? al[510 - 120 - k] : al[1022 - 120 - k];
		else
			assign a_right_120[1021 - k] = ctrl_120[1021 - k] ? al[1534 - 120 - k] : al[1022 - 120 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_121
		if(1022 - 121 - k < 0)
			assign a_right_121[1021 - k] = ctrl_121[1021 - k] ? al[1534 - 121 - k] : al[2046 - 121 - k];
		else if(1534 - 121 - k >= 1024)
			assign a_right_121[1021 - k] = ctrl_121[1021 - k] ? al[510 - 121 - k] : al[1022 - 121 - k];
		else
			assign a_right_121[1021 - k] = ctrl_121[1021 - k] ? al[1534 - 121 - k] : al[1022 - 121 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_122
		if(1022 - 122 - k < 0)
			assign a_right_122[1021 - k] = ctrl_122[1021 - k] ? al[1534 - 122 - k] : al[2046 - 122 - k];
		else if(1534 - 122 - k >= 1024)
			assign a_right_122[1021 - k] = ctrl_122[1021 - k] ? al[510 - 122 - k] : al[1022 - 122 - k];
		else
			assign a_right_122[1021 - k] = ctrl_122[1021 - k] ? al[1534 - 122 - k] : al[1022 - 122 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_123
		if(1022 - 123 - k < 0)
			assign a_right_123[1021 - k] = ctrl_123[1021 - k] ? al[1534 - 123 - k] : al[2046 - 123 - k];
		else if(1534 - 123 - k >= 1024)
			assign a_right_123[1021 - k] = ctrl_123[1021 - k] ? al[510 - 123 - k] : al[1022 - 123 - k];
		else
			assign a_right_123[1021 - k] = ctrl_123[1021 - k] ? al[1534 - 123 - k] : al[1022 - 123 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_124
		if(1022 - 124 - k < 0)
			assign a_right_124[1021 - k] = ctrl_124[1021 - k] ? al[1534 - 124 - k] : al[2046 - 124 - k];
		else if(1534 - 124 - k >= 1024)
			assign a_right_124[1021 - k] = ctrl_124[1021 - k] ? al[510 - 124 - k] : al[1022 - 124 - k];
		else
			assign a_right_124[1021 - k] = ctrl_124[1021 - k] ? al[1534 - 124 - k] : al[1022 - 124 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_125
		if(1022 - 125 - k < 0)
			assign a_right_125[1021 - k] = ctrl_125[1021 - k] ? al[1534 - 125 - k] : al[2046 - 125 - k];
		else if(1534 - 125 - k >= 1024)
			assign a_right_125[1021 - k] = ctrl_125[1021 - k] ? al[510 - 125 - k] : al[1022 - 125 - k];
		else
			assign a_right_125[1021 - k] = ctrl_125[1021 - k] ? al[1534 - 125 - k] : al[1022 - 125 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_126
		if(1022 - 126 - k < 0)
			assign a_right_126[1021 - k] = ctrl_126[1021 - k] ? al[1534 - 126 - k] : al[2046 - 126 - k];
		else if(1534 - 126 - k >= 1024)
			assign a_right_126[1021 - k] = ctrl_126[1021 - k] ? al[510 - 126 - k] : al[1022 - 126 - k];
		else
			assign a_right_126[1021 - k] = ctrl_126[1021 - k] ? al[1534 - 126 - k] : al[1022 - 126 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_127
		if(1022 - 127 - k < 0)
			assign a_right_127[1021 - k] = ctrl_127[1021 - k] ? al[1534 - 127 - k] : al[2046 - 127 - k];
		else if(1534 - 127 - k >= 1024)
			assign a_right_127[1021 - k] = ctrl_127[1021 - k] ? al[510 - 127 - k] : al[1022 - 127 - k];
		else
			assign a_right_127[1021 - k] = ctrl_127[1021 - k] ? al[1534 - 127 - k] : al[1022 - 127 - k];
	end
endgenerate

generate
	for (k = 0; k < 1022; k = k + 1) begin : ctrl_right_128
		if(1022 - 128 - k < 0)
			assign a_right_128[1021 - k] = ctrl_128[1021 - k] ? al[1534 - 128 - k] : al[2046 - 128 - k];
		else if(1534 - 128 - k >= 1024)
			assign a_right_128[1021 - k] = ctrl_128[1021 - k] ? al[510 - 128 - k] : al[1022 - 128 - k];
		else
			assign a_right_128[1021 - k] = ctrl_128[1021 - k] ? al[1534 - 128 - k] : al[1022 - 128 - k];
	end
endgenerate


endmodule
