// simple CD 4-to-2 
module cod_4to2_simple (
    input logic [3:0] dc_in,   // вхід даних
    output logic [1:0] dc_out  // вихід даних
);
    always_comb  
    begin
        case (dc_in)
            4'b0001: dc_out = 2'b00;
            4'b0010: dc_out = 2'b01;
            4'b0100: dc_out = 2'b10;
            4'b1000: dc_out = 2'b11;
            default: dc_out = 2'bxx;
        endcase
    end
endmodule