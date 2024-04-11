/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #2                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #2 Half Adder and Full Adder                              ***
***                                                                      ***
****************************************************************************
*** Filename: full_adder_tb.v       Created by Steven Hernandez, 9/12/23 ***
***                                                                      ***
****************************************************************************
*** This module is a testbench for a full adder:                         ***
*** Here we will be testing our full adder by using inputs:              ***
*** 00,00,01,01,10,10,11,11                                              ***
****************************************************************************/

`timescale 1 ns / 1 ns
module half_adder_tb();
	
	//Inputs
	reg Data_in_A;
	reg Data_in_B;
	reg Data_in_C;

	//Outputs
	wire Data_out_Sum;
	wire Data_out_Carry;

	full_adder UUT(Data_in_A, Data_in_B, Data_in_C, Data_out_Sum, Data_out_Carry);     //calling from main file

	initial
	$monitorb ("%d Data_in_A= %b Data_in_B= %b Data_in_C= %b Data_out_Sum= %b Data_out_Carry= %b", $time, Data_in_A,Data_in_B, Data_in_C, Data_out_Sum, Data_out_Carry);         
	initial begin            //monitoring our input and ouputs in binary
	//$vcdpluson;
	Data_in_A=0;Data_in_B=0; Data_in_C=0;      //begin testing specific inputs 
	#10 Data_in_A=0; Data_in_B=0; Data_in_C=1;
	#20 Data_in_A=0; Data_in_B=1; Data_in_C=0;
	#20 Data_in_A=0; Data_in_B=1; Data_in_C=1;
	#20 Data_in_A=1; Data_in_B=0; Data_in_C=0;
	#20 Data_in_A=1; Data_in_B=0; Data_in_C=1;
	#20 Data_in_A=1; Data_in_B=1; Data_in_C=0;
	#20 Data_in_A=1; Data_in_B=1; Data_in_C=1;
	#20 $finish;
	end
endmodule

