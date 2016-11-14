class Dragon
  def initialize name
    @name = name.capitalize
    @asleep = false
    @stuff_in_belly = 10 #Full
    @stuff_in_intestines = 0 #Doesn't need to use the bathroom

    puts @name + " is born."
  end

  def feed
    puts "You feed " + @name + "."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk " + @name + "."
    @stuff_in_intestines = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put " + @name + " to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end 
      if @asleep
        puts @name + " snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts @name + " wakes up slowly."
    end
  end

  def toss
    puts "You toss " + @name + " up in the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock " + @name + " gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...But wakes when you stop."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestines >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      #Move food from belly to intestine
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestines= @stuff_in_intestines + 1
    else
      #The dragon is starving! ):
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + " is starving! In desparation, he eats you!"
      exit #quits program
    end
  
    if @stuff_in_intestines >= 10
      @stuff_in_intestines = 0
      puts "Whoops! " + @name + " had an accident..."
      puts "There's dragon stool EVERYWHERE!"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + "'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts @name + " does the potty dance..."
    end
  end
end

puts "To interact with your dragon, type commands into the prompt below."
puts "Type \"HELP\" for a list of commands or \"EXIT\" to close the prompt."
puts
pet = Dragon.new 'Pathuunax'

#Take commands until the user exits or the dragon dies.

command = ""
while command.downcase != "exit"
  command = gets.chomp.downcase
  if command == "help"
    puts "You can use the following commands to interact with your dragon:"
    puts "[feed|walk|put_to_bed|toss|rock]"
    puts
  else
    pet.send(command.to_sym)
  end
end
