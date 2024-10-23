`timescale 1ns / 1ps


module demux1_4_tb;
    reg e_in;
    reg [1:0] in;
    wire [3:0]c_out;
    demux1_4 my_demux(
        .a(in),
        .e(e_in),
        .c(c_out)
    );
    integer i;
    reg [2:0] test_val;
    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            test_val = i;
            in = i;
            e_in = test_val[2];
            #10;
            
        end
    end
endmodule
