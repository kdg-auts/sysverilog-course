// simple DC 3-to-8 with enable
module dec_3to8_en (
    input logic [2:0] din,   // вхід даних
    input logic ena,         // вхід дозволу
    output logic [7:0] dout  // вихід даних
);
    always_comb  
    begin
        if (ena == 1'b1)
            case (din)
                3'b000: dout = 8'b0000_0001;
                3'b001: dout = 8'b0000_0010;
                3'b010: dout = 8'b0000_0100;
                3'b011: dout = 8'b0000_1000;
                3'b100: dout = 8'b0001_0000;
                3'b101: dout = 8'b0010_0000;
                3'b110: dout = 8'b0100_0000;
                3'b111: dout = 8'b1000_0000;
            endcase
        else
            dout = 8'b0000_0000;
    end
endmodule