module dmx_1to2 (
    input logic a,      // вхід
    input logic sel,    // керуючий сигнал
    output logic x,     // перший вихід
    output logic y      // другий вихід
);
    always_comb 
    begin
        case (sel)
            1'b0: 
            begin
                x = a;
                y = 0;
            end
            1'b1: 
            begin
                x = 0;
                y = a;
            end
            default: 
            begin
                x = 0;
                y = 0;
            end
        endcase
    end
endmodule