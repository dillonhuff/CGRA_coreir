// This is a stub created by Dillon Huff to hack around
// the fact that yosys cannot currently handle system verilog.
// It should only be used for conversion to CoreIR for analysis

// -------------------------------------------------------------------
// DO NOT USE THIS MODULE IN THE REAL VERSION!!!
// -------------------------------------------------------------------

module global_controller_unq1 (
clk_in, reset_in,
config_data_in,
config_addr_out,
config_data_out,
clk_out,
reset_out,
cgra_stalled,
read,
write,
tdi,
tdo,
tms,
tck,
trst_n
);
  
  input  tck;
  input  clk_in;
  input  reset_in;
  input  tdi;
  input  tms;
  input  trst_n;
  input [31:0] config_data_in;

  output reg read;
  output reg write;
  output reg [31:0] config_addr_out;
  output reg [31:0] config_data_out;
  output reg clk_out;
  output reg reset_out;
  output reg cgra_stalled;
  output tdo;

   assign clk_out = 1'b0;
   
//   wire [31:0] config_addr_jtag_out;
//   wire [31:0] config_data_jtag_out;
//   wire [4:0] op;
//   reg [31:0] config_data_jtag_in;
//   reg clk;
//   reg clk_domain;
//   reg sys_clk_activated;
//   //Extra flops to cross clock boundary
//   reg sys_clk_act_sync_1;
//   reg sys_clk_act_sync_2;
//   //separate op out from address field
// template_ifc_unq1  jtag_ifc (.Clk(clk), .Reset(reset_in));
// jtag_unq1  jtag_controller (.ifc(jtag_ifc),
// 			    .sys_clk_activated(sys_clk_activated),
// 			    .bsr_tdi(),
// 			    .bsr_sample(),
// 			    .bsr_intest(),
// 			    .bsr_extest(),
// 			    .bsr_update_en(),
// 			    .bsr_capture_en(),
// 		 	    .bsr_shift_dr(),
// 			    .bsr_tdo()
// 			    );

// //Connect signals to jtag_ifc ports
//       assign jtag_ifc.tck=tck;
//       assign jtag_ifc.tdi=tdi;
//       assign jtag_ifc.tms=tms;
//       assign jtag_ifc.trst_n=trst_n;
//       assign jtag_ifc.config_data_from_gc=config_data_jtag_in; 
//       assign tdo = jtag_ifc.tdo;
//       assign config_data_jtag_out = jtag_ifc.config_data_to_gc;
//       assign config_addr_jtag_out = jtag_ifc.config_addr_to_gc;
//       assign op = jtag_ifc.config_op_to_gc;
 
//   //OPCODES
//   parameter NOP = 5'd0;
//   parameter write_config =5'd1;
//   parameter read_config = 5'd2;
//   //parameter set_base_reg = 5'd3;
//   //parameter set_rw_and_count = 5'd4;
//   //parameter burst_start = 5'd5;
//   //parameter write_data = 5'd5;
//   //parameter read_data = 5'd6;
//   parameter write_A050 = 5'd7;
//   parameter write_TST = 5'd8;
//   parameter read_TST = 5'd9;
//   parameter global_reset = 5'd10;
//   //parameter reset_tile = 5'd11; 
//   parameter stall = 5'd12;
//   parameter advance_clk = 5'd13;
//   parameter resume_clk = 5'd14;
//   parameter sys_clk_on = 5'd15;
//   parameter wr_rd_delay_reg = 5'd16;
//   parameter rd_rd_delay_reg = 5'd17;
//   parameter wr_delay_sel_reg = 5'd18;
//   parameter rd_delay_sel_reg = 5'd19;
//   //STATES FOR IGNORING INCOMING INSTRUCTIONS
//   parameter ready = 2'd0;
//   parameter reading = 2'd1;
//   parameter resetting = 2'd2;
//   parameter advancing_clk = 2'd3;

//   reg [1:0] state;
 
//   logic all_stalled_tck;
//   logic all_stalled_tck_rise;
//   logic all_stalled_tck_fall;

//   logic all_stalled_sys;
//   logic all_stalled_sys_rise;
//   logic all_stalled_sys_fall;

//   //delay_sel[1] specifies delay for all_stalled_tck
//   //delay_sel[0] specifices delay for all_stalled_sys
//   logic [1:0] delay_sel;

//   logic clk_switch_request;
//   logic [31:0] TST;
//   logic [31:0] counter;
//   logic [31:0] rd_delay_reg;
//   logic [5:0] clk_switch_counter;
//   always_comb begin
//     	clk_domain = (sys_clk_activated) ? clk_in : tck;//Are we running the GC/CGRA on sys clk or test clk?
// 	all_stalled_tck = delay_sel[1] ? all_stalled_tck_fall : all_stalled_tck_rise;
// 	all_stalled_sys = delay_sel[0] ? all_stalled_sys_fall : all_stalled_sys_rise;
// 	clk = ((all_stalled_tck & !sys_clk_activated) | (all_stalled_sys & sys_clk_activated )) ? 0 : clk_domain; //Are we stalling both GC and CGRA during clk domain switch?
// 	clk_out = clk;
//    	reset_out = (state==resetting) ? 1 : reset_in;
//   end
//   //Clock switch counter block (Always on test_clk)
//   always @ (posedge tck or posedge reset_in) begin
// 	if (reset_in==1) begin
// 		clk_switch_counter <= 32'd20;
// 		sys_clk_activated <= 0;
// 		all_stalled_tck_rise <= 0;
// 	end
// 	else if ((clk_switch_counter > 0) & (clk_switch_request == 1)) begin
// 		all_stalled_tck_rise <= 1;//Deactivate clk to rest of GC
// 		clk_switch_counter <= clk_switch_counter - 1;	
// 	end
// 	else if (!sys_clk_activated & clk_switch_counter <= 0 ) begin
// 		sys_clk_activated <= 1;
// 	end	
//   end
//   //FALLING EDGE TCK. In case we need to delay the clock gating signal by an extra half cycle
//   always @ (negedge tck or posedge reset_in) begin
// 	if (reset_in==1)
// 		all_stalled_tck_fall <= 0;
// 	else
// 		all_stalled_tck_fall <= all_stalled_tck_rise;
//   end
  
