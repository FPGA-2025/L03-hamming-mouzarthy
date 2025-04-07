module injetor( input [14:0] entrada, input [3:0] n, input erro, output reg [14:0] saida );

// implemente seu código aqui

always @(*) begin

  saida = entrada;

  if( erro ) 
    begin
      if( n == 0 )
        begin
          saida[0] = ~saida[0];
        end
      if( n == 1 )
        begin
          saida[1] = ~saida[1];
        end
      if( n == 2 )
        begin
          saida[2] = ~saida[2];
        end
      if( n == 3 )
        begin
          saida[3] = ~saida[3];
        end
      if( n == 4 )
        begin
          saida[4] = ~saida[4];
        end
      if( n == 5 )
        begin
          saida[5] = ~saida[5];
        end
      if( n == 6 )
        begin
          saida[6] = ~saida[6];
        end
      if( n == 7 )
        begin
          saida[7] = ~saida[7];
        end
      if( n == 8 )
        begin
          saida[8] = ~saida[8];
        end
      if( n == 9 )
        begin
          saida[9] = ~saida[9];
        end
      if( n == 10 )
        begin
          saida[10] = ~saida[10];
        end
      if( n == 11 )
        begin
          saida[11] = ~saida[11];
        end
      if( n == 12 )
        begin
          saida[12] = ~saida[12];
        end
      if( n == 13 )
        begin
          saida[13] = ~saida[13];
        end
      if( n == 14 )
        begin
          saida[14] = ~saida[14];
        end
      if( n == 15 )
        begin
          saida[15] = ~saida[15];
        end
    end

end

endmodule
