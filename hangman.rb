print "Enter a word:"

word = gets.chomp
system ("cls")

word_letters = word.split("")
letter_count = word_letters.count
correct_letters = []
incorrect_letters = []
letters_guess = []

word_guess = ["-"] * letter_count

#print word_letters, letter_count, word_guess
loop do 
	print "\n Enter a letter guess:  "


	letter = gets.chomp
	letters_guess.push(letter)
	wrong_letters = 0
	count=0
	word_guess.each do |i|
		if letter == word_letters[count]
			word_guess[count] = letter
			#correct_letters.push(letter)
		#elsif 
		#	wrong_letters += 1
			#incorrect_letters.push(letter)
		end
	count = count +1
	end
wrong_letters = letters_guess - word_guess
#print wrong_letters

	if word_guess == word_letters
	
	print "\t\t", word_guess, "\n"
	print "\t\t YOU WIN!! \n\n"
	abort
	end

print "\n\t\t", word_guess, "\n\n"

print "You have guessed the following letters so far:", letters_guess.sort, "\n\n"
print "#{wrong_letters.count} of these letters are wrong. \n\n"
print "You have #{10-wrong_letters.count} wrong letters to go. \n\n"
if 0 == 10 - wrong_letters.count
	abort ("OUCH!! Sorry, You're HUNG!! \n\n")
end	

end

