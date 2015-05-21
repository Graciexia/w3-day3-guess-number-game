# class/Users/xiawei/my_projects/tiy/week3/day3/homework/lib/guessing_game.rb.

class Guessing_game
attr_accessor :random_number

  def random

    @random_number = (rand*100).to_i + 1
    puts "The number is picked. Guess what is it? >"
    @action = gets.chomp.to_i
  end

  def winning
    @difference = @action - @random_number
    if @difference > 0
      case
        when ((31..99).member? @difference) then puts "That is too high!"
        when ((11..30).member? @difference) then puts "Closer,but still high!"
        when ((1..10).member? @difference ) then puts "High, but so close!"
      end
    elsif @difference < 0
      case
        when ((-99..-31).member? @difference) then puts "That is too low!"
        when ((-30..-11).member? @difference) then puts "Closer,but still low!"
        when ((-10..-1).member? @difference) then puts "Low, but so close!"
      end
    else
      puts "That is it. You win!"
    end
  end

end


