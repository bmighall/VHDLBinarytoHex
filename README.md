# VHDL Switch-Based Binary to Hexadecimal Converter with Seven-Segment Display Output (Artix-7 family Nexys 4 FPGA) 
Creator: Ben Mighall

This program is a simple binary-to-hex translator using the FPGA onboard switches and one digit of the seven-segment display.

Switches 3, 2, 1, and 0 serve as the digits for the binary number, where 'on' is 1 and 'off' is 0. Using a case conditional, that is then translated into a single hexadecimal digit which is displayed on the first digit of the seven-segment display.

This code was written as part of coursework for University of Mississippi class EL E 386 (Advanced Digital Systems Lab), and using an Artix-7 family Nexys 4 FPGA board. Constraints file is included in this repository.
