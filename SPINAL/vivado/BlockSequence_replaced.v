// Generator : SpinalHDL v1.7.1    git head : 0444bb76ab1d6e19f0ec46bc03c4769776deb7d5
// Component : BlockSequence
// Git hash  : 9e5f99ffae6805cec151294f232b28c21d47c716

`timescale 1ns/1ps

module BlockSequence (
  input               axilite_awvalid,
  output              axilite_awready,
  input      [15:0]   axilite_awaddr,
  input      [2:0]    axilite_awprot,
  input               axilite_wvalid,
  output              axilite_wready,
  input      [31:0]   axilite_wdata,
  input      [3:0]    axilite_wstrb,
  output              axilite_bvalid,
  input               axilite_bready,
  output     [1:0]    axilite_bresp,
  input               axilite_arvalid,
  output              axilite_arready,
  input      [15:0]   axilite_araddr,
  input      [2:0]    axilite_arprot,
  output              axilite_rvalid,
  input               axilite_rready,
  output     [31:0]   axilite_rdata,
  output     [1:0]    axilite_rresp,
  input               i_stream_tvalid,
  output              i_stream_tready,
  input      [31:0]   i_stream_tdata,
  output              o_stream_tvalid,
  input               o_stream_tready,
  output     [15:0]   o_stream_tdata,
  output              o_stream_tlast,
  input               resetn,
  input               clk
);

  wire                controller_1_axilite_awready;
  wire                controller_1_axilite_wready;
  wire                controller_1_axilite_bvalid;
  wire       [1:0]    controller_1_axilite_bresp;
  wire                controller_1_axilite_arready;
  wire                controller_1_axilite_rvalid;
  wire       [31:0]   controller_1_axilite_rdata;
  wire       [1:0]    controller_1_axilite_rresp;
  wire                controller_1_i_stream_ready;
  wire                controller_1_o_stream_valid;
  wire       [15:0]   controller_1_o_stream_payload_data;
  wire                controller_1_o_stream_payload_last;
  wire       [19:0]   controller_1_signals_N;
  wire                controller_1_signals_T;
  wire                controller_1_ap_rst_n;
  wire                block_5_io_ap_chain_ap_idle;
  wire                block_5_io_ap_chain_ap_ready;
  wire                block_5_io_ap_chain_ap_done;
  wire                block_5_io_i_stream_ready;
  wire                block_5_io_o_stream_valid;
  wire       [31:0]   block_5_io_o_stream_payload_data;
  wire                block_6_io_ap_chain_ap_idle;
  wire                block_6_io_ap_chain_ap_ready;
  wire                block_6_io_ap_chain_ap_done;
  wire                block_6_io_i_stream_ready;
  wire                block_6_io_o_stream_valid;
  wire       [31:0]   block_6_io_o_stream_payload_data;
  wire                block_7_io_ap_chain_ap_idle;
  wire                block_7_io_ap_chain_ap_ready;
  wire                block_7_io_ap_chain_ap_done;
  wire                block_7_io_i_stream_ready;
  wire                block_7_io_o_stream_valid;
  wire       [31:0]   block_7_io_o_stream_payload_data;
  wire                block_8_io_ap_chain_ap_idle;
  wire                block_8_io_ap_chain_ap_ready;
  wire                block_8_io_ap_chain_ap_done;
  wire                block_8_io_i_stream_ready;
  wire                block_8_io_o_stream_valid;
  wire       [15:0]   block_8_io_o_stream_payload_data;
  wire       [19:0]   manager_4_signals_O_N;
  wire                manager_4_signals_O_T;
  wire                manager_4_ap_chain_ap_start;
  wire                manager_4_ap_chain_ap_continue;
  wire       [19:0]   manager_5_signals_O_N;
  wire                manager_5_signals_O_T;
  wire                manager_5_ap_chain_ap_start;
  wire                manager_5_ap_chain_ap_continue;
  wire       [19:0]   manager_6_signals_O_N;
  wire                manager_6_signals_O_T;
  wire                manager_6_ap_chain_ap_start;
  wire                manager_6_ap_chain_ap_continue;
  wire       [19:0]   manager_7_signals_O_N;
  wire                manager_7_signals_O_T;
  wire                manager_7_ap_chain_ap_start;
  wire                manager_7_ap_chain_ap_continue;
  wire                fifo_3_io_i_stream_ready;
  wire                fifo_3_io_o_stream_valid;
  wire       [31:0]   fifo_3_io_o_stream_payload_data;
  wire                fifo_4_io_i_stream_ready;
  wire                fifo_4_io_o_stream_valid;
  wire       [31:0]   fifo_4_io_o_stream_payload_data;
  wire                fifo_5_io_i_stream_ready;
  wire                fifo_5_io_o_stream_valid;
  wire       [31:0]   fifo_5_io_o_stream_payload_data;

  Controller controller_1 (
    .axilite_awvalid       (axilite_awvalid                         ), //i
    .axilite_awready       (controller_1_axilite_awready            ), //o
    .axilite_awaddr        (axilite_awaddr[15:0]                    ), //i
    .axilite_awprot        (axilite_awprot[2:0]                     ), //i
    .axilite_wvalid        (axilite_wvalid                          ), //i
    .axilite_wready        (controller_1_axilite_wready             ), //o
    .axilite_wdata         (axilite_wdata[31:0]                     ), //i
    .axilite_wstrb         (axilite_wstrb[3:0]                      ), //i
    .axilite_bvalid        (controller_1_axilite_bvalid             ), //o
    .axilite_bready        (axilite_bready                          ), //i
    .axilite_bresp         (controller_1_axilite_bresp[1:0]         ), //o
    .axilite_arvalid       (axilite_arvalid                         ), //i
    .axilite_arready       (controller_1_axilite_arready            ), //o
    .axilite_araddr        (axilite_araddr[15:0]                    ), //i
    .axilite_arprot        (axilite_arprot[2:0]                     ), //i
    .axilite_rvalid        (controller_1_axilite_rvalid             ), //o
    .axilite_rready        (axilite_rready                          ), //i
    .axilite_rdata         (controller_1_axilite_rdata[31:0]        ), //o
    .axilite_rresp         (controller_1_axilite_rresp[1:0]         ), //o
    .i_stream_valid        (block_8_io_o_stream_valid               ), //i
    .i_stream_ready        (controller_1_i_stream_ready             ), //o
    .i_stream_payload_data (block_8_io_o_stream_payload_data[15:0]  ), //i
    .o_stream_valid        (controller_1_o_stream_valid             ), //o
    .o_stream_ready        (o_stream_tready                         ), //i
    .o_stream_payload_data (controller_1_o_stream_payload_data[15:0]), //o
    .o_stream_payload_last (controller_1_o_stream_payload_last      ), //o
    .signals_N             (controller_1_signals_N[19:0]            ), //o
    .signals_T             (controller_1_signals_T                  ), //o
    .ap_rst_n              (controller_1_ap_rst_n                   ), //o
    .clk                   (clk                                     ), //i
    .resetn                (resetn                                  )  //i
  );
  Block_1 block_5 (
    .io_ap_chain_ap_start     (manager_4_ap_chain_ap_start           ), //i
    .io_ap_chain_ap_continue  (manager_4_ap_chain_ap_continue        ), //i
    .io_ap_chain_ap_idle      (block_5_io_ap_chain_ap_idle           ), //o
    .io_ap_chain_ap_ready     (block_5_io_ap_chain_ap_ready          ), //o
    .io_ap_chain_ap_done      (block_5_io_ap_chain_ap_done           ), //o
    .io_i_stream_valid        (i_stream_tvalid                       ), //i
    .io_i_stream_ready        (block_5_io_i_stream_ready             ), //o
    .io_i_stream_payload_data (i_stream_tdata[31:0]                  ), //i
    .io_o_stream_valid        (block_5_io_o_stream_valid             ), //o
    .io_o_stream_ready        (fifo_3_io_i_stream_ready              ), //i
    .io_o_stream_payload_data (block_5_io_o_stream_payload_data[31:0]), //o
    .resetn                   (resetn                                ), //i
    .clk                      (clk                                   )  //i
  );
  Block_2 block_6 (
    .io_ap_chain_ap_start     (manager_5_ap_chain_ap_start           ), //i
    .io_ap_chain_ap_continue  (manager_5_ap_chain_ap_continue        ), //i
    .io_ap_chain_ap_idle      (block_6_io_ap_chain_ap_idle           ), //o
    .io_ap_chain_ap_ready     (block_6_io_ap_chain_ap_ready          ), //o
    .io_ap_chain_ap_done      (block_6_io_ap_chain_ap_done           ), //o
    .io_i_stream_valid        (fifo_3_io_o_stream_valid              ), //i
    .io_i_stream_ready        (block_6_io_i_stream_ready             ), //o
    .io_i_stream_payload_data (fifo_3_io_o_stream_payload_data[31:0] ), //i
    .io_o_stream_valid        (block_6_io_o_stream_valid             ), //o
    .io_o_stream_ready        (fifo_4_io_i_stream_ready              ), //i
    .io_o_stream_payload_data (block_6_io_o_stream_payload_data[31:0]), //o
    .resetn                   (resetn                                ), //i
    .clk                      (clk                                   )  //i
  );
  Block_3 block_7 (
    .io_ap_chain_ap_start     (manager_6_ap_chain_ap_start           ), //i
    .io_ap_chain_ap_continue  (manager_6_ap_chain_ap_continue        ), //i
    .io_ap_chain_ap_idle      (block_7_io_ap_chain_ap_idle           ), //o
    .io_ap_chain_ap_ready     (block_7_io_ap_chain_ap_ready          ), //o
    .io_ap_chain_ap_done      (block_7_io_ap_chain_ap_done           ), //o
    .io_i_stream_valid        (fifo_4_io_o_stream_valid              ), //i
    .io_i_stream_ready        (block_7_io_i_stream_ready             ), //o
    .io_i_stream_payload_data (fifo_4_io_o_stream_payload_data[31:0] ), //i
    .io_o_stream_valid        (block_7_io_o_stream_valid             ), //o
    .io_o_stream_ready        (fifo_5_io_i_stream_ready              ), //i
    .io_o_stream_payload_data (block_7_io_o_stream_payload_data[31:0]), //o
    .resetn                   (resetn                                ), //i
    .clk                      (clk                                   )  //i
  );
  Block_4 block_8 (
    .io_ap_chain_ap_start     (manager_7_ap_chain_ap_start           ), //i
    .io_ap_chain_ap_continue  (manager_7_ap_chain_ap_continue        ), //i
    .io_ap_chain_ap_idle      (block_8_io_ap_chain_ap_idle           ), //o
    .io_ap_chain_ap_ready     (block_8_io_ap_chain_ap_ready          ), //o
    .io_ap_chain_ap_done      (block_8_io_ap_chain_ap_done           ), //o
    .io_i_stream_valid        (fifo_5_io_o_stream_valid              ), //i
    .io_i_stream_ready        (block_8_io_i_stream_ready             ), //o
    .io_i_stream_payload_data (fifo_5_io_o_stream_payload_data[31:0] ), //i
    .io_o_stream_valid        (block_8_io_o_stream_valid             ), //o
    .io_o_stream_ready        (controller_1_i_stream_ready           ), //i
    .io_o_stream_payload_data (block_8_io_o_stream_payload_data[15:0]), //o
    .resetn                   (resetn                                ), //i
    .clk                      (clk                                   )  //i
  );
  Manager manager_4 (
    .signals_I_N          (controller_1_signals_N[19:0]  ), //i
    .signals_I_T          (controller_1_signals_T        ), //i
    .signals_O_N          (manager_4_signals_O_N[19:0]   ), //o
    .signals_O_T          (manager_4_signals_O_T         ), //o
    .ap_chain_ap_start    (manager_4_ap_chain_ap_start   ), //o
    .ap_chain_ap_continue (manager_4_ap_chain_ap_continue), //o
    .ap_chain_ap_idle     (block_5_io_ap_chain_ap_idle   ), //i
    .ap_chain_ap_ready    (block_5_io_ap_chain_ap_ready  ), //i
    .ap_chain_ap_done     (block_5_io_ap_chain_ap_done   ), //i
    .clk                  (clk                           ), //i
    .resetn               (resetn                        )  //i
  );
  Manager_1 manager_5 (
    .signals_I_N          (manager_4_signals_O_N[19:0]   ), //i
    .signals_I_T          (manager_4_signals_O_T         ), //i
    .signals_O_N          (manager_5_signals_O_N[19:0]   ), //o
    .signals_O_T          (manager_5_signals_O_T         ), //o
    .ap_chain_ap_start    (manager_5_ap_chain_ap_start   ), //o
    .ap_chain_ap_continue (manager_5_ap_chain_ap_continue), //o
    .ap_chain_ap_idle     (block_6_io_ap_chain_ap_idle   ), //i
    .ap_chain_ap_ready    (block_6_io_ap_chain_ap_ready  ), //i
    .ap_chain_ap_done     (block_6_io_ap_chain_ap_done   ), //i
    .clk                  (clk                           ), //i
    .resetn               (resetn                        )  //i
  );
  Manager_2 manager_6 (
    .signals_I_N          (manager_5_signals_O_N[19:0]   ), //i
    .signals_I_T          (manager_5_signals_O_T         ), //i
    .signals_O_N          (manager_6_signals_O_N[19:0]   ), //o
    .signals_O_T          (manager_6_signals_O_T         ), //o
    .ap_chain_ap_start    (manager_6_ap_chain_ap_start   ), //o
    .ap_chain_ap_continue (manager_6_ap_chain_ap_continue), //o
    .ap_chain_ap_idle     (block_7_io_ap_chain_ap_idle   ), //i
    .ap_chain_ap_ready    (block_7_io_ap_chain_ap_ready  ), //i
    .ap_chain_ap_done     (block_7_io_ap_chain_ap_done   ), //i
    .clk                  (clk                           ), //i
    .resetn               (resetn                        )  //i
  );
  Manager_3 manager_7 (
    .signals_I_N          (manager_6_signals_O_N[19:0]   ), //i
    .signals_I_T          (manager_6_signals_O_T         ), //i
    .signals_O_N          (manager_7_signals_O_N[19:0]   ), //o
    .signals_O_T          (manager_7_signals_O_T         ), //o
    .ap_chain_ap_start    (manager_7_ap_chain_ap_start   ), //o
    .ap_chain_ap_continue (manager_7_ap_chain_ap_continue), //o
    .ap_chain_ap_idle     (block_8_io_ap_chain_ap_idle   ), //i
    .ap_chain_ap_ready    (block_8_io_ap_chain_ap_ready  ), //i
    .ap_chain_ap_done     (block_8_io_ap_chain_ap_done   ), //i
    .clk                  (clk                           ), //i
    .resetn               (resetn                        )  //i
  );
  Fifo fifo_3 (
    .io_i_stream_valid        (block_5_io_o_stream_valid             ), //i
    .io_i_stream_ready        (fifo_3_io_i_stream_ready              ), //o
    .io_i_stream_payload_data (block_5_io_o_stream_payload_data[31:0]), //i
    .io_o_stream_valid        (fifo_3_io_o_stream_valid              ), //o
    .io_o_stream_ready        (block_6_io_i_stream_ready             ), //i
    .io_o_stream_payload_data (fifo_3_io_o_stream_payload_data[31:0] ), //o
    .clk                      (clk                                   ), //i
    .resetn                   (resetn                                )  //i
  );
  Fifo fifo_4 (
    .io_i_stream_valid        (block_6_io_o_stream_valid             ), //i
    .io_i_stream_ready        (fifo_4_io_i_stream_ready              ), //o
    .io_i_stream_payload_data (block_6_io_o_stream_payload_data[31:0]), //i
    .io_o_stream_valid        (fifo_4_io_o_stream_valid              ), //o
    .io_o_stream_ready        (block_7_io_i_stream_ready             ), //i
    .io_o_stream_payload_data (fifo_4_io_o_stream_payload_data[31:0] ), //o
    .clk                      (clk                                   ), //i
    .resetn                   (resetn                                )  //i
  );
  Fifo fifo_5 (
    .io_i_stream_valid        (block_7_io_o_stream_valid             ), //i
    .io_i_stream_ready        (fifo_5_io_i_stream_ready              ), //o
    .io_i_stream_payload_data (block_7_io_o_stream_payload_data[31:0]), //i
    .io_o_stream_valid        (fifo_5_io_o_stream_valid              ), //o
    .io_o_stream_ready        (block_8_io_i_stream_ready             ), //i
    .io_o_stream_payload_data (fifo_5_io_o_stream_payload_data[31:0] ), //o
    .clk                      (clk                                   ), //i
    .resetn                   (resetn                                )  //i
  );
  assign axilite_awready = controller_1_axilite_awready;
  assign axilite_wready = controller_1_axilite_wready;
  assign axilite_bvalid = controller_1_axilite_bvalid;
  assign axilite_bresp = controller_1_axilite_bresp;
  assign axilite_arready = controller_1_axilite_arready;
  assign axilite_rvalid = controller_1_axilite_rvalid;
  assign axilite_rdata = controller_1_axilite_rdata;
  assign axilite_rresp = controller_1_axilite_rresp;
  assign i_stream_tready = block_5_io_i_stream_ready;
  assign o_stream_tvalid = controller_1_o_stream_valid;
  assign o_stream_tdata = controller_1_o_stream_payload_data;
  assign o_stream_tlast = controller_1_o_stream_payload_last;

endmodule

//Fifo replaced by Fifo

//Fifo replaced by Fifo

module Fifo (
  input               io_i_stream_valid,
  output              io_i_stream_ready,
  input      [31:0]   io_i_stream_payload_data,
  output              io_o_stream_valid,
  input               io_o_stream_ready,
  output     [31:0]   io_o_stream_payload_data,
  input               clk,
  input               resetn
);

  wire                fifo_3_io_push_ready;
  wire                fifo_3_io_pop_valid;
  wire       [31:0]   fifo_3_io_pop_payload;
  wire       [7:0]    fifo_3_io_occupancy;
  wire       [7:0]    fifo_3_io_availability;

  StreamFifo fifo_3 (
    .io_push_valid   (io_i_stream_valid             ), //i
    .io_push_ready   (fifo_3_io_push_ready          ), //o
    .io_push_payload (io_i_stream_payload_data[31:0]), //i
    .io_pop_valid    (fifo_3_io_pop_valid           ), //o
    .io_pop_ready    (io_o_stream_ready             ), //i
    .io_pop_payload  (fifo_3_io_pop_payload[31:0]   ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (fifo_3_io_occupancy[7:0]      ), //o
    .io_availability (fifo_3_io_availability[7:0]   ), //o
    .clk             (clk                           ), //i
    .resetn          (resetn                        )  //i
  );
  assign io_i_stream_ready = fifo_3_io_push_ready;
  assign io_o_stream_valid = fifo_3_io_pop_valid;
  assign io_o_stream_payload_data = fifo_3_io_pop_payload;

endmodule

module Manager_3 (
  input      [19:0]   signals_I_N,
  input               signals_I_T,
  output     [19:0]   signals_O_N,
  output              signals_O_T,
  output reg          ap_chain_ap_start,
  output              ap_chain_ap_continue,
  input               ap_chain_ap_idle,
  input               ap_chain_ap_ready,
  input               ap_chain_ap_done,
  input               clk,
  input               resetn
);
  localparam fsm_enumDef_4_BOOT = 2'd0;
  localparam fsm_enumDef_4_s_idle = 2'd1;
  localparam fsm_enumDef_4_s_work = 2'd2;

  wire       [19:0]   _zz_when_Manager_l78;
  reg        [19:0]   signals_I_N_regNext;
  reg                 signals_I_T_regNext;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [19:0]   fsm_n_counter;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_Manager_l78;
  `ifndef SYNTHESIS
  reg [47:0] fsm_stateReg_string;
  reg [47:0] fsm_stateNext_string;
  `endif


  assign _zz_when_Manager_l78 = (signals_I_N - 20'h00001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_4_BOOT : fsm_stateReg_string = "BOOT  ";
      fsm_enumDef_4_s_idle : fsm_stateReg_string = "s_idle";
      fsm_enumDef_4_s_work : fsm_stateReg_string = "s_work";
      default : fsm_stateReg_string = "??????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_4_BOOT : fsm_stateNext_string = "BOOT  ";
      fsm_enumDef_4_s_idle : fsm_stateNext_string = "s_idle";
      fsm_enumDef_4_s_work : fsm_stateNext_string = "s_work";
      default : fsm_stateNext_string = "??????";
    endcase
  end
  `endif

  assign signals_O_N = signals_I_N_regNext;
  assign signals_O_T = signals_I_T_regNext;
  assign ap_chain_ap_continue = 1'b1;
  always @(*) begin
    ap_chain_ap_start = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_4_s_idle : begin
      end
      fsm_enumDef_4_s_work : begin
        ap_chain_ap_start = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_4_s_idle : begin
      end
      fsm_enumDef_4_s_work : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_4_s_idle : begin
        if(signals_I_T) begin
          fsm_stateNext = fsm_enumDef_4_s_work;
        end
      end
      fsm_enumDef_4_s_work : begin
        if(ap_chain_ap_ready) begin
          if(when_Manager_l78) begin
            fsm_stateNext = fsm_enumDef_4_s_idle;
          end
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_4_s_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_4_BOOT;
    end
  end

  assign when_Manager_l78 = (fsm_n_counter == _zz_when_Manager_l78);
  always @(posedge clk) begin
    signals_I_N_regNext <= signals_I_N;
    signals_I_T_regNext <= signals_I_T;
    case(fsm_stateReg)
      fsm_enumDef_4_s_idle : begin
        if(signals_I_T) begin
          fsm_n_counter <= 20'h0;
        end
      end
      fsm_enumDef_4_s_work : begin
        if(ap_chain_ap_ready) begin
          if(!when_Manager_l78) begin
            fsm_n_counter <= (fsm_n_counter + 20'h00001);
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clk) begin
    if(!resetn) begin
      fsm_stateReg <= fsm_enumDef_4_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end


endmodule

module Manager_2 (
  input      [19:0]   signals_I_N,
  input               signals_I_T,
  output     [19:0]   signals_O_N,
  output              signals_O_T,
  output reg          ap_chain_ap_start,
  output              ap_chain_ap_continue,
  input               ap_chain_ap_idle,
  input               ap_chain_ap_ready,
  input               ap_chain_ap_done,
  input               clk,
  input               resetn
);
  localparam fsm_enumDef_3_BOOT = 2'd0;
  localparam fsm_enumDef_3_s_idle = 2'd1;
  localparam fsm_enumDef_3_s_work = 2'd2;

  wire       [19:0]   _zz_when_Manager_l78;
  reg        [19:0]   signals_I_N_regNext;
  reg                 signals_I_T_regNext;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [19:0]   fsm_n_counter;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_Manager_l78;
  `ifndef SYNTHESIS
  reg [47:0] fsm_stateReg_string;
  reg [47:0] fsm_stateNext_string;
  `endif


  assign _zz_when_Manager_l78 = (signals_I_N - 20'h00001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_3_BOOT : fsm_stateReg_string = "BOOT  ";
      fsm_enumDef_3_s_idle : fsm_stateReg_string = "s_idle";
      fsm_enumDef_3_s_work : fsm_stateReg_string = "s_work";
      default : fsm_stateReg_string = "??????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_3_BOOT : fsm_stateNext_string = "BOOT  ";
      fsm_enumDef_3_s_idle : fsm_stateNext_string = "s_idle";
      fsm_enumDef_3_s_work : fsm_stateNext_string = "s_work";
      default : fsm_stateNext_string = "??????";
    endcase
  end
  `endif

  assign signals_O_N = signals_I_N_regNext;
  assign signals_O_T = signals_I_T_regNext;
  assign ap_chain_ap_continue = 1'b1;
  always @(*) begin
    ap_chain_ap_start = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_3_s_idle : begin
      end
      fsm_enumDef_3_s_work : begin
        ap_chain_ap_start = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_3_s_idle : begin
      end
      fsm_enumDef_3_s_work : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_3_s_idle : begin
        if(signals_I_T) begin
          fsm_stateNext = fsm_enumDef_3_s_work;
        end
      end
      fsm_enumDef_3_s_work : begin
        if(ap_chain_ap_ready) begin
          if(when_Manager_l78) begin
            fsm_stateNext = fsm_enumDef_3_s_idle;
          end
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_3_s_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_3_BOOT;
    end
  end

  assign when_Manager_l78 = (fsm_n_counter == _zz_when_Manager_l78);
  always @(posedge clk) begin
    signals_I_N_regNext <= signals_I_N;
    signals_I_T_regNext <= signals_I_T;
    case(fsm_stateReg)
      fsm_enumDef_3_s_idle : begin
        if(signals_I_T) begin
          fsm_n_counter <= 20'h0;
        end
      end
      fsm_enumDef_3_s_work : begin
        if(ap_chain_ap_ready) begin
          if(!when_Manager_l78) begin
            fsm_n_counter <= (fsm_n_counter + 20'h00001);
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clk) begin
    if(!resetn) begin
      fsm_stateReg <= fsm_enumDef_3_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end


endmodule

module Manager_1 (
  input      [19:0]   signals_I_N,
  input               signals_I_T,
  output     [19:0]   signals_O_N,
  output              signals_O_T,
  output reg          ap_chain_ap_start,
  output              ap_chain_ap_continue,
  input               ap_chain_ap_idle,
  input               ap_chain_ap_ready,
  input               ap_chain_ap_done,
  input               clk,
  input               resetn
);
  localparam fsm_enumDef_2_BOOT = 2'd0;
  localparam fsm_enumDef_2_s_idle = 2'd1;
  localparam fsm_enumDef_2_s_work = 2'd2;

  wire       [19:0]   _zz_when_Manager_l78;
  reg        [19:0]   signals_I_N_regNext;
  reg                 signals_I_T_regNext;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [19:0]   fsm_n_counter;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_Manager_l78;
  `ifndef SYNTHESIS
  reg [47:0] fsm_stateReg_string;
  reg [47:0] fsm_stateNext_string;
  `endif


  assign _zz_when_Manager_l78 = (signals_I_N - 20'h00001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_2_BOOT : fsm_stateReg_string = "BOOT  ";
      fsm_enumDef_2_s_idle : fsm_stateReg_string = "s_idle";
      fsm_enumDef_2_s_work : fsm_stateReg_string = "s_work";
      default : fsm_stateReg_string = "??????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_2_BOOT : fsm_stateNext_string = "BOOT  ";
      fsm_enumDef_2_s_idle : fsm_stateNext_string = "s_idle";
      fsm_enumDef_2_s_work : fsm_stateNext_string = "s_work";
      default : fsm_stateNext_string = "??????";
    endcase
  end
  `endif

  assign signals_O_N = signals_I_N_regNext;
  assign signals_O_T = signals_I_T_regNext;
  assign ap_chain_ap_continue = 1'b1;
  always @(*) begin
    ap_chain_ap_start = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_2_s_idle : begin
      end
      fsm_enumDef_2_s_work : begin
        ap_chain_ap_start = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_2_s_idle : begin
      end
      fsm_enumDef_2_s_work : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_2_s_idle : begin
        if(signals_I_T) begin
          fsm_stateNext = fsm_enumDef_2_s_work;
        end
      end
      fsm_enumDef_2_s_work : begin
        if(ap_chain_ap_ready) begin
          if(when_Manager_l78) begin
            fsm_stateNext = fsm_enumDef_2_s_idle;
          end
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_2_s_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_2_BOOT;
    end
  end

  assign when_Manager_l78 = (fsm_n_counter == _zz_when_Manager_l78);
  always @(posedge clk) begin
    signals_I_N_regNext <= signals_I_N;
    signals_I_T_regNext <= signals_I_T;
    case(fsm_stateReg)
      fsm_enumDef_2_s_idle : begin
        if(signals_I_T) begin
          fsm_n_counter <= 20'h0;
        end
      end
      fsm_enumDef_2_s_work : begin
        if(ap_chain_ap_ready) begin
          if(!when_Manager_l78) begin
            fsm_n_counter <= (fsm_n_counter + 20'h00001);
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clk) begin
    if(!resetn) begin
      fsm_stateReg <= fsm_enumDef_2_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end


endmodule

module Manager (
  input      [19:0]   signals_I_N,
  input               signals_I_T,
  output     [19:0]   signals_O_N,
  output              signals_O_T,
  output reg          ap_chain_ap_start,
  output              ap_chain_ap_continue,
  input               ap_chain_ap_idle,
  input               ap_chain_ap_ready,
  input               ap_chain_ap_done,
  input               clk,
  input               resetn
);
  localparam fsm_enumDef_1_BOOT = 2'd0;
  localparam fsm_enumDef_1_s_idle = 2'd1;
  localparam fsm_enumDef_1_s_work = 2'd2;

  wire       [19:0]   _zz_when_Manager_l78;
  reg        [19:0]   signals_I_N_regNext;
  reg                 signals_I_T_regNext;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [19:0]   fsm_n_counter;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_Manager_l78;
  `ifndef SYNTHESIS
  reg [47:0] fsm_stateReg_string;
  reg [47:0] fsm_stateNext_string;
  `endif


  assign _zz_when_Manager_l78 = (signals_I_N - 20'h00001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_1_BOOT : fsm_stateReg_string = "BOOT  ";
      fsm_enumDef_1_s_idle : fsm_stateReg_string = "s_idle";
      fsm_enumDef_1_s_work : fsm_stateReg_string = "s_work";
      default : fsm_stateReg_string = "??????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_1_BOOT : fsm_stateNext_string = "BOOT  ";
      fsm_enumDef_1_s_idle : fsm_stateNext_string = "s_idle";
      fsm_enumDef_1_s_work : fsm_stateNext_string = "s_work";
      default : fsm_stateNext_string = "??????";
    endcase
  end
  `endif

  assign signals_O_N = signals_I_N_regNext;
  assign signals_O_T = signals_I_T_regNext;
  assign ap_chain_ap_continue = 1'b1;
  always @(*) begin
    ap_chain_ap_start = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_s_idle : begin
      end
      fsm_enumDef_1_s_work : begin
        ap_chain_ap_start = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_1_s_idle : begin
      end
      fsm_enumDef_1_s_work : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_1_s_idle : begin
        if(signals_I_T) begin
          fsm_stateNext = fsm_enumDef_1_s_work;
        end
      end
      fsm_enumDef_1_s_work : begin
        if(ap_chain_ap_ready) begin
          if(when_Manager_l78) begin
            fsm_stateNext = fsm_enumDef_1_s_idle;
          end
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_1_s_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_1_BOOT;
    end
  end

  assign when_Manager_l78 = (fsm_n_counter == _zz_when_Manager_l78);
  always @(posedge clk) begin
    signals_I_N_regNext <= signals_I_N;
    signals_I_T_regNext <= signals_I_T;
    case(fsm_stateReg)
      fsm_enumDef_1_s_idle : begin
        if(signals_I_T) begin
          fsm_n_counter <= 20'h0;
        end
      end
      fsm_enumDef_1_s_work : begin
        if(ap_chain_ap_ready) begin
          if(!when_Manager_l78) begin
            fsm_n_counter <= (fsm_n_counter + 20'h00001);
          end
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clk) begin
    if(!resetn) begin
      fsm_stateReg <= fsm_enumDef_1_BOOT;
    end else begin
      fsm_stateReg <= fsm_stateNext;
    end
  end


endmodule

module Block_4 (
  input               io_ap_chain_ap_start,
  input               io_ap_chain_ap_continue,
  output              io_ap_chain_ap_idle,
  output              io_ap_chain_ap_ready,
  output              io_ap_chain_ap_done,
  input               io_i_stream_valid,
  output              io_i_stream_ready,
  input      [31:0]   io_i_stream_payload_data,
  output              io_o_stream_valid,
  input               io_o_stream_ready,
  output     [15:0]   io_o_stream_payload_data,
  input               resetn,
  input               clk
);

  wire                black_box_ap_done;
  wire                black_box_ap_ready;
  wire                black_box_ap_idle;
  wire                black_box_i_stream_V_TREADY;
  wire       [15:0]   black_box_o_stream_V_TDATA;
  wire                black_box_o_stream_V_TVALID;

  HEAD black_box (
    .ap_start          (io_ap_chain_ap_start            ), //i
    .ap_continue       (io_ap_chain_ap_continue         ), //i
    .ap_done           (black_box_ap_done               ), //o
    .ap_ready          (black_box_ap_ready              ), //o
    .ap_idle           (black_box_ap_idle               ), //o
    .i_stream_V_TDATA  (io_i_stream_payload_data[31:0]  ), //i
    .i_stream_V_TREADY (black_box_i_stream_V_TREADY     ), //o
    .i_stream_V_TVALID (io_i_stream_valid               ), //i
    .o_stream_V_TDATA  (black_box_o_stream_V_TDATA[15:0]), //o
    .o_stream_V_TREADY (io_o_stream_ready               ), //i
    .o_stream_V_TVALID (black_box_o_stream_V_TVALID     ), //o
    .ap_clk            (clk                             ), //i
    .ap_rst_n          (resetn                          )  //i
  );
  assign io_ap_chain_ap_done = black_box_ap_done;
  assign io_ap_chain_ap_ready = black_box_ap_ready;
  assign io_ap_chain_ap_idle = black_box_ap_idle;
  assign io_i_stream_ready = black_box_i_stream_V_TREADY;
  assign io_o_stream_payload_data = black_box_o_stream_V_TDATA;
  assign io_o_stream_valid = black_box_o_stream_V_TVALID;

endmodule

module Block_3 (
  input               io_ap_chain_ap_start,
  input               io_ap_chain_ap_continue,
  output              io_ap_chain_ap_idle,
  output              io_ap_chain_ap_ready,
  output              io_ap_chain_ap_done,
  input               io_i_stream_valid,
  output              io_i_stream_ready,
  input      [31:0]   io_i_stream_payload_data,
  output              io_o_stream_valid,
  input               io_o_stream_ready,
  output     [31:0]   io_o_stream_payload_data,
  input               resetn,
  input               clk
);

  wire                black_box_ap_done;
  wire                black_box_ap_ready;
  wire                black_box_ap_idle;
  wire                black_box_i_stream_V_TREADY;
  wire       [31:0]   black_box_o_stream_V_TDATA;
  wire                black_box_o_stream_V_TVALID;

  MLP0 black_box (
    .ap_start          (io_ap_chain_ap_start            ), //i
    .ap_continue       (io_ap_chain_ap_continue         ), //i
    .ap_done           (black_box_ap_done               ), //o
    .ap_ready          (black_box_ap_ready              ), //o
    .ap_idle           (black_box_ap_idle               ), //o
    .i_stream_V_TDATA  (io_i_stream_payload_data[31:0]  ), //i
    .i_stream_V_TREADY (black_box_i_stream_V_TREADY     ), //o
    .i_stream_V_TVALID (io_i_stream_valid               ), //i
    .o_stream_V_TDATA  (black_box_o_stream_V_TDATA[31:0]), //o
    .o_stream_V_TREADY (io_o_stream_ready               ), //i
    .o_stream_V_TVALID (black_box_o_stream_V_TVALID     ), //o
    .ap_clk            (clk                             ), //i
    .ap_rst_n          (resetn                          )  //i
  );
  assign io_ap_chain_ap_done = black_box_ap_done;
  assign io_ap_chain_ap_ready = black_box_ap_ready;
  assign io_ap_chain_ap_idle = black_box_ap_idle;
  assign io_i_stream_ready = black_box_i_stream_V_TREADY;
  assign io_o_stream_payload_data = black_box_o_stream_V_TDATA;
  assign io_o_stream_valid = black_box_o_stream_V_TVALID;

endmodule

module Block_2 (
  input               io_ap_chain_ap_start,
  input               io_ap_chain_ap_continue,
  output              io_ap_chain_ap_idle,
  output              io_ap_chain_ap_ready,
  output              io_ap_chain_ap_done,
  input               io_i_stream_valid,
  output              io_i_stream_ready,
  input      [31:0]   io_i_stream_payload_data,
  output              io_o_stream_valid,
  input               io_o_stream_ready,
  output     [31:0]   io_o_stream_payload_data,
  input               resetn,
  input               clk
);

  wire                black_box_ap_done;
  wire                black_box_ap_ready;
  wire                black_box_ap_idle;
  wire                black_box_i_stream_V_TREADY;
  wire       [31:0]   black_box_o_stream_V_TDATA;
  wire                black_box_o_stream_V_TVALID;

  ATTN0 black_box (
    .ap_start          (io_ap_chain_ap_start            ), //i
    .ap_continue       (io_ap_chain_ap_continue         ), //i
    .ap_done           (black_box_ap_done               ), //o
    .ap_ready          (black_box_ap_ready              ), //o
    .ap_idle           (black_box_ap_idle               ), //o
    .i_stream_V_TDATA  (io_i_stream_payload_data[31:0]  ), //i
    .i_stream_V_TREADY (black_box_i_stream_V_TREADY     ), //o
    .i_stream_V_TVALID (io_i_stream_valid               ), //i
    .o_stream_V_TDATA  (black_box_o_stream_V_TDATA[31:0]), //o
    .o_stream_V_TREADY (io_o_stream_ready               ), //i
    .o_stream_V_TVALID (black_box_o_stream_V_TVALID     ), //o
    .ap_clk            (clk                             ), //i
    .ap_rst_n          (resetn                          )  //i
  );
  assign io_ap_chain_ap_done = black_box_ap_done;
  assign io_ap_chain_ap_ready = black_box_ap_ready;
  assign io_ap_chain_ap_idle = black_box_ap_idle;
  assign io_i_stream_ready = black_box_i_stream_V_TREADY;
  assign io_o_stream_payload_data = black_box_o_stream_V_TDATA;
  assign io_o_stream_valid = black_box_o_stream_V_TVALID;

endmodule

module Block_1 (
  input               io_ap_chain_ap_start,
  input               io_ap_chain_ap_continue,
  output              io_ap_chain_ap_idle,
  output              io_ap_chain_ap_ready,
  output              io_ap_chain_ap_done,
  input               io_i_stream_valid,
  output              io_i_stream_ready,
  input      [31:0]   io_i_stream_payload_data,
  output              io_o_stream_valid,
  input               io_o_stream_ready,
  output     [31:0]   io_o_stream_payload_data,
  input               resetn,
  input               clk
);

  wire                black_box_ap_done;
  wire                black_box_ap_ready;
  wire                black_box_ap_idle;
  wire                black_box_i_stream_V_TREADY;
  wire       [31:0]   black_box_o_stream_V_TDATA;
  wire                black_box_o_stream_V_TVALID;

  PATCH_EMBED black_box (
    .ap_start          (io_ap_chain_ap_start            ), //i
    .ap_continue       (io_ap_chain_ap_continue         ), //i
    .ap_done           (black_box_ap_done               ), //o
    .ap_ready          (black_box_ap_ready              ), //o
    .ap_idle           (black_box_ap_idle               ), //o
    .i_stream_V_TDATA  (io_i_stream_payload_data[31:0]  ), //i
    .i_stream_V_TREADY (black_box_i_stream_V_TREADY     ), //o
    .i_stream_V_TVALID (io_i_stream_valid               ), //i
    .o_stream_V_TDATA  (black_box_o_stream_V_TDATA[31:0]), //o
    .o_stream_V_TREADY (io_o_stream_ready               ), //i
    .o_stream_V_TVALID (black_box_o_stream_V_TVALID     ), //o
    .ap_clk            (clk                             ), //i
    .ap_rst_n          (resetn                          )  //i
  );
  assign io_ap_chain_ap_done = black_box_ap_done;
  assign io_ap_chain_ap_ready = black_box_ap_ready;
  assign io_ap_chain_ap_idle = black_box_ap_idle;
  assign io_i_stream_ready = black_box_i_stream_V_TREADY;
  assign io_o_stream_payload_data = black_box_o_stream_V_TDATA;
  assign io_o_stream_valid = black_box_o_stream_V_TVALID;

endmodule

module Controller (
  input               axilite_awvalid,
  output              axilite_awready,
  input      [15:0]   axilite_awaddr,
  input      [2:0]    axilite_awprot,
  input               axilite_wvalid,
  output              axilite_wready,
  input      [31:0]   axilite_wdata,
  input      [3:0]    axilite_wstrb,
  output              axilite_bvalid,
  input               axilite_bready,
  output     [1:0]    axilite_bresp,
  input               axilite_arvalid,
  output reg          axilite_arready,
  input      [15:0]   axilite_araddr,
  input      [2:0]    axilite_arprot,
  output              axilite_rvalid,
  input               axilite_rready,
  output     [31:0]   axilite_rdata,
  output     [1:0]    axilite_rresp,
  input               i_stream_valid,
  output reg          i_stream_ready,
  input      [15:0]   i_stream_payload_data,
  output reg          o_stream_valid,
  input               o_stream_ready,
  output reg [15:0]   o_stream_payload_data,
  output reg          o_stream_payload_last,
  output     [19:0]   signals_N,
  output reg          signals_T,
  output              ap_rst_n,
  input               clk,
  input               resetn
);
  localparam fsm_enumDef_BOOT = 2'd0;
  localparam fsm_enumDef_s_idle = 2'd1;
  localparam fsm_enumDef_s_work = 2'd2;

  wire       [19:0]   _zz_when_Controller_l92;
  wire                busCtrl_readHaltRequest;
  wire                busCtrl_writeHaltRequest;
  wire                busCtrl_writeJoinEvent_valid;
  wire                busCtrl_writeJoinEvent_ready;
  wire                busCtrl_writeJoinEvent_fire;
  wire       [1:0]    busCtrl_writeRsp_resp;
  wire                busCtrl_writeJoinEvent_translated_valid;
  wire                busCtrl_writeJoinEvent_translated_ready;
  wire       [1:0]    busCtrl_writeJoinEvent_translated_payload_resp;
  wire                _zz_axilite_bvalid;
  reg                 _zz_busCtrl_writeJoinEvent_translated_ready;
  wire                _zz_axilite_bvalid_1;
  reg                 _zz_axilite_bvalid_2;
  reg        [1:0]    _zz_axilite_bresp;
  wire                when_Stream_l368;
  wire                busCtrl_readDataStage_valid;
  wire                busCtrl_readDataStage_ready;
  wire       [15:0]   busCtrl_readDataStage_payload_addr;
  wire       [2:0]    busCtrl_readDataStage_payload_prot;
  reg                 axilite_ar_rValid;
  reg        [15:0]   axilite_ar_rData_addr;
  reg        [2:0]    axilite_ar_rData_prot;
  wire                when_Stream_l368_1;
  wire       [31:0]   busCtrl_readRsp_data;
  wire       [1:0]    busCtrl_readRsp_resp;
  wire                _zz_axilite_rvalid;
  wire       [15:0]   busCtrl_readAddressMasked;
  wire       [15:0]   busCtrl_writeAddressMasked;
  wire                busCtrl_writeOccur;
  wire                busCtrl_readOccur;
  reg        [19:0]   _zz_signals_N;
  reg                 _zz_ap_rst_n;
  wire                fsm_wantExit;
  reg                 fsm_wantStart;
  wire                fsm_wantKill;
  reg        [19:0]   fsm_n_counter;
  reg        [9:0]    fsm_trip_counter;
  reg        [1:0]    fsm_stateReg;
  reg        [1:0]    fsm_stateNext;
  wire                when_Controller_l92;
  wire                when_Controller_l90;
  wire                i_stream_fire;
  `ifndef SYNTHESIS
  reg [47:0] fsm_stateReg_string;
  reg [47:0] fsm_stateNext_string;
  `endif


  assign _zz_when_Controller_l92 = (signals_N - 20'h00001);
  `ifndef SYNTHESIS
  always @(*) begin
    case(fsm_stateReg)
      fsm_enumDef_BOOT : fsm_stateReg_string = "BOOT  ";
      fsm_enumDef_s_idle : fsm_stateReg_string = "s_idle";
      fsm_enumDef_s_work : fsm_stateReg_string = "s_work";
      default : fsm_stateReg_string = "??????";
    endcase
  end
  always @(*) begin
    case(fsm_stateNext)
      fsm_enumDef_BOOT : fsm_stateNext_string = "BOOT  ";
      fsm_enumDef_s_idle : fsm_stateNext_string = "s_idle";
      fsm_enumDef_s_work : fsm_stateNext_string = "s_work";
      default : fsm_stateNext_string = "??????";
    endcase
  end
  `endif

  assign busCtrl_readHaltRequest = 1'b0;
  assign busCtrl_writeHaltRequest = 1'b0;
  assign busCtrl_writeJoinEvent_fire = (busCtrl_writeJoinEvent_valid && busCtrl_writeJoinEvent_ready);
  assign busCtrl_writeJoinEvent_valid = (axilite_awvalid && axilite_wvalid);
  assign axilite_awready = busCtrl_writeJoinEvent_fire;
  assign axilite_wready = busCtrl_writeJoinEvent_fire;
  assign busCtrl_writeJoinEvent_translated_valid = busCtrl_writeJoinEvent_valid;
  assign busCtrl_writeJoinEvent_ready = busCtrl_writeJoinEvent_translated_ready;
  assign busCtrl_writeJoinEvent_translated_payload_resp = busCtrl_writeRsp_resp;
  assign _zz_axilite_bvalid = (! busCtrl_writeHaltRequest);
  assign busCtrl_writeJoinEvent_translated_ready = (_zz_busCtrl_writeJoinEvent_translated_ready && _zz_axilite_bvalid);
  always @(*) begin
    _zz_busCtrl_writeJoinEvent_translated_ready = axilite_bready;
    if(when_Stream_l368) begin
      _zz_busCtrl_writeJoinEvent_translated_ready = 1'b1;
    end
  end

  assign when_Stream_l368 = (! _zz_axilite_bvalid_1);
  assign _zz_axilite_bvalid_1 = _zz_axilite_bvalid_2;
  assign axilite_bvalid = _zz_axilite_bvalid_1;
  assign axilite_bresp = _zz_axilite_bresp;
  always @(*) begin
    axilite_arready = busCtrl_readDataStage_ready;
    if(when_Stream_l368_1) begin
      axilite_arready = 1'b1;
    end
  end

  assign when_Stream_l368_1 = (! busCtrl_readDataStage_valid);
  assign busCtrl_readDataStage_valid = axilite_ar_rValid;
  assign busCtrl_readDataStage_payload_addr = axilite_ar_rData_addr;
  assign busCtrl_readDataStage_payload_prot = axilite_ar_rData_prot;
  assign _zz_axilite_rvalid = (! busCtrl_readHaltRequest);
  assign busCtrl_readDataStage_ready = (axilite_rready && _zz_axilite_rvalid);
  assign axilite_rvalid = (busCtrl_readDataStage_valid && _zz_axilite_rvalid);
  assign axilite_rdata = busCtrl_readRsp_data;
  assign axilite_rresp = busCtrl_readRsp_resp;
  assign busCtrl_writeRsp_resp = 2'b00;
  assign busCtrl_readRsp_resp = 2'b00;
  assign busCtrl_readRsp_data = 32'h0;
  assign busCtrl_readAddressMasked = (busCtrl_readDataStage_payload_addr & (~ 16'h0003));
  assign busCtrl_writeAddressMasked = (axilite_awaddr & (~ 16'h0003));
  assign busCtrl_writeOccur = (busCtrl_writeJoinEvent_valid && busCtrl_writeJoinEvent_ready);
  assign busCtrl_readOccur = (axilite_rvalid && axilite_rready);
  always @(*) begin
    signals_T = 1'b0;
    case(busCtrl_writeAddressMasked)
      16'h0010 : begin
        if(busCtrl_writeOccur) begin
          signals_T = axilite_wdata[0];
        end
      end
      default : begin
      end
    endcase
  end

  assign signals_N = _zz_signals_N;
  assign ap_rst_n = _zz_ap_rst_n;
  always @(*) begin
    i_stream_ready = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
      end
      fsm_enumDef_s_work : begin
        i_stream_ready = o_stream_ready;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    o_stream_valid = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
      end
      fsm_enumDef_s_work : begin
        o_stream_valid = i_stream_valid;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    o_stream_payload_last = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
      end
      fsm_enumDef_s_work : begin
        o_stream_payload_last = (when_Controller_l90 && when_Controller_l92);
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    o_stream_payload_data = 16'h0;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
      end
      fsm_enumDef_s_work : begin
        o_stream_payload_data = i_stream_payload_data;
      end
      default : begin
      end
    endcase
  end

  assign fsm_wantExit = 1'b0;
  always @(*) begin
    fsm_wantStart = 1'b0;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
      end
      fsm_enumDef_s_work : begin
      end
      default : begin
        fsm_wantStart = 1'b1;
      end
    endcase
  end

  assign fsm_wantKill = 1'b0;
  always @(*) begin
    fsm_stateNext = fsm_stateReg;
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
        if(signals_T) begin
          fsm_stateNext = fsm_enumDef_s_work;
        end
      end
      fsm_enumDef_s_work : begin
        if(i_stream_fire) begin
          if(when_Controller_l90) begin
            if(when_Controller_l92) begin
              fsm_stateNext = fsm_enumDef_s_idle;
            end
          end
        end
      end
      default : begin
      end
    endcase
    if(fsm_wantStart) begin
      fsm_stateNext = fsm_enumDef_s_idle;
    end
    if(fsm_wantKill) begin
      fsm_stateNext = fsm_enumDef_BOOT;
    end
  end

  assign when_Controller_l92 = (fsm_n_counter == _zz_when_Controller_l92);
  assign when_Controller_l90 = (fsm_trip_counter == 10'h3e7);
  assign i_stream_fire = (i_stream_valid && i_stream_ready);
  always @(posedge clk) begin
    if(!resetn) begin
      _zz_axilite_bvalid_2 <= 1'b0;
      axilite_ar_rValid <= 1'b0;
      fsm_stateReg <= fsm_enumDef_BOOT;
    end else begin
      if(_zz_busCtrl_writeJoinEvent_translated_ready) begin
        _zz_axilite_bvalid_2 <= (busCtrl_writeJoinEvent_translated_valid && _zz_axilite_bvalid);
      end
      if(axilite_arready) begin
        axilite_ar_rValid <= axilite_arvalid;
      end
      fsm_stateReg <= fsm_stateNext;
    end
  end

  always @(posedge clk) begin
    if(_zz_busCtrl_writeJoinEvent_translated_ready) begin
      _zz_axilite_bresp <= busCtrl_writeJoinEvent_translated_payload_resp;
    end
    if(axilite_arready) begin
      axilite_ar_rData_addr <= axilite_araddr;
      axilite_ar_rData_prot <= axilite_arprot;
    end
    case(busCtrl_writeAddressMasked)
      16'h0 : begin
        if(busCtrl_writeOccur) begin
          _zz_signals_N <= axilite_wdata[19 : 0];
        end
      end
      16'h0020 : begin
        if(busCtrl_writeOccur) begin
          _zz_ap_rst_n <= axilite_wdata[0];
        end
      end
      default : begin
      end
    endcase
    case(fsm_stateReg)
      fsm_enumDef_s_idle : begin
        if(signals_T) begin
          fsm_n_counter <= 20'h0;
          fsm_trip_counter <= 10'h0;
        end
      end
      fsm_enumDef_s_work : begin
        if(i_stream_fire) begin
          if(when_Controller_l90) begin
            fsm_trip_counter <= 10'h0;
            if(!when_Controller_l92) begin
              fsm_n_counter <= (fsm_n_counter + 20'h00001);
            end
          end else begin
            fsm_trip_counter <= (fsm_trip_counter + 10'h001);
          end
        end
      end
      default : begin
      end
    endcase
  end


endmodule

//StreamFifo replaced by StreamFifo

//StreamFifo replaced by StreamFifo

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [31:0]   io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [31:0]   io_pop_payload,
  input               io_flush,
  output     [7:0]    io_occupancy,
  output     [7:0]    io_availability,
  input               clk,
  input               resetn
);

  reg        [31:0]   _zz_logic_ram_port0;
  wire       [6:0]    _zz_logic_pushPtr_valueNext;
  wire       [0:0]    _zz_logic_pushPtr_valueNext_1;
  wire       [6:0]    _zz_logic_popPtr_valueNext;
  wire       [0:0]    _zz_logic_popPtr_valueNext_1;
  wire                _zz_logic_ram_port;
  wire                _zz_io_pop_payload;
  wire       [6:0]    _zz_io_availability;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [6:0]    logic_pushPtr_valueNext;
  reg        [6:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [6:0]    logic_popPtr_valueNext;
  reg        [6:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_io_pop_valid;
  wire                when_Stream_l1078;
  wire       [6:0]    logic_ptrDif;
  reg [31:0] logic_ram [0:127];

  assign _zz_logic_pushPtr_valueNext_1 = logic_pushPtr_willIncrement;
  assign _zz_logic_pushPtr_valueNext = {6'd0, _zz_logic_pushPtr_valueNext_1};
  assign _zz_logic_popPtr_valueNext_1 = logic_popPtr_willIncrement;
  assign _zz_logic_popPtr_valueNext = {6'd0, _zz_logic_popPtr_valueNext_1};
  assign _zz_io_availability = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_io_pop_payload = 1'b1;
  always @(posedge clk) begin
    if(_zz_io_pop_payload) begin
      _zz_logic_ram_port0 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @(posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= io_push_payload;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing) begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 7'h7f);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @(*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_logic_pushPtr_valueNext);
    if(logic_pushPtr_willClear) begin
      logic_pushPtr_valueNext = 7'h0;
    end
  end

  always @(*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping) begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush) begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 7'h7f);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @(*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_logic_popPtr_valueNext);
    if(logic_popPtr_willClear) begin
      logic_popPtr_valueNext = 7'h0;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_io_pop_valid && (! logic_full))));
  assign io_pop_payload = _zz_logic_ram_port0;
  assign when_Stream_l1078 = (logic_pushing != logic_popping);
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_io_availability};
  always @(posedge clk) begin
    if(!resetn) begin
      logic_pushPtr_value <= 7'h0;
      logic_popPtr_value <= 7'h0;
      logic_risingOccupancy <= 1'b0;
      _zz_io_pop_valid <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_io_pop_valid <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if(when_Stream_l1078) begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush) begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
