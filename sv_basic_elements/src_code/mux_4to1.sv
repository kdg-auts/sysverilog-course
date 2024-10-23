// simple MUX 4-to-1
module mux_4to1 (
    input logic a,   // перший вхід
    input logic b,   // другий вхід
    input logic c,   // третій вхід
    input logic d,   // четвертий вхід
    input logic [1:0] sel, // керуючий сигнал 
    output logic y   // вихід
);
    always_comb 
    begin
        if (sel == 2'b00) 
            y = a;
        else if (sel == 2'b01)
            y = b;
        else if (sel == 2'b10)
            y = c;
        else
            y = d;
    end
endmodule