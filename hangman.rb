print "Enter a word:"

word = gets.chomp

word_letters = word.split("")
letter_count = word_letters.count
correct_letters = []
incorrect_letters = []

word_guess = ["-"] * letter_count

print word_letters, letter_count, word_guess

print "enter a letter guess:"

letter = gets.chomp
count=0
word_guess.each do |i|
	if letter == word_letters[count]
		word_guess[count] = letter
		correct_letters.push(letter)
	elsif 
		incorrect_letters.push(letter)
	end
count = count +1
end

print word_guess, correct_letters, incorrect_letters