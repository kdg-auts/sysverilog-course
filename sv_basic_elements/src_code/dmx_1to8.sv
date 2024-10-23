module demux_1to8 (
    input logic dmx_in,    // вхід
    input logic [2:0] sel, // 3-бітний керуючий сигнал
    output logic out0,     // перший вихід
    output logic out1,     // другий вихід
    output logic out2,     // третій вихід
    output logic out3,     // четвертий вихід
    output logic out4,     // п'ятий вихід
    output logic out5,     // шостий вихід
    output logic out6,     // сьомий вихід
    output logic out7      // восьмий вихід
);
    always_comb 
    begin
        // Ініціалізація всіх виходів
        out0 = 0;
        out1 = 0;
        out2 = 0;
        out3 = 0;
        out4 = 0;
        out5 = 0;
        out6 = 0;
        out7 = 0;
        // функціональна частина - один з виходів змінить значення
        case (sel)
            3'b000: out0 = dmx_in;
            3'b001: out1 = dmx_in;
            3'b010: out2 = dmx_in;
            3'b011: out3 = dmx_in;
            3'b100: out4 = dmx_in;
            3'b101: out5 = dmx_in;
            3'b110: out6 = dmx_in;
            3'b111: out7 = dmx_in;
        endcase
    end
endmodule