class Encryptor

	def cypher
		Hash[ ('A'..'z').to_a.zip(('A'..'z').to_a.rotate(8)) ]
	end

	def decypher
		Hash[ ('A'..'z').to_a.rotate(8).zip(('A'..'z').to_a) ]
	end

	def encrypt_letter letter
		cypher[letter]
	end

	def decrypt_letter letter
		decypher[letter]
	end

	def encrypt str
		str.split(' ').collect do |word|
			word.chars.collect { |c| encrypt_letter(c) }.join
		end.join(' ')
	end

	def decrypt str 
		str.split(' ').collect do |word|
			word.chars.collect { |c| decrypt_letter(c) }.join
		end.join(' ')
	end
end