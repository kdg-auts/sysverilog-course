module dmx_1to4_4bit (
    input logic [3:0] dmx_in, // вхідна 4-бітна шина
    input logic [1:0] sel,    // 2-бітний керуючий сигнал
    output logic [3:0] out0,  // перший вихід (шинний на 4 біти)
    output logic [3:0] out1,  // другий вихід (шинний на 4 біти)
    output logic [3:0] out2,  // третій вихід (шинний на 4 біти)
    output logic [3:0] out3   // четвертий вихід (шинний на 4 біти)
);
    always_comb 
    begin
        // Ініціалізація всіх виходів
        out0 = 4'b0000;
        out1 = 4'b0000;
        out2 = 4'b0000;
        out3 = 4'b0000;

        case (sel)
            2'b00: out0 = dmx_in;
            2'b01: out1 = dmx_in;
            2'b10: out2 = dmx_in;
            2'b11: out3 = dmx_in;
        endcase
    end
endmodule
