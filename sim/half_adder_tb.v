/***************************************************************************
***                                                                      ***
*** EE 526 L Experiment #2                  Steven Hernandez, Fall, 2023 ***
***                                                                      ***
*** Experiment #2 Half Adder and Full Adder                              ***
***                                                                      ***
****************************************************************************
*** Filename: half_adder_tb.v       Created by Steven Hernandez, 9/12/23 ***
***                                                                      ***
****************************************************************************
*** This module is a test bench for a half adder:                        ***
*** Here I will be testing outputs: 00,01,10,11                          ***
****************************************************************************/

`timescale 1 ns / 1 ns
module half_adder_tb();
	reg a, b;    //registering my inputs
	wire s, c;   // wiring outputs

	half_adder UUT(a, b, s, c);      //calling from main code

	initial
	$monitorb ("%d a= %b b= %b s= %b c= %b", $time, a, b, s, c);    //monitoring my input, output, carry and sum
	initial begin
	//$vcdpluson;
	a=0;b=0;          //begin testing outputs
	#10 a=0; b=1;
	#20 a=1; b=0;
	#20 a=1; b=1;
	#20 $finish;
	end
endmodule

