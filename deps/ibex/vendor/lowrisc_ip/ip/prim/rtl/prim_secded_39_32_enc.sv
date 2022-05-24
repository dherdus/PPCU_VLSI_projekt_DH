// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Encoder generated by
// util/design/secded_gen.py -m 7 -k 32 -s 3759507082 -c hsiao

module prim_secded_39_32_enc (
  input        [31:0] in,
  output logic [38:0] out
);

  always_comb begin : p_encode
    out = 39'(in);
    out[32] = ^(out & 39'h00432358F1);
    out[33] = ^(out & 39'h00991D7680);
    out[34] = ^(out & 39'h00417AA04E);
    out[35] = ^(out & 39'h00EC104B1E);
    out[36] = ^(out & 39'h00A484A4E5);
    out[37] = ^(out & 39'h0016ED0B28);
    out[38] = ^(out & 39'h003AC29513);
  end

endmodule : prim_secded_39_32_enc
