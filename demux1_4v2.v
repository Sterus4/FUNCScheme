`timescale 1ns / 1ps

module demux1_4(
    input a,
    input b,
    input e,
    output c0,
    output c1,
    output c2,
    output c3
    );
    wire not_a, not_b, not_e, abc0, abc1, abc2, abc3, not_abc0, not_abc1, not_abc2, not_abc3;
    
    nor(not_a, a, a);
    nor(not_b, b, b);
    nor(not_e, e, e);
    
    nor(abc0, a, b);
    nor(abc1, a, not_b);
    nor(abc2, not_a, b);
    nor(abc3, not_a, not_b);
    
    nor(not_abc0, abc0, abc0);
    nor(not_abc1, abc1, abc1);
    nor(not_abc2, abc2, abc2);
    nor(not_abc3, abc3, abc3);
    nor(c0, not_abc0, not_e);
    nor(c1, not_abc1, not_e);
    nor(c2, not_abc2, not_e);
    nor(c3, not_abc3, not_e);
    
endmodule