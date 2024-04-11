/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #2                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #2 Half Adder and Full Adder                              ***
***                                                                      ***
****************************************************************************
*** Filename: full_adder.v          Created by Steven Hernandez, 9/12/23 ***
***                                                                      ***
****************************************************************************
*** This module is for a full adder:                                     ***
*** Here we wil be using our code for the half adder.                    ***
*** We will be using two Half Adders and adding an OR gate to make       ***
*** the full adder                                                       ***
****************************************************************************/


`timescale 1 ns/ 1 ns 

module full_adder(
	A, //input A
	B, //input B
	C, //input C
	Sum,
	Carry_out
	);              //inputs and outputs 
	input A;
	input B;
	input C;
	output Sum;
	output Carry_out;
	wire s1, c1, c2; 

half_adder HA1(A, B, s1, c1);       //using half adder from other file
half_adder HA2(s1, C, Sum, c2);    //second half adder
or (Carry_out, c2, c1);            //added or gate

endmodule 
