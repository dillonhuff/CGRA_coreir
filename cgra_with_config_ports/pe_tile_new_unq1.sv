//
//--------------------------------------------------------------------------------
//          THIS FILE WAS AUTOMATICALLY GENERATED BY THE GENESIS2 ENGINE        
//  FOR MORE INFORMATION: OFER SHACHAM (CHIP GENESIS INC / STANFORD VLSI GROUP)
//    !! THIS VERSION OF GENESIS2 IS NOT FOR ANY COMMERCIAL USE !!
//     FOR COMMERCIAL LICENSE CONTACT SHACHAM@ALUMNI.STANFORD.EDU
//--------------------------------------------------------------------------------
//
//  
//	-----------------------------------------------
//	|            Genesis Release Info             |
//	|  $Change: 11904 $ --- $Date: 2013/08/03 $   |
//	-----------------------------------------------
//	
//
//  Source file: /horowitz/users/dhuff/CGRAGenerator/hardware/generator_z/pe_tile_new/pe_tile_new.svp
//  Source template: pe_tile_new
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter lut_inps 	= 3
// Parameter use_shift 	= 1
// Parameter use_add 	= 1
// Parameter has_constant 	= 0
// Parameter all_segments_for_all_tiles 	= 1
// Parameter sides 	= 4
// Parameter is_msb 	= 0
// Parameter en_double 	= 0
// Parameter cb_connections 	= 11111111111111
// Parameter use_div 	= 0
// Parameter global_signal_count 	= 4
// Parameter registered_outputs 	= BUS16:11111 BUS1:11111
// Parameter reg_out 	= 0
// Parameter is_bidi 	= 0
// Parameter use_bool 	= 1
// Parameter sb_fs 	= 10000#10000#10000
// Parameter mult_mode 	= 1
// Parameter bus_config 	= BUS16:16b#1_1:1_1:1_1:1_1:1_1 BUS1:1b#1_1:1_1:1_1:1_1:1_1
// Parameter feedthrough_outputs 	= BUS16:00000 BUS1:00000
// Parameter reg_inputs 	= 1
// Parameter use_cntr 	= 1
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Command Line input (priority=4):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From XML input (priority=3):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Config File input (priority=2):
//
// ---------------- End Pre-Generation Pramameters Status Report ----------------

///////////////////////////////////////////////////////////////////
// CGRA PE generator
//
// (C) Stanford University
// Please do not remove this header
//////////////////////////////////////////////////////////////////
// bus_config (_GENESIS2_INHERITANCE_PRIORITY_) = BUS16:16b#1_1:1_1:1_1:1_1:1_1 BUS1:1b#1_1:1_1:1_1:1_1:1_1
//
// all_segments_for_all_tiles (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// global_signal_count (_GENESIS2_INHERITANCE_PRIORITY_) = 4
//
// sides (_GENESIS2_INHERITANCE_PRIORITY_) = 4
//
// feedthrough_outputs (_GENESIS2_INHERITANCE_PRIORITY_) = BUS16:00000 BUS1:00000
//
// registered_outputs (_GENESIS2_INHERITANCE_PRIORITY_) = BUS16:11111 BUS1:11111
//
// is_bidi (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// sb_fs (_GENESIS2_INHERITANCE_PRIORITY_) = 10000#10000#10000
//

// cb_connections (_GENESIS2_INHERITANCE_PRIORITY_) = 0xa1b01d4b1c7
//
// has_constant (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//

// reg_inputs (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// reg_out (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// use_add (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// use_cntr (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// use_bool (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// use_shift (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// mult_mode (_GENESIS2_INHERITANCE_PRIORITY_) = 1
//
// use_div (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// is_msb (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// en_double (_GENESIS2_INHERITANCE_PRIORITY_) = 0
//
// lut_inps (_GENESIS2_INHERITANCE_PRIORITY_) = 3
//
// en_debug (_GENESIS2_DECLARATION_PRIORITY_) = 1
//




