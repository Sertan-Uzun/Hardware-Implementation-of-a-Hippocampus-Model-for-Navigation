// -------------------------------------------------------------
// 
// File Name: C:\Users\Sertan\Desktop\Simulink_Model\Verilog_Codes\Improved_Network_Model\Compare_To_Constant_block27.v
// Created: 2025-07-05 12:04:46
// 
// Generated by MATLAB 23.2, HDL Coder 23.2, and Simulink 23.2
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Compare_To_Constant_block27
// Source Path: Improved_Network_Model/PFe3/Compare To Constant
// Hierarchy Level: 2
// Model version: 1.37
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Compare_To_Constant_block27
          (u,
           y);


  input   signed [15:0] u;  // sfix16_En8
  output  y;


  wire signed [15:0] Constant_out1;  // sfix16_En8
  wire Compare_relop1;


  assign Constant_out1 = 16'sb1100111000000000;



  assign Compare_relop1 = u >= Constant_out1;



  assign y = Compare_relop1;

endmodule  // Compare_To_Constant_block27

