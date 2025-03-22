// priority CD 4-to-2 with zero detection
// using cascaded if statement  
module cod_4to2_priority (
    input logic [3:0] dc_in,   // вхід даних
    output logic [1:0] dc_out, // вихід даних
    output logic zrf  
);
    always_comb  
    begin
        if (dc_in[3]) 
        begin 
            dc_out = 2'b11; 
            zrf = 1'b0; 
        end
        else if (dc_in[2]) 
        begin 
            dc_out = 2'b10; 
            zrf = 1'b0; 
        end
        else if (dc_in[1]) 
        begin 
            dc_out = 2'b01; 
            zrf = 1'b0; 
        end
        else if (dc_in[0]) 
        begin 
            dc_out = 2'b00; 
            zrf = 1'b0; 
        end
        else if (dc_in == 4'b0000) 
        begin 
            dc_out = 2'b00; 
            zrf = 1'b1; 
        end
        else 
        begin 
            dc_out = 2'bxx; 
            zrf = 1'b0; 
        end
    end
endmodule