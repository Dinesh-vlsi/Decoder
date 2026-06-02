`timescale 1ns/1ps

module tb;

    reg  [7:0] ui_in;
    wire [7:0] uo_out;

    tt_um_decoder dut (
        .ui_in(ui_in),
        .uo_out(uo_out)
    );

    initial begin

        ui_in = 8'b00000000;
        #10;

        ui_in = 8'b00000001;
        #10;

        ui_in = 8'b00000010;
        #10;

        ui_in = 8'b00000100;
        #10;

        ui_in = 8'b00001000;
        #10;

        ui_in = 8'b00010000;
        #10;

        ui_in = 8'b00100000;
        #10;

        ui_in = 8'b01000000;
        #10;

        ui_in = 8'b10000000;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t Input=%b Output=%b",
                  $time, ui_in, uo_out);
    end

endmodule
