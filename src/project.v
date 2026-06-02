`default_nettype none

module tt_um_decoder (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,

    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,

    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

    wire _unused = &{ena, clk, rst_n, uio_in};

    // Pass-through
    assign uo_out = ui_in;

    // Disable bidirectional pins
    assign uio_out = 8'h00;
    assign uio_oe  = 8'h00;

endmodule

`default_nettype wire