//   //IMPLEMENT SYNC FLOPS TO CROSS CLK BOUNDARY
//   always @ (posedge clk_in or posedge reset_in) begin
// 	if(reset_in==1) begin
// 		sys_clk_act_sync_1 <= 0;
// 		sys_clk_act_sync_2 <= 0;
// 	end
// 	else begin	
// 		sys_clk_act_sync_1 <= sys_clk_activated;
// 		sys_clk_act_sync_2 <= sys_clk_act_sync_1;
// 	end
//   end  

//   always @ (posedge clk_in or posedge reset_in) begin 
// 	if (reset_in==1) begin
// 		all_stalled_sys_rise <= 1;
// 	end
// 	else if (sys_clk_act_sync_2 == 1)
// 		all_stalled_sys_rise <= 0;
//   end

//   //FALLING EDGE SYS CLK. In case we need to delay the clock gating signal by an extra half cycle
//   always @ (negedge clk_in or posedge reset_in) begin
// 	if (reset_in==1)
// 		all_stalled_sys_fall <= 0;
// 	else
// 		all_stalled_sys_fall <= all_stalled_sys_rise;
//   end

//   always @ (posedge clk or posedge reset_in) begin
//     	if (reset_in==1) begin
// 		cgra_stalled <= 0;
//        		clk_switch_request <= 0;
// 		rd_delay_reg <= 16;
// 		TST <= 0;
// 		counter <= 0;
// 		config_addr_out <= 0;
// 		config_data_out <= 0;
// 		config_data_jtag_in <= 0;
// 		delay_sel <= 2'b0;
// 		read <= 0;
// 		write <= 0;
//     	end

//     	else begin
//     		if (state==ready) begin
//     			case(op)
// 			NOP: begin
// 				config_addr_out <= config_addr_out;
// 				config_data_out <= config_data_out;
// 				config_data_jtag_in <= config_data_jtag_in;	
// 				read <= 0;
// 				write <= 0;
// 			end
// 			write_config: begin
// 				config_addr_out <= config_addr_jtag_out;
// 				config_data_out <= config_data_jtag_out; 
// 				read <= 0;
// 				write <= 1;
// 			end
// 			read_config: begin
// 				config_addr_out <= config_addr_jtag_out;
// 				config_data_out <= config_data_jtag_out; 
// 				counter <= rd_delay_reg-1;
// 				state <= reading;
// 				read <= 1;
// 				write <= 0;
// 			end
// 			write_A050: begin
// 				config_data_jtag_in <= 32'hA050;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			write_TST: begin
// 				TST <= config_data_jtag_out;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			read_TST: begin
// 				config_data_jtag_in <= TST;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			global_reset: begin
// 				state <= resetting;
// 				counter <= (config_data_jtag_out > 0) ? config_data_jtag_out-1 : 32'd19;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			stall: begin
// 				cgra_stalled <= 1;
// 				read <= 0;
// 				write <= 0;
// 			end			
// 			advance_clk: begin
// 				if (cgra_stalled) begin
// 					counter <= config_data_jtag_out-1;
// 					state <= advancing_clk;	
// 					cgra_stalled <= 0;
// 				end
// 				read <= 0;
// 				write <= 0;
// 			end
// 			resume_clk: begin
// 				cgra_stalled <= 0;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			sys_clk_on: begin
// 				clk_switch_request <= 1;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			wr_rd_delay_reg: begin
// 				rd_delay_reg <= config_data_jtag_out;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			rd_rd_delay_reg: begin
// 				config_data_jtag_in <= rd_delay_reg;
// 				read <= 0;
// 				write <= 0;
// 			end
// 			wr_delay_sel_reg: begin
// 				delay_sel <= config_data_jtag_out[1:0];
// 				read <= 0;
// 				write <= 0;
// 			end
// 			rd_delay_sel_reg: begin
// 				config_data_jtag_in <= {30'b0,delay_sel};
// 				read <= 0;
// 				write <= 0;
// 			end
// 			default: begin
// 				config_addr_out <= config_addr_out;
// 				config_data_out <= config_data_out;
// 				config_data_jtag_in <= config_data_jtag_in;	
// 				read <= 0;
// 				write <= 0;
// 			end
// 			endcase
// 		end
// 		//Counter for any state that needs to block incoming instructions
// 		else begin
// 			config_addr_out <= config_addr_out;
// 			if (counter > 0) begin
// 				counter <= counter-1;
// 			end
// 			else begin
// 				state <= ready;
// 				if (state == reading) 
// 					config_data_jtag_in <= config_data_in;
// 				if (state == advancing_clk)
// 					cgra_stalled <= 1;
// 			end
// 		end    	
//   	end
//   end
	

endmodule

