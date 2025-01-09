
module freq_divider_by_odd_rtl #(parameter N = 5) (
    input wire clk,          
    input wire rst,          
    output reg out);
    reg [31:0] count;        
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            out <= 0;
        end else begin
            if (count == (N-1)/2) begin  
                count <= 0;
                out <= ~out;  
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
