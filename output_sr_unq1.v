`define xassert(condition, message)

// dwidth (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
module output_sr_unq1(
clk,
reset,
data_in,
wen_w1,
wen_w2,
data_out,
avail,
ren,
valid
);

  input clk;
  input reset;
  input [31:0] data_in;
  input wen_w2;
  input wen_w1;
  input ren;
  output reg valid;
  output reg avail;
  output reg [15:0] data_out;

   assign valid = 0;
   assign avail = 0;

   assign data_out = 0;
   
endmodule
