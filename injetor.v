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
    end

end

endmodule
