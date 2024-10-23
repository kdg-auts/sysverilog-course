module decoder_2to4 (
    input logic [1:0] din,  // 2-бітний вхідний сигнал
    output logic [3:0] dout // 4-бітний вихід
);
    always_comb 
    begin
        dout = 4'b0000;  // Ініціалізація виходів
        case (din)
            2'b00: dout[0] = 1;
            2'b01: dout[1] = 1;
            2'b10: dout[2] = 1;
            2'b11: dout[3] = 1;
            default: dout = 4'b0000;
        endcase
    end
endmodule