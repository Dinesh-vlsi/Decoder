module tt_um_decoder (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,
    input        ena,
    input        clk,
    input        rst_n
);

assign uo_out = ui_in + 8'd30;  // 20 + 30 = 50

assign uio_out = 8'b0;
assign uio_oe  = 8'b0;

endmodule
