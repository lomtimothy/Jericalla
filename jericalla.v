//Alvarado Lomeli Gael Ramses 
module jericalla(
 input [16:0] instruccion,
 output [31:0] salida,
 output Zflag
 );
 
 wire [31:0] cable1, cable2, cable3;
 
 ROM tbrom(
    .direccion1(instruccion[8:5]),
    .direccion2(instruccion[4:1]),
    .datos1(cable1),
    .datos2(cable2)
);

RAM tbram(
    .direccion(instruccion[16:13]),
    .dato_entrada(cable3),
    .en(instruccion[0]),
    .dato_salida(salida)
);

AluB tbalub(
    .A(cable1),
    .B(cable2),
    .op(instruccion[12:9]),
    .Res(cable3),
    .Zflag(Zflag)
	);

endmodule
 
 //testbench
 module tbjericalla();
 reg [16:0] tbinstruccion;
 wire [31:0] tbsalida;
 wire tbZflag;

tbjericalla(
    .instruccion(tbinstruccion),
    .salida(tbsalida),
    .Zflag(tbZflag)
);
initial
begin

	tbinstruccion= 32'b00100010010001101;

	#100;
	 
	tbinstruccion= 32'b00100000000000000; 
	#100;
	 
	$stop;
end
endmodule