# Jogo da adivinhação diferente
jogar = "1"

def limpa_texto(texto)
	texto.strip
end

def inicia_jogo
	puts "Adivinhe o número que eu sorteei entre 1 e 100"
	palpite = gets.to_i

	sorteado = Random.rand(99) + 1

	tentativas = 1

	while palpite != sorteado
		if palpite > sorteado
			puts "O número que você escolheu é maior do que o número que eu sorteei!"
		else
			puts "O número que você escolheu é menor do que o número que eu sorteei!"
		end
		tentativas += 1
		puts "Tente novamente..."
		palpite = gets.to_i
	end
	puts "Parabéns, você acertou. O número sorteado era #{sorteado}"
	puts "Você usou #{tentativas} tentativas para acertar o número."
end

while jogar == "1"
	inicia_jogo
	puts "Deseja jogar novamente?"
	puts "[1] - Sim"
	puts "[0] - Não"
	jogar = limpa_texto(gets)
end