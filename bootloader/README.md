O arquivo `erro.asm` está propositalmente errado para que possa ser debugado e chegar arruma-lo, chegando ao arquivo `teste.asm`.
Depois é passado um exercício para imprimir uma string passando uma variável ao registrador (nao passando a string diretamente ao registrador).

1. usar os conceitos aprendidos para construir o teste.asm para passar corretamente o endereço da variável.
2. só da pra usar 8 bits (equivalente a 1 caracter ASCII) por vez pois a instruçao 0x10 só le os 8 bits mais baixos de AX.
3. preguiça de escrever 1 byte por vez.
4. de modo que nao preciso saber o offset exato.
