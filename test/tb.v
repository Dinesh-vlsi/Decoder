`timescale 1ns/1ps

module tb;

    reg clk;
    reg rst_n;
    reg ena;

    reg  [7:0] ui_in;
    reg  [7:0] uio_in;

    wire [7:0] uo_out;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    tt_um_decoder dut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset and enable
    initial begin
        rst_n = 0;
        ena   = 1;
        uio_in = 8'h00;

        #20;
        rst_n = 1;
    end

    // Stimulus
    initial begin
        ui_in = 8'b00000000; #10;
        ui_in = 8'b00000001; #10;
        ui_in = 8'b00000010; #10;
        ui_in = 8'b00000100; #10;
        ui_in = 8'b00001000; #10;
        ui_in = 8'b00010000; #10;
        ui_in = 8'b00100000; #10;
        ui_in = 8'b01000000; #10;
        ui_in = 8'b10000000; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t Input=%b Output=%b",
                 $time, ui_in, uo_out);
    end

endmodule
