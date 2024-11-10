// simple DC 2-to-4 with enable
module dec_2to4_en (
    input logic [1:0] din,   // вхід даних
    input logic ena,         // вхід дозволу
    output logic [3:0] dout  // вихід даних
);
    always_comb  
    begin
        if (ena == 1'b0) 
            dout = 4'b0000;
        else if (din == 2'b00) 
            dout = 4'b0001;
        else if (din == 2'b01)
            dout = 4'b0010;
        else if (din == 2'b10)
            dout = 4'b0100;
        else 
            dout = 4'b1000;
    end
endmodule