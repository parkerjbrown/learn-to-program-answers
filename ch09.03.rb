class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts "Hey, fella! Enter the side you REALLY want to be shown!"
    cheat_number = nil;
    until ((cheat_number.to_i < 6) && (cheat_number.to_i > 1))
      cheat_number = gets.chomp
    end

    @number_showing = cheat_number
  end
end

puts Die.new.cheat
puts Die.new.showing
