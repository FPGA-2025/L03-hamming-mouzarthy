module calcula_hamming( input [10:0] entrada, output [14:0] saida );
// implemente o seu código aqui

// Palavra de 11 bits:
// entrada |0 |1 |2 |3 |4 |5 |6 |7 |8 | 9 | 10|
//         |m1|m2|m3|m4|m5|m6|m7|m8|m9|m10|m11|

// acrescenta 4 bits adicionais, formando o codigo de Hamming
// x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15

// sejam

// x3  = m1

// x5  = m2
// x6  = m3
// x7  = m4

// x9  = m5
// x10 = m6
// x11 = m7
// x12 = m8
// x13 = m9
// x14 = m10
// x15 = m11

// Os 4 bits adicionais x1, x2, x4 e x8 sao calculados
// x1 = x3 ^ x5  ^ x7  ^ x9  ^ x11 ^ x13 ^ x15
// x2 = x3 ^ x6  ^ x7  ^ x10 ^ x11 ^ x14 ^ x15
// x4 = x5 ^ x6  ^ x7  ^ x12 ^ x13 ^ x14 ^ x15
// x8 = x9 ^ x10 ^ x11 ^ x12 ^ x13 ^ x14 ^ x15

wire x1, x2, x4, x8;

assign x1 = entrada[0] ^ entrada[1] ^ entrada[3] ^ entrada[4] ^ entrada[6] ^ entrada[8] ^ entrada[10];

assign x2 = entrada[0] ^ entrada[2] ^ entrada[3] ^ entrada[5] ^ entrada[6] ^ entrada[9] ^ entrada[10];

assign x4 = entrada[1] ^ entrada[2] ^ entrada[3] ^ entrada[7] ^ entrada[8] ^ entrada[9] ^ entrada[10];

assign x8 = entrada[4] ^ entrada[5] ^ entrada[6] ^ entrada[7] ^ entrada[8] ^ entrada[9] ^ entrada[10];

// x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15
// assign saida = { x1, x2,  entrada[0], x4, entrada[1], entrada[2], entrada[3], x8, entrada[4], entrada[5], entrada[6], entrada[7], entrada[8], entrada[9], entrada[10] };
assign saida = { entrada[10], entrada[9],  entrada[8], entrada[7], entrada[6], entrada[5], entrada[4], x8, entrada[3], entrada[2], entrada[1], x4, entrada[0], x2, x1 };

endmodule
