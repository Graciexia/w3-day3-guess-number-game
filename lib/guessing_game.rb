# class/Users/xiawei/my_projects/tiy/week3/day3/homework/lib/guessing_game.rb.

class Guessing_game

  def initialize
    begin
      start_game
      begin
        print "Do you want to play again (y, n)? "
        answer = gets.chomp.upcase
      end until ["Y", "N"].member? answer
    end until answer == "N"
  end

  def start_game
    get_random_number
    @guesses = []
    (1..5).each do |x|
      get_guess
      check_old_guesses
      break if is_winner? == true
    end
    if @action != @random_number
      puts "Sorry, you only get 5 tries. You lose!"
    end
  end

  def get_random_number
    @random_number = (rand*100).to_i + 1
    puts "A number between 1 and 100 has been picked."
  end

  def get_guess
    puts "Guess what is it? >"
    @action = gets.chomp.to_i
  end

  def check_old_guesses
    if @guesses.include?(@action) == true
      puts "Are you feeling all right?"
    end
    @guesses.push(@action)
  end

  def is_winner?
    difference = @action - @random_number
    if difference > 30 then puts "That is way too high!"
    elsif difference > 10 then puts "That is close, but too high!"
    elsif difference > 0 then puts "Very close, but too high!"
    elsif difference < -30 then puts "That is way too low!"
    elsif difference < -10 then puts "That is close, but too low!"
    elsif difference < 0 then puts "Very close, but too low!"
    else
      puts "That is it. You win!"
      return true
    end
    return false
  end

end

my_game = Guessing_game.new
