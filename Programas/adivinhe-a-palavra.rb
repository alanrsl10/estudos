novo_jogo = 1

while novo_jogo == 1
	palavras = %w{Brasil Argentina Uruguai Paraguai Chile Venezuela Bolívia Equador Colombia Peru Suriname Guiana}
	pais_sorteado = palavras.sample
	palavra_tamanho = pais_sorteado.size

	puts "Descubra o nome do país que eu estou pensando!"

	palavra_parcial = []
	palavra_tamanho.times do
		palavra_parcial << " _ "
	end

	puts palavra_parcial.join

	fim = false

	while fim == false
		puts "Escolha uma letra: "
		sua_letra = gets.chomp

		aux = 0

		pais_sorteado.each_char do |letra_palavra|
			if palavra_parcial[aux] == " _ "
				if letra_palavra == sua_letra
					palavra_parcial[aux] = sua_letra
				end
			end
			aux += 1
	  end

	  if palavra_parcial.join.count(" _ ") > 0
	  	fim = false
	  	puts palavra_parcial.join
	  else
	  	fim = true
	  end
  end
  puts "Parabéns, você acertou!"
  puts ""
  puts "O país que eu havia sorteado era #{pais_sorteado}!"
  puts ""
  puts "Deseja jogar novamente?"
  puts "[0] - Não"
  puts "[1] - Sim"
  novo_jogo = gets.to_i
end