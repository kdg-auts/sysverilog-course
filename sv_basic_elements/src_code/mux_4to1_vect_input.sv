// simple MUX 4-to-1
// input as single vector
module mux_4to1 (
    input logic [3:0] in,  // 4 вхідних сигнали одним вектором
    input logic [1:0] sel, // 2-бітний керуючий сигнал
    output logic y         // вихід
);
    always_comb 
    begin
        case (sel)
            2'b00: y = in[0];
            2'b01: y = in[1];
            2'b10: y = in[2];
            2'b11: y = in[3];
            default: y = 1'bx;
        endcase
    end
endmodule