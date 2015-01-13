answer = rand(100)+1
guess_array=[]
count = 0

puts "Random number game"
puts "guess a number between 1-100"

def get_user_input
   gets.chomp.to_i
end
def the_end
  puts "YOU LOSE"
end


#puts answer

def remaining_guesses(count)
  suffix = (6-count==1 ? "es" :"")
  puts "You have #{5-count} guess#{suffix} left"
end

while count < 5
  remaining_guesses(count)
  guess = get_user_input
    if guess == answer
      puts "you got it"
      exit
    else
        if guess_array.include?(guess)
          puts "You've already guessed!"
        else
          if guess < answer
            puts "guess again, higher this time!"
            guess_array << guess
            count +=1
          elsif guess > answer
            puts "guess again, lower this time!"
            guess_array << guess
            count +=1
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
