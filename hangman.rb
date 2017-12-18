require 'win32/sound' #these two lines allow access to sounds uisng sound.play below. it was
					#necessary to install the win32/sound gem to make this work (gem install win32-sound --platform=ruby)
include Win32
require 'io/console'


word = STDIN.getpass("Enter a word for your opponent to guess and press return:") #accepts the word without showing it on the scree


#Sound.play("c:\\Windows\\media\\Windows Foreground.wav")

#system ("cls")

word_letters = word.split("") #creates an array of the word
letter_count = word_letters.count #counts leters in the word

letters_guess = [] #creates an array to hold guessed letters

word_guess = ["-"] * letter_count#creates an array that holds spaces for each letter in the word
print "\t\tYour word has #{letter_count} letters \n\t\t" #tells player how long the word is

print  word_guess #prints out spaces or correctly gueseed letters in the word

loop do 								#starts loop to accept and evaluate letters
	print "\n Enter a letter guess and press return:  "  #asks for a letter guess


	letter = gets.chomp                  #accepts guessed letter
	letters_guess.push(letter)			#adds guessed letter to the letters guessed aray
	wrong_letters = 0				    #starts counter of wrong letters
	count=0								#initiates counter
	word_guess.each do |i|				#loop to evaluate letter guess against each letter in the word to be guessed
		if letter == word_letters[count] #these two lines compared the guessed letter to each letter in guessed word aaa
			word_guess[count] = letter    #and if there is a match, the correct letter is then input to the correct location in the array word_guess
			Sound.play("c:\\Windows\\media\\Windows Foreground.wav") #plays sound for correct guess

		end #@end of if
	count = count +1 #update counter
	end
wrong_letters = letters_guess - word_guess #creates array by subtracting correct letters from all letters guessed
#print wrong_letters

	if word_guess == word_letters #compares to see if the word guess is correct
	
	print "\t\t", word_guess, "\n"  #if correct, the word is printed and congratulations are offered
	print "\t\t YOU WIN!! \n\t\t"
	Sound.play("c:\\Windows\\media\\Alarm01.wav")
	abort ("Congratulations!!")
	end #ends if

print "\n\t\t", word_guess, "\n\n"  #prints word guess so far

print "You have guessed the following letters so far:", letters_guess.sort, "\n\n" #prints the guessed letters
print "#{wrong_letters.count} of these letters are wrong. \n\n" #calculates and prints the number of woring letters
print "You have #{10-wrong_letters.count} wrong letters to go. \n\n" #ca;culates and rints how many wrong guesses are available
if 0 == 10 - wrong_letters.count #checks to see if all of the wrong guesses are used up
	abort ("OUCH!! Sorry, You're HUNG!! \n\n") # if guesses are used then games ends
end	#ends if

end #ends long do loop

