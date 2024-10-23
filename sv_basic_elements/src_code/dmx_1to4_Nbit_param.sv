module dmx_1to4_Nbit_param 
#(
    parameter WIDTH = 4  // Параметр задає розрядність вхідної та вихідних шин
) (
    input logic [WIDTH-1:0] dmx_in, // вхідна N-бітна шина
    input logic [1:0] sel,          // 2-бітний керуючий сигнал
    output logic [WIDTH-1:0] out0,  // перший вихід (шинний на N біт)
    output logic [WIDTH-1:0] out1,  // другий вихід (шинний на N біт)
    output logic [WIDTH-1:0] out2,  // третій вихід (шинний на N біт)
    output logic [WIDTH-1:0] out3   // четвертий вихід (шинний на N біт)
);
    always_comb 
    begin
        // Ініціалізація всіх виходів
        out0 = {WIDTH{1'b0}};
        out1 = {WIDTH{1'b0}};
        out2 = {WIDTH{1'b0}};
        out3 = {WIDTH{1'b0}};

        case (sel)
            2'b00: out0 = dmx_in;
            2'b01: out1 = dmx_in;
            2'b10: out2 = dmx_in;
            2'b11: out3 = dmx_in;
        endcase
    end
endmodule