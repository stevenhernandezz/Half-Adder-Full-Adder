/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #2                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #2 Half Adder and Full Adder                              ***
***                                                                      ***
****************************************************************************
*** Filename: half_adder.v          Created by Steven Hernandez, 9/12/23 ***
***                                                                      ***
****************************************************************************
*** This module is for a half adder:                                     ***
*** Here we have 2 inputs A,and B and two outputs S and C                ***
****************************************************************************/

`timescale 1 ns/ 1 ns 

module half_adder(
	input a, //Input 'a'
	input b, //Input 'b'
	output s, //Output 's' (Sum)
	output c //Output 'c' (Carry)    //inputs and outputs 
	);
and (c, a, b);        // output c, inputs a, and b
xor (s, a, b);        //output s, inputs a, and b

endmodule 