module pe_tile_new_unq1 (
clk_in,
config_addr,
config_data,
config_read,
config_write,
out_BUS1_S0_T0,
in_BUS1_S0_T0,
out_BUS1_S0_T1,
in_BUS1_S0_T1,
out_BUS1_S0_T2,
in_BUS1_S0_T2,
out_BUS1_S0_T3,
in_BUS1_S0_T3,
out_BUS1_S0_T4,
in_BUS1_S0_T4,
out_BUS1_S1_T0,
in_BUS1_S1_T0,
out_BUS1_S1_T1,
in_BUS1_S1_T1,
out_BUS1_S1_T2,
in_BUS1_S1_T2,
out_BUS1_S1_T3,
in_BUS1_S1_T3,
out_BUS1_S1_T4,
in_BUS1_S1_T4,
out_BUS1_S2_T0,
in_BUS1_S2_T0,
out_BUS1_S2_T1,
in_BUS1_S2_T1,
out_BUS1_S2_T2,
in_BUS1_S2_T2,
out_BUS1_S2_T3,
in_BUS1_S2_T3,
out_BUS1_S2_T4,
in_BUS1_S2_T4,
out_BUS1_S3_T0,
in_BUS1_S3_T0,
out_BUS1_S3_T1,
in_BUS1_S3_T1,
out_BUS1_S3_T2,
in_BUS1_S3_T2,
out_BUS1_S3_T3,
in_BUS1_S3_T3,
out_BUS1_S3_T4,
in_BUS1_S3_T4,
out_BUS16_S0_T0,
in_BUS16_S0_T0,
out_BUS16_S0_T1,
in_BUS16_S0_T1,
out_BUS16_S0_T2,
in_BUS16_S0_T2,
out_BUS16_S0_T3,
in_BUS16_S0_T3,
out_BUS16_S0_T4,
in_BUS16_S0_T4,
out_BUS16_S1_T0,
in_BUS16_S1_T0,
out_BUS16_S1_T1,
in_BUS16_S1_T1,
out_BUS16_S1_T2,
in_BUS16_S1_T2,
out_BUS16_S1_T3,
in_BUS16_S1_T3,
out_BUS16_S1_T4,
in_BUS16_S1_T4,
out_BUS16_S2_T0,
in_BUS16_S2_T0,
out_BUS16_S2_T1,
in_BUS16_S2_T1,
out_BUS16_S2_T2,
in_BUS16_S2_T2,
out_BUS16_S2_T3,
in_BUS16_S2_T3,
out_BUS16_S2_T4,
in_BUS16_S2_T4,
out_BUS16_S3_T0,
in_BUS16_S3_T0,
out_BUS16_S3_T1,
in_BUS16_S3_T1,
out_BUS16_S3_T2,
in_BUS16_S3_T2,
out_BUS16_S3_T3,
in_BUS16_S3_T3,
out_BUS16_S3_T4,
in_BUS16_S3_T4,
gin_0,
gin_1,
gin_2,
gin_3,
gout,
reset,
tile_id,
read_data
);
  input clk_in;
  input [31:0] config_addr;
  input [31:0] config_data;
  input config_read;
  input config_write;
  output [0:0] out_BUS1_S0_T0;
  input [0:0] in_BUS1_S0_T0;
  output [0:0] out_BUS1_S0_T1;
  input [0:0] in_BUS1_S0_T1;
  output [0:0] out_BUS1_S0_T2;
  input [0:0] in_BUS1_S0_T2;
  output [0:0] out_BUS1_S0_T3;
  input [0:0] in_BUS1_S0_T3;
  output [0:0] out_BUS1_S0_T4;
  input [0:0] in_BUS1_S0_T4;
  output [0:0] out_BUS1_S1_T0;
  input [0:0] in_BUS1_S1_T0;
  output [0:0] out_BUS1_S1_T1;
  input [0:0] in_BUS1_S1_T1;
  output [0:0] out_BUS1_S1_T2;
  input [0:0] in_BUS1_S1_T2;
  output [0:0] out_BUS1_S1_T3;
  input [0:0] in_BUS1_S1_T3;
  output [0:0] out_BUS1_S1_T4;
  input [0:0] in_BUS1_S1_T4;
  output [0:0] out_BUS1_S2_T0;
  input [0:0] in_BUS1_S2_T0;
  output [0:0] out_BUS1_S2_T1;
  input [0:0] in_BUS1_S2_T1;
  output [0:0] out_BUS1_S2_T2;
  input [0:0] in_BUS1_S2_T2;
  output [0:0] out_BUS1_S2_T3;
  input [0:0] in_BUS1_S2_T3;
  output [0:0] out_BUS1_S2_T4;
  input [0:0] in_BUS1_S2_T4;
  output [0:0] out_BUS1_S3_T0;
  input [0:0] in_BUS1_S3_T0;
  output [0:0] out_BUS1_S3_T1;
  input [0:0] in_BUS1_S3_T1;
  output [0:0] out_BUS1_S3_T2;
  input [0:0] in_BUS1_S3_T2;
  output [0:0] out_BUS1_S3_T3;
  input [0:0] in_BUS1_S3_T3;
  output [0:0] out_BUS1_S3_T4;
  input [0:0] in_BUS1_S3_T4;
  output [15:0] out_BUS16_S0_T0;
  input [15:0] in_BUS16_S0_T0;
  output [15:0] out_BUS16_S0_T1;
  input [15:0] in_BUS16_S0_T1;
  output [15:0] out_BUS16_S0_T2;
  input [15:0] in_BUS16_S0_T2;
  output [15:0] out_BUS16_S0_T3;
  input [15:0] in_BUS16_S0_T3;
  output [15:0] out_BUS16_S0_T4;
  input [15:0] in_BUS16_S0_T4;
  output [15:0] out_BUS16_S1_T0;
  input [15:0] in_BUS16_S1_T0;
  output [15:0] out_BUS16_S1_T1;
  input [15:0] in_BUS16_S1_T1;
  output [15:0] out_BUS16_S1_T2;
  input [15:0] in_BUS16_S1_T2;
  output [15:0] out_BUS16_S1_T3;
  input [15:0] in_BUS16_S1_T3;
  output [15:0] out_BUS16_S1_T4;
  input [15:0] in_BUS16_S1_T4;
  output [15:0] out_BUS16_S2_T0;
  input [15:0] in_BUS16_S2_T0;
  output [15:0] out_BUS16_S2_T1;
  input [15:0] in_BUS16_S2_T1;
  output [15:0] out_BUS16_S2_T2;
  input [15:0] in_BUS16_S2_T2;
  output [15:0] out_BUS16_S2_T3;
  input [15:0] in_BUS16_S2_T3;
  output [15:0] out_BUS16_S2_T4;
  input [15:0] in_BUS16_S2_T4;
  output [15:0] out_BUS16_S3_T0;
  input [15:0] in_BUS16_S3_T0;
  output [15:0] out_BUS16_S3_T1;
  input [15:0] in_BUS16_S3_T1;
  output [15:0] out_BUS16_S3_T2;
  input [15:0] in_BUS16_S3_T2;
  output [15:0] out_BUS16_S3_T3;
  input [15:0] in_BUS16_S3_T3;
  output [15:0] out_BUS16_S3_T4;
  input [15:0] in_BUS16_S3_T4;
  input gin_0;
  input gin_1;
  input gin_2;
  input gin_3;
  output reg gout;
  input [15:0] tile_id;
  input reset;
  output reg [31:0] read_data;
  wire clk_en;


   reg config_en_pe;
   always @(*) begin
     if (reset) begin
        config_en_pe = 1'b0;
     end else begin
        if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd0)&&config_write) begin
          config_en_pe = 1'b1;
        end else begin
          config_en_pe = 1'b0;
        end
     end
   end
     logic [31:0] read_data_pe;
   
   
   

  
  reg config_en_cb_data0;
  always @(*) begin
    if (reset) begin
       config_en_cb_data0 = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd2)&&config_write) begin
         config_en_cb_data0 = 1'b1;
       end else begin
         config_en_cb_data0 = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_data0;
  wire [15:0] data0;
  cb_unq1  cb_data0
  (
    .clk(clk_in),
    .reset(reset),
    .out(data0),
    .in_0(in_BUS16_S2_T0),
    .in_1(in_BUS16_S2_T1),
    .in_2(in_BUS16_S2_T2),
    .in_3(in_BUS16_S2_T3),
    .in_4(in_BUS16_S2_T4),
    .in_5(out_BUS16_S2_T0),
    .in_6(out_BUS16_S2_T1),
    .in_7(out_BUS16_S2_T2),
    .in_8(out_BUS16_S2_T3),
    .in_9(out_BUS16_S2_T4),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_data0),
    .read_data(read_data_cb_data0)
  );
  reg config_en_cb_data1;
  always @(*) begin
    if (reset) begin
       config_en_cb_data1 = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd3)&&config_write) begin
         config_en_cb_data1 = 1'b1;
       end else begin
         config_en_cb_data1 = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_data1;
  wire [15:0] data1;
  cb_unq1  cb_data1
  (
    .clk(clk_in),
    .reset(reset),
    .out(data1),
    .in_0(in_BUS16_S1_T0),
    .in_1(in_BUS16_S1_T1),
    .in_2(in_BUS16_S1_T2),
    .in_3(in_BUS16_S1_T3),
    .in_4(in_BUS16_S1_T4),
    .in_5(out_BUS16_S1_T0),
    .in_6(out_BUS16_S1_T1),
    .in_7(out_BUS16_S1_T2),
    .in_8(out_BUS16_S1_T3),
    .in_9(out_BUS16_S1_T4),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_data1),
    .read_data(read_data_cb_data1)
  );
  reg config_en_cb_bit0;
  always @(*) begin
    if (reset) begin
       config_en_cb_bit0 = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd4)&&config_write) begin
         config_en_cb_bit0 = 1'b1;
       end else begin
         config_en_cb_bit0 = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_bit0;
  wire bit0;
  cb_unq2  cb_bit0
  (
    .clk(clk_in),
    .reset(reset),
    .out(bit0),
    .in_0(in_BUS1_S2_T0),
    .in_1(in_BUS1_S2_T1),
    .in_2(in_BUS1_S2_T2),
    .in_3(in_BUS1_S2_T3),
    .in_4(in_BUS1_S2_T4),
    .in_5(out_BUS1_S2_T0),
    .in_6(out_BUS1_S2_T1),
    .in_7(out_BUS1_S2_T2),
    .in_8(out_BUS1_S2_T3),
    .in_9(out_BUS1_S2_T4),
    .in_10(gin_0),
    .in_11(gin_1),
    .in_12(gin_2),
    .in_13(gin_3),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_bit0),
    .read_data(read_data_cb_bit0)
  );
  reg config_en_cb_bit1;
  always @(*) begin
    if (reset) begin
       config_en_cb_bit1 = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd5)&&config_write) begin
         config_en_cb_bit1 = 1'b1;
       end else begin
         config_en_cb_bit1 = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_bit1;
  wire bit1;
  cb_unq2  cb_bit1
  (
    .clk(clk_in),
    .reset(reset),
    .out(bit1),
    .in_0(in_BUS1_S1_T0),
    .in_1(in_BUS1_S1_T1),
    .in_2(in_BUS1_S1_T2),
    .in_3(in_BUS1_S1_T3),
    .in_4(in_BUS1_S1_T4),
    .in_5(out_BUS1_S1_T0),
    .in_6(out_BUS1_S1_T1),
    .in_7(out_BUS1_S1_T2),
    .in_8(out_BUS1_S1_T3),
    .in_9(out_BUS1_S1_T4),
    .in_10(gin_0),
    .in_11(gin_1),
    .in_12(gin_2),
    .in_13(gin_3),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_bit1),
    .read_data(read_data_cb_bit1)
  );
  reg config_en_cb_bit2;
  always @(*) begin
    if (reset) begin
       config_en_cb_bit2 = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd6)&&config_write) begin
         config_en_cb_bit2 = 1'b1;
       end else begin
         config_en_cb_bit2 = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_bit2;
  wire bit2;
  cb_unq2  cb_bit2
  (
    .clk(clk_in),
    .reset(reset),
    .out(bit2),
    .in_0(in_BUS1_S2_T0),
    .in_1(in_BUS1_S2_T1),
    .in_2(in_BUS1_S2_T2),
    .in_3(in_BUS1_S2_T3),
    .in_4(in_BUS1_S2_T4),
    .in_5(out_BUS1_S2_T0),
    .in_6(out_BUS1_S2_T1),
    .in_7(out_BUS1_S2_T2),
    .in_8(out_BUS1_S2_T3),
    .in_9(out_BUS1_S2_T4),
    .in_10(gin_0),
    .in_11(gin_1),
    .in_12(gin_2),
    .in_13(gin_3),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_bit2),
    .read_data(read_data_cb_bit2)
  );
  reg config_en_cb_cg_en;
  always @(*) begin
    if (reset) begin
       config_en_cb_cg_en = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd7)&&config_write) begin
         config_en_cb_cg_en = 1'b1;
       end else begin
         config_en_cb_cg_en = 1'b0;
       end
    end
  end
  logic [31:0] read_data_cb_cg_en;
  wire cg_en;
  cb_unq2  cb_cg_en
  (
    .clk(clk_in),
    .reset(reset),
    .out(cg_en),
    .in_0(in_BUS1_S1_T0),
    .in_1(in_BUS1_S1_T1),
    .in_2(in_BUS1_S1_T2),
    .in_3(in_BUS1_S1_T3),
    .in_4(in_BUS1_S1_T4),
    .in_5(out_BUS1_S1_T0),
    .in_6(out_BUS1_S1_T1),
    .in_7(out_BUS1_S1_T2),
    .in_8(out_BUS1_S1_T3),
    .in_9(out_BUS1_S1_T4),
    .in_10(gin_0),
    .in_11(gin_1),
    .in_12(gin_2),
    .in_13(gin_3),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_cb_cg_en),
    .read_data(read_data_cb_cg_en)
  );

    wire pe_out_irq;
  assign clk_en = ~cg_en;
  reg config_en_sb_wide;
  always @(*) begin
    if (reset) begin
       config_en_sb_wide = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd8)&&config_write) begin
         config_en_sb_wide = 1'b1;
       end else begin
         config_en_sb_wide = 1'b0;
       end
    end
  end
  logic [31:0] read_data_sb_wide;
  wire [15:0] pe_out_res;
  sb_unq1  sb_wide
  (
    .clk(clk_in),
    .clk_en(clk_en),
    .reset(reset),
    .pe_output_0(pe_out_res),
    .out_0_0(out_BUS16_S0_T0),
    .in_0_0(in_BUS16_S0_T0),
    .out_0_1(out_BUS16_S0_T1),
    .in_0_1(in_BUS16_S0_T1),
    .out_0_2(out_BUS16_S0_T2),
    .in_0_2(in_BUS16_S0_T2),
    .out_0_3(out_BUS16_S0_T3),
    .in_0_3(in_BUS16_S0_T3),
    .out_0_4(out_BUS16_S0_T4),
    .in_0_4(in_BUS16_S0_T4),
    .out_1_0(out_BUS16_S1_T0),
    .in_1_0(in_BUS16_S1_T0),
    .out_1_1(out_BUS16_S1_T1),
    .in_1_1(in_BUS16_S1_T1),
    .out_1_2(out_BUS16_S1_T2),
    .in_1_2(in_BUS16_S1_T2),
    .out_1_3(out_BUS16_S1_T3),
    .in_1_3(in_BUS16_S1_T3),
    .out_1_4(out_BUS16_S1_T4),
    .in_1_4(in_BUS16_S1_T4),
    .out_2_0(out_BUS16_S2_T0),
    .in_2_0(in_BUS16_S2_T0),
    .out_2_1(out_BUS16_S2_T1),
    .in_2_1(in_BUS16_S2_T1),
    .out_2_2(out_BUS16_S2_T2),
    .in_2_2(in_BUS16_S2_T2),
    .out_2_3(out_BUS16_S2_T3),
    .in_2_3(in_BUS16_S2_T3),
    .out_2_4(out_BUS16_S2_T4),
    .in_2_4(in_BUS16_S2_T4),
    .out_3_0(out_BUS16_S3_T0),
    .in_3_0(in_BUS16_S3_T0),
    .out_3_1(out_BUS16_S3_T1),
    .in_3_1(in_BUS16_S3_T1),
    .out_3_2(out_BUS16_S3_T2),
    .in_3_2(in_BUS16_S3_T2),
    .out_3_3(out_BUS16_S3_T3),
    .in_3_3(in_BUS16_S3_T3),
    .out_3_4(out_BUS16_S3_T4),
    .in_3_4(in_BUS16_S3_T4),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_sb_wide),
    .read_data(read_data_sb_wide)
  );


  reg config_en_sb_1bit;
  always @(*) begin
    if (reset) begin
       config_en_sb_1bit = 1'b0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd9)&&config_write) begin
         config_en_sb_1bit = 1'b1;
       end else begin
         config_en_sb_1bit = 1'b0;
       end
    end
  end
  logic [31:0] read_data_sb_1bit;
  wire pe_out_res_p;
  sb_unq2  sb_1b
  (
    .clk(clk_in),
    .clk_en(clk_en),
    .reset(reset),
    .pe_output_0(pe_out_res_p),
    .out_0_0(out_BUS1_S0_T0),
    .in_0_0(in_BUS1_S0_T0),
    .out_0_1(out_BUS1_S0_T1),
    .in_0_1(in_BUS1_S0_T1),
    .out_0_2(out_BUS1_S0_T2),
    .in_0_2(in_BUS1_S0_T2),
    .out_0_3(out_BUS1_S0_T3),
    .in_0_3(in_BUS1_S0_T3),
    .out_0_4(out_BUS1_S0_T4),
    .in_0_4(in_BUS1_S0_T4),
    .out_1_0(out_BUS1_S1_T0),
    .in_1_0(in_BUS1_S1_T0),
    .out_1_1(out_BUS1_S1_T1),
    .in_1_1(in_BUS1_S1_T1),
    .out_1_2(out_BUS1_S1_T2),
    .in_1_2(in_BUS1_S1_T2),
    .out_1_3(out_BUS1_S1_T3),
    .in_1_3(in_BUS1_S1_T3),
    .out_1_4(out_BUS1_S1_T4),
    .in_1_4(in_BUS1_S1_T4),
    .out_2_0(out_BUS1_S2_T0),
    .in_2_0(in_BUS1_S2_T0),
    .out_2_1(out_BUS1_S2_T1),
    .in_2_1(in_BUS1_S2_T1),
    .out_2_2(out_BUS1_S2_T2),
    .in_2_2(in_BUS1_S2_T2),
    .out_2_3(out_BUS1_S2_T3),
    .in_2_3(in_BUS1_S2_T3),
    .out_2_4(out_BUS1_S2_T4),
    .in_2_4(in_BUS1_S2_T4),
    .out_3_0(out_BUS1_S3_T0),
    .in_3_0(in_BUS1_S3_T0),
    .out_3_1(out_BUS1_S3_T1),
    .in_3_1(in_BUS1_S3_T1),
    .out_3_2(out_BUS1_S3_T2),
    .in_3_2(in_BUS1_S3_T2),
    .out_3_3(out_BUS1_S3_T3),
    .in_3_3(in_BUS1_S3_T3),
    .out_3_4(out_BUS1_S3_T4),
    .in_3_4(in_BUS1_S3_T4),
    .config_addr(config_addr),
    .config_data(config_data),
    .config_en(config_en_sb_1bit),
    .read_data(read_data_sb_1bit)
  );

  reg [0:0] gout_sel;
  always @(posedge clk_in or posedge reset) begin
    if (reset==1'b1) begin
       gout_sel <= 1'd0;
    end else begin
       if ((config_addr[15:0]==tile_id)&&(config_addr[23:16]==8'd10)) begin
         gout_sel  <= config_data[0:0];
       end
    end
  end
  always @(*) begin
    case (gout_sel)
      default: gout = 1'b0;
      1'd0: gout = 1'b0;
      1'd1: gout = pe_out_irq;
    endcase
  end




/****************************************
 * Clock gating should go inside each unit in order to unstall certain register
 * assign clk = clk_in & cg_en;
 *
 ****************************************/







test_pe_unq1  test_pe
 (
  .clk(clk_in),
  .rst_n(~reset),
  .clk_en(clk_en),
  .cfg_d(config_data[31:0]),
  .cfg_a(config_addr[31:24]),
  .cfg_en(config_en_pe),
  .data0(data0),
  .data1(data1),
  .bit0(bit0),
  .bit1(bit1),
  .bit2(bit2),
  .res(pe_out_res),
  .res_p(pe_out_res_p),
      .irq(pe_out_irq),
  .read_data(read_data_pe)
);

always_comb begin
    if (config_read && (config_addr[15:0]==tile_id)) begin
        case (config_addr[23:16])
          8'd0 : read_data = read_data_pe;
               8'd10 : read_data = gout_sel;
          8'd2 : read_data = read_data_cb_data0;
          8'd3 : read_data = read_data_cb_data1;
          8'd4 : read_data = read_data_cb_bit0;
          8'd5 : read_data = read_data_cb_bit1;
          8'd6 : read_data = read_data_cb_bit2;
          8'd7 : read_data = read_data_cb_cg_en;
          8'd8 : read_data = read_data_sb_wide;
          8'd9 : read_data = read_data_sb_1bit;
          default : read_data = 'd0;
        endcase
    end 
    else
        read_data = 'd0;
end


endmodule
