module tt_um_decoder (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    ...
);

    wire _unused = &{ena, clk, rst_n, uio_in};

    // Pass-through
    assign uo_out = ui_in;

    // Disable bidirectional pins
    assign uio_out = 8'h00;
    assign uio_oe  = 8'h00;

endmodule

`default_nettype wire
