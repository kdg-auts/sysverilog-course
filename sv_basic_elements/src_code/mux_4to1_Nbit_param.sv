// bus MUX 4-to-1 
// with parametrized bus width (default 8 bits)
module bus_mux_param_4to1 
#(
    parameter WIDTH = 8  // Параметр задає розрядність вхідних шин
) (
    input logic [WIDTH-1:0] in1,  // перший вхід
    input logic [WIDTH-1:0] in2,  // другий вхід
    input logic [WIDTH-1:0] in3,  // третій вхід
    input logic [WIDTH-1:0] in4,  // четвертий вхід
    input logic [1:0] sel,        // 2-бітний керуючий сигнал
    output logic [WIDTH-1:0] mx    // вихідна шина з розрядністю WIDTH
);

    always_comb 
    begin
        case (sel)
            2'b00: mx = in1;
            2'b01: mx = in2;
            2'b10: mx = in3;
            2'b11: mx = in4;
            default: mx = {WIDTH{1'bx}}; // вихід невизначений, якщо селектор не відповідає жодному випадку
        endcase
    end

endmodule