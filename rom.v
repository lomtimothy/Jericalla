module ROM(
input [3:0] direccion,
input [3:0] direccion2,
output [31:0] datos1,
output [31:0] datos2,
);

reg [31:0] memoria [0:15];

initial begin
    #100
    $readmemb("datos", inst.memoria);
end

*always @(*)
begin
     dato_salida = mem[direccion];
	 dato_salida2 = mem[direccion2];
end
endmodule















