# class/Users/xiawei/my_projects/tiy/week3/day3/homework/lib/guessing_game.rb.

class Guessing_game

  def initialize
      start_game
  end

  def start_game
    get_random_number
    (1..5).each do |x|
      get_guess
      break if is_winner? == true
    end
  end

  def get_random_number
    @random_number = (rand*100).to_i + 1
    puts "The number has been picked."
  end

  def get_guess
    puts "Guess what is it? >"
    @action = gets.chomp.to_i
  end

  def is_winner?
    difference = @action - @random_number
    if difference > 0
      case
        when ((31..99).member? difference) then puts "That is too high!"
        when ((11..30).member? difference) then puts "Closer,but still high!"
        when ((1..10).member? difference ) then puts "High, but so close!"
      end
      return false
    elsif difference < 0
      case
        when ((-99..-31).member? difference) then puts "That is too low!"
        when ((-30..-11).member? difference) then puts "Closer,but still low!"
        when ((-10..-1).member? difference) then puts "Low, but so close!"
      end
      return false
    else
      puts "That is it. You win!"
    end
    return true
  end

end

my_game = Guessing_game.new
