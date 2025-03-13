//Alvarado Lomeli Gael Ramses 
module ROM(
    input  [3:0]  direccion1,
    input  [3:0]  direccion2,
    output reg [31:0] datos1,
    output reg [31:0] datos2
);

reg [31:0] memoria [0:15];

initial begin
    #100
    $readmemb("datos", inst.memoria);
end

always @(*) begin
    datos1 = memoria[direccion1];
    datos2 = memoria[direccion2];
end

endmodule

