module demux(
    input a,           
    input [1:0] sel,   
    output reg [3:0] y 
);
    always @(*) begin
        y = 4'b0000;
        case (sel)
          2'b00: y[0] = a; 
          2'b01: y[1] = a; 
            2'b10: y[2] = a; 
            2'b11: y[3] = a; 
            default: y = 4'b0000; 
        endcase
      end
      endmodule
