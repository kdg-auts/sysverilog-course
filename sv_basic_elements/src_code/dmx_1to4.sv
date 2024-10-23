module dmx_1to4 (
    input logic dmx_in,        // вхід
    input logic [1:0] sel, // 2-бітний керуючий сигнал
    output logic out1,     // перший вихід
    output logic out2,     // другий вихід
    output logic out3,     // третій вихід
    output logic out4      // четвертий вихід
);
    always_comb 
    begin
        // Ініціалізація всіх виходів - значення за замовчуванням
        out1 = 0;
        out2 = 0;
        out3 = 0;
        out4 = 0;
        // функціональна частина - один з виходів змінить значення
        case (sel)
            2'b00: out1 = dmx_in;
            2'b01: out2 = dmx_in;
            2'b10: out3 = dmx_in;
            2'b11: out4 = dmx_in;
        endcase
    end
endmodule