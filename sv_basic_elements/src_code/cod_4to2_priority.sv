// priority CD 4-to-2 with zero detection 
// with special case statement (casex, casez)
module cod_4to2_priority (
    input logic [3:0] dc_in,   // вхід даних
    output logic [1:0] dc_out, // вихід даних
    output logic zrf  
);
    always_comb  
    begin
        casez (dc_in)
            4'b1???: begin dc_out = 2'b11; zrf = 1'b0; end
            4'b01??: begin dc_out = 2'b10; zrf = 1'b0; end
            4'b001?: begin dc_out = 2'b01; zrf = 1'b0; end
            4'b0001: begin dc_out = 2'b00; zrf = 1'b0; end
            4'b0000: begin dc_out = 2'b00; zrf = 1'b1; end
            default: begin dc_out = 2'bxx; zrf = 1'b0; end
        endcase
    end
endmodule