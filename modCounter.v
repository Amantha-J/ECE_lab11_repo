

module modCounter(

input clk, reset,
output bit1, bit2, bit3, out


    );
    
    
    wire flip1out;
    wire flip2out;
    wire flip3out;
    
//    wire qtoA1;

    wire circutOut = flip1out & ~flip2out & flip3out;
    
    wire c_reset = reset | circutOut;
    
    
    full_adder adder0 (
        .Cin(1),
        .A(flip1out),
        .B(0),
        .Cout(adder1.Cin),
        .Y(dflip0.data)
    );    
    
    full_adder adder1 (
        .Cin(adder0.Cout),
        .A(flip2out),
        .B(0),
        .Cout(adder2.Cin),
        .Y(dflip1.data)
    ); 
    
    full_adder adder2 (
        .Cin(adder1.Cout),
        .A(flip3out),
        .B(0),
        .Y(dflip2.data)
    ); 
    
    Dflipflop dflip0 (
        .data(adder0.Y),
        .clock(clk),
        .reset(c_reset),
        .Q(flip1out)
    );
    
    Dflipflop dflip1 (
        .data(adder1.Y),
        .clock(clk),
        .reset(c_reset),
        .Q(flip2out)
    );
    
    Dflipflop dflip2 (
        .data(adder2.Y),
        .clock(clk),
        .reset(c_reset),
        .Q(flip3out)
    );
    
    wire outlogic = (circutOut ^ dflipfinal.Q);
    
    // YO WE HAVE REET ON THIS THING THIS BETTER NOT MESS IT UP :d
    Dflipflop dflipfinal (
        .data(outlogic),
        .clock(clk),
        .reset(reset),
        .Q(out)
    );
    
    assign bit1 = adder0.Y;
    assign bit2 = adder1.Y;
    assign bit3 = adder2.Y;
    
endmodule
    
    