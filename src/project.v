`default_nettype none

module tt_um_decoder (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out    // Dedicated outputs
);

    // Simple 8-bit pass-through decoder
    assign uo_out = ui_in;

endmodule

`default_nettype wire
