// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Decoder generated by
// util/design/secded_gen.py -m 7 -k 32 -s 3759507082 -c hsiao

module prim_secded_39_32_dec (
  input        [38:0] in,
  output logic [31:0] d_o,
  output logic [6:0] syndrome_o,
  output logic [1:0] err_o
);

  logic single_error;

  // Syndrome calculation
  assign syndrome_o[0] = ^(in & 39'h01432358F1);
  assign syndrome_o[1] = ^(in & 39'h02991D7680);
  assign syndrome_o[2] = ^(in & 39'h04417AA04E);
  assign syndrome_o[3] = ^(in & 39'h08EC104B1E);
  assign syndrome_o[4] = ^(in & 39'h10A484A4E5);
  assign syndrome_o[5] = ^(in & 39'h2016ED0B28);
  assign syndrome_o[6] = ^(in & 39'h403AC29513);

  // Corrected output calculation
  assign d_o[0] = (syndrome_o == 7'h51) ^ in[0];
  assign d_o[1] = (syndrome_o == 7'h4c) ^ in[1];
  assign d_o[2] = (syndrome_o == 7'h1c) ^ in[2];
  assign d_o[3] = (syndrome_o == 7'h2c) ^ in[3];
  assign d_o[4] = (syndrome_o == 7'h49) ^ in[4];
  assign d_o[5] = (syndrome_o == 7'h31) ^ in[5];
  assign d_o[6] = (syndrome_o == 7'h15) ^ in[6];
  assign d_o[7] = (syndrome_o == 7'h13) ^ in[7];
  assign d_o[8] = (syndrome_o == 7'h68) ^ in[8];
  assign d_o[9] = (syndrome_o == 7'h2a) ^ in[9];
  assign d_o[10] = (syndrome_o == 7'h52) ^ in[10];
  assign d_o[11] = (syndrome_o == 7'h29) ^ in[11];
  assign d_o[12] = (syndrome_o == 7'h43) ^ in[12];
  assign d_o[13] = (syndrome_o == 7'h16) ^ in[13];
  assign d_o[14] = (syndrome_o == 7'hb) ^ in[14];
  assign d_o[15] = (syndrome_o == 7'h54) ^ in[15];
  assign d_o[16] = (syndrome_o == 7'h23) ^ in[16];
  assign d_o[17] = (syndrome_o == 7'h45) ^ in[17];
  assign d_o[18] = (syndrome_o == 7'h32) ^ in[18];
  assign d_o[19] = (syndrome_o == 7'h26) ^ in[19];
  assign d_o[20] = (syndrome_o == 7'he) ^ in[20];
  assign d_o[21] = (syndrome_o == 7'h25) ^ in[21];
  assign d_o[22] = (syndrome_o == 7'h64) ^ in[22];
  assign d_o[23] = (syndrome_o == 7'h70) ^ in[23];
  assign d_o[24] = (syndrome_o == 7'h7) ^ in[24];
  assign d_o[25] = (syndrome_o == 7'h61) ^ in[25];
  assign d_o[26] = (syndrome_o == 7'h38) ^ in[26];
  assign d_o[27] = (syndrome_o == 7'h4a) ^ in[27];
  assign d_o[28] = (syndrome_o == 7'h62) ^ in[28];
  assign d_o[29] = (syndrome_o == 7'h58) ^ in[29];
  assign d_o[30] = (syndrome_o == 7'hd) ^ in[30];
  assign d_o[31] = (syndrome_o == 7'h1a) ^ in[31];

  // err_o calc. bit0: single error, bit1: double error
  assign single_error = ^syndrome_o;
  assign err_o[0] = single_error;
  assign err_o[1] = ~single_error & (|syndrome_o);

endmodule : prim_secded_39_32_dec
