// simple CD 4-to-2 with zero detection 
// and error for restricted combinations
module cod_4to2_simple_zrf_oer (
    input logic [3:0] dc_in,   // вхід даних
    output logic [1:0] dc_out, // вихід даних
    output logic zrf,
    output logic oer   
);
    always_comb  
    begin
        case (dc_in)
            4'b0000: begin dc_out = 2'b00; zrf = 1'b1; oer = 1'b0; end
            4'b0001: begin dc_out = 2'b00; zrf = 1'b0; oer = 1'b0; end
            4'b0010: begin dc_out = 2'b01; zrf = 1'b0; oer = 1'b0; end
            4'b0100: begin dc_out = 2'b10; zrf = 1'b0; oer = 1'b0; end
            4'b1000: begin dc_out = 2'b11; zrf = 1'b0; oer = 1'b0; end
            default: begin dc_out = 2'b00; zrf = 1'b0; oer = 1'b1; end
        endcase
    end
endmodule