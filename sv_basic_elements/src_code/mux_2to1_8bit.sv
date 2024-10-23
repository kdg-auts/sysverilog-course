// simple MUX 2-to-1
// 8-bit bus inputs and output
module mux_2to1 (
    input logic [7:0] in1, // перший вхід, шина 8 біт
    input logic [7:0] in2, // другий вхід, шина 8 біт
    input logic sel,       // керуючий сигнал
    output logic [7:0] mx  // вихід, шина 8 біт
);
    always_comb  
    begin
        if (sel) 
            mx = in2;
        else 
            mx = in1;
    end
endmodule