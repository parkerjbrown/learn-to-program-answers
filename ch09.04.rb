class Orange_Tree

  def initialize
    @age = 0
    @height = 2
    @oranges = 0
    @dead = false

    puts "You plant an orange sapling. It has your eyes."
  end
 
  def count_oranges
    if @oranges == 1
      puts "There is 1 orange on the tree. It looks lonely."
    else
      puts "There are " + @oranges.to_s + " oranges on the tree."
    end
  end

  def check_age
    puts "The tree is " + @age.to_s + " years old."
  end

  def measure
    puts "You measure the orange tree to find that it is " + @height.to_s + " feet high."
  end

  def pick_oranges (quantity = (no_arguments_passed = true; nil))
    if no_arguments_passed
      quantity = 1
    end    

    if quantity > @oranges
      puts "There are not enough oranges on the tree."
    elsif quantity <= @oranges
      if quantity == 0
        puts "After much deliberation, you decide not to pick any oranges."
      elsif quantity == 1
        puts "You pick an orange."
        @oranges = @oranges - 1
      else
        puts "You pick " + quantity.to_s + " oranges."
        @oranges = @oranges - quantity
      end
    end
  end

  def wait (duration = (no_arguments_passed = true; nil))
    if no_arguments_passed
      duration = 1
    end
     
    if duration == 1
      puts "You wait one year. Your tree grows slightly!"
    else
      puts "You wait " + duration.to_s + " years."
    end
 
    duration.times do
      if @age < 50
        one_year_passes
      end
    end
  end

  def destroy
    puts "In a blind fit of rage, you destroy the orange tree. You jerk."
    @dead = true
  end

  private

  def one_year_passes
    @age += 1
    @oranges = 0
    if @age < 4
      @height += 2
    elsif @age >= 4 && @age < 10
      @height += 1
      @oranges = 30
    elsif @age >= 4 && @age < 15
      @height += 1
      @oranges += 50
    elsif @age >= 15 && @age < 30
      @oranges = 150
    elsif @age >= 30 && @age < 50
      @oranges = 100
    else
      puts "The tree has died of old age. The funeral is next Tuesday."
      @dead = true
    end
  end
  
  if @dead == true
    exit
  end
end

tree = Orange_Tree.new
tree.check_age
tree.measure
tree.count_oranges
tree.wait 4
tree.check_age
tree.measure
tree.count_oranges
tree.pick_oranges 10
tree.count_oranges
tree.wait 24
tree.count_oranges
tree.pick_oranges
tree.pick_oranges 72
tree.count_oranges
tree.wait 72
