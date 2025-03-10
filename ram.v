`timescale 1ns/1ps
module RAM(
    input [3:0] direccion,
	input [31:0] dato_entrada,
	input en,
    output reg [31:0] dato_salida,
);

reg [31:0] memoria [0:15];

always @(*)
begin
    if(en)
    begin
        memoria[direccion] = dato_entrada;
    end
    else
       dato_salida = memoria
	 end  
end
endmodule









