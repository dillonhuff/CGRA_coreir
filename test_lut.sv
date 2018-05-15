module  test_lut  #(
  parameter DataWidth = 16
) (
  input                  cfg_clk,
  input                  cfg_rst_n,
  input  [31:0]          cfg_d,
  input  [7:0]           cfg_a,
  input                  cfg_en,

  input  [DataWidth-1:0] op_a_in,
  input  [DataWidth-1:0] op_b_in,

  input               op_c_in,

  output logic [DataWidth-1:0] res
);

   assign res = 16'hffff;
 //0;
   

// genvar ggg;
// generate
//   for (ggg = 0; ggg < DataWidth; ggg = ggg +1) begin : GEN_LUT

//     logic [7:0] lut;

//     always_ff @(posedge cfg_clk or negedge cfg_rst_n) begin
//       if(~cfg_rst_n) begin
//         lut   <= 8'h0;
//       end else if(cfg_en && (cfg_a == $unsigned(ggg/4)) ) begin
//         lut   <= cfg_d[7: 0];
//       end
//     end

//     assign res[ggg] = lut[{op_c_in, op_b_in[ggg], op_a_in[ggg]}];
//   end
// endgenerate


// logic [31:0] nc_cfg_d;
// assign nc_cfg_d = cfg_d;

endmodule




