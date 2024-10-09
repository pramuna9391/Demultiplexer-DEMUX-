module demux_tb;
    reg a;           
    reg [1:0] sel;   
    wire [3:0] y;     
    demux uut ( .a(a), .sel(sel), .y(y));
    initial begin
        
        a = 1;
        sel = 2'b00;
        #10; 
        sel = 2'b01;
        #10;
        sel = 2'b10;
        #10;
        sel = 2'b11;
        #10;
        a = 0;
        sel = 2'b00;
        #10;
        sel = 2'b01;
        #10;
        sel = 2'b10;
        #10;
        sel = 2'b11;
    
        $finish;
    end
endmodule
