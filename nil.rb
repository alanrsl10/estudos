# Case NIL

nome = "Lucas"
puts "Seja bem vindo #{nome}" if not nome.nil?

nome1 = nil
puts "Seja bem vindo #{nome1}" if not nome.nil?

nome2 = nil
puts "Seja bem vindo #{nome2}" unless nome.nil?

nome3 = nil
puts "Seja bem vindo #{nome3}" if nome

nome4 = "Alan"
puts "Seja bem vindo #{nome4}" if nome