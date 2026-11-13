module ripple(

input clk,reset,
output [2:0]state
    );
    
    TFlipFlop t0 (
        .T(1),
        .clock(clk),
        .reset(reset),
        .Q(state[0])
    );
    
    TFlipFlop t1 (
        .T(clk),
        .clock(~t0.Q),
        .reset(reset),
        .Q(state[1])
    );
    
    TFlipFlop t2 (
        .T(clk),
        .clock(~t1.Q),
        .reset(reset),
        .Q(state[2])
    );
    
endmodule
