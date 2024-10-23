// simple MUX 8-to-1
// input as single vector
module mux_8to1 (
    input logic [7:0] inp,  // 8 вхідних сигналів
    input logic [2:0] sel, // 3-бітний керуючий сигнал
    output logic y         // вихід
);
    always_comb begin
        case (sel)
            3'b000: y = inp[0];
            3'b001: y = inp[1];
            3'b010: y = inp[2];
            3'b011: y = inp[3];
            3'b100: y = inp[4];
            3'b101: y = inp[5];
            3'b110: y = inp[6];
            3'b111: y = inp[7];
            default: y = 1'bx;
        endcase
    end
endmodule