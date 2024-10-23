// bus MUX 4-to-1
// 8-bit bus inputs and output
module mux_8bit_4to1 (
    input logic [7:0] in1,  // перший вхід
    input logic [7:0] in2,  // другий вхід
    input logic [7:0] in3,  // третій вхід
    input logic [7:0] in4,  // четвертий вхід
    input logic [1:0] sel,  // 2-бітний керуючий сигнал
    output logic [7:0] mx   // вихідна 4-бітна шина
);
    always_comb 
    begin
        case (sel)
            2'b00: mx = in1;
            2'b01: mx = in2;
            2'b10: mx = in3;
            2'b11: mx = in4;
            default: mx = 8'bx;
        endcase
    end
endmodule