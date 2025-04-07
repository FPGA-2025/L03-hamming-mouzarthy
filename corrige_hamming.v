module corrige_hamming( input [14:0] entrada, output reg [10:0] saida );
// implemente o seu código aqui

wire [3:0] erro;
reg  [14:0] c;

// Todos os bits da paridade 1
assign erro[0] = entrada[0] ^ entrada[2] ^ entrada[4] ^ entrada[6] ^ entrada[8] ^ entrada[10] ^ entrada[12] ^ entrada[14];

// Todos os bits da paridade 2
assign erro[1] = entrada[1] ^ entrada[2] ^ entrada[5] ^ entrada[6] ^ entrada[9] ^ entrada[10] ^ entrada[13] ^ entrada[14];

// Todos os bits da paridade 4
assign erro[2] = entrada[3] ^ entrada[4] ^ entrada[5] ^ entrada[6] ^ entrada[11] ^ entrada[12] ^ entrada[13] ^ entrada[14];

// Todos os bits da paridade 8
assign erro[3] = entrada[7] ^ entrada[8] ^ entrada[9] ^ entrada[10] ^ entrada[11] ^ entrada[12] ^ entrada[13] ^ entrada[14];

always @(*) begin
  
  c = entrada;

  if( erro == 4'b0001 ) // 1
    begin
      c[0] = ~c[0];
    end

  if( erro == 4'b0010 ) // 2
    begin
      c[1] = ~c[1];
    end

  if( erro == 4'b0011 ) // 3
    begin
      c[2] = ~c[2];
    end

  if( erro == 4'b0100 ) // 4
    begin
      c[3] = ~c[3];
    end 

  if( erro == 4'b0101 ) // 5
    begin
      c[4] = ~c[4];
    end

  if( erro == 4'b0110 ) // 6
    begin
      c[5] = ~c[5];
    end

  if( erro == 4'b0111 ) // 7
    begin
      c[6] = ~c[6];
    end

  if( erro == 4'b1000 ) // 8
    begin
      c[7] = ~c[7];
    end

  if( erro == 4'b1001 ) // 9
    begin
      c[8] = ~c[8];
    end

  if( erro == 4'b1010 ) // 10
    begin
      c[9] = ~c[9];
    end

  if( erro == 4'b1011 ) // 11
    begin
      c[10] = ~c[10];
    end

  if( erro == 4'b1100 ) // 12
    begin
      c[11] = ~c[11];
    end

  if( erro == 4'b1101 ) // 13
    begin
      c[12] = ~c[12];
    end

  if( erro == 4'b1110 ) // 14
    begin
      c[13] = ~c[13];
    end

  if( erro == 4'b1111 ) // 15
    begin
      c[14] = ~c[14];
    end

  saida = { c[14], c[13], c[12], c[11], c[10], c[9], c[8], c[6], c[5], c[4], c[2] };

end

endmodule