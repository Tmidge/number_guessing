
answer = rand(100)+1
guess_array=[]
guess_counter = 1
min_range = 1
max_range = 100
win= false


puts "Random number game"
puts "guess a number between 1-100"
puts "you have 5 tries"

def get_user_input
  gets.chomp.to_i
end
def the_end(answer)
  puts "YOU LOSE"
  puts "The answer was #{answer} Dumb-Dumb"
end


while guess_counter < 6
  guess = get_user_input
  if guess == answer
    puts "you got it"
    win = true
    break

  elsif guess_array.include?(guess)
    puts "That's the same number!"
  elsif guess < answer
    guess_array << guess
    guess_counter +=1
    if guess < min_range
       puts "you're wasting a guess going low again!"
    else
      puts "guess again, higher this time!"
      min_range = [min_range, guess].max
    end
  elsif guess > answer
    guess_array << guess
    guess_counter +=1
    if guess > max_range
      puts "you're wasting a guess going high again"
    else
      puts "guess again, lower this time!"
      max_range = [max_range, guess].min
    end
  end
end

the_end(answer) if !win
