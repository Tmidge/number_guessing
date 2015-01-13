answer = rand(100)+1
guess_array=[]
guess_counter = 1

puts "Random number game"
puts "guess a number between 1-100"
puts "you have 5 tries"

def get_user_input
   gets.chomp.to_i
end
def the_end
  puts "YOU LOSE"
end


#puts answer

while guess_counter < 6
  guess = get_user_input
    if guess == answer
      puts "you got it"
      exit
    else
        if guess_array.include?(guess)
          puts "That's the same number!"
        else
          if guess < answer
            puts "guess again, higher this time!"
            guess_array << guess
            guess_counter +=1
          elsif guess > answer
            puts "guess again, lower this time!"
            guess_array << guess
            guess_counter +=1
          end
        end
      end
end
the_end


#def get_user_input
#end

def get_user_input
  guess = gets.chomp.to_i
end
