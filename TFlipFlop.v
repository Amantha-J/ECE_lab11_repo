
module TFlipFlop(
    input T, clock, reset,
    output Q
    );
    
    wire data = T ^ dflopper.Q;
    
    Dflipflop dflopper(
        .data(data),
        .clock(clock),
        .reset(reset),
        .Q(Q)
    );
    
endmodule
