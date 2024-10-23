`timescale 1ns / 1ps

module demux1_4(
    input wire [1:0]a,
    input wire e,
    output reg [3:0]c
    );
    always @(*) begin
        case(a)
            2'd0: begin c = {3'b000, e      }; end
            2'd1: begin c = {2'b00, e, 1'b0 }; end
            2'd2: begin c = {1'b0, e, 2'b00 }; end
            2'd3: begin c = {e, 3'b000      }; end
        endcase
    end
endmodule
