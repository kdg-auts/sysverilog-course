// simple MUX 2-to-1
module mux_2to1 (
    input logic a,   // перший вхід
    input logic b,   // другий вхід
    input logic sel, // керуючий сигнал
    output logic y   // вихід
);
    always_comb  
    begin
        if (sel) 
            y = b;
        else 
            y = a;
    end
endmodule