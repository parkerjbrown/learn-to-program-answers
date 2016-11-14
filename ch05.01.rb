puts "Hello there! What's your first name?"
first_name = gets.chomp
puts "And your middle name?"
middle_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp
name_length = first_name.length + middle_name.length + last_name.length
puts "Well then, it's nice to meet you " + first_name + " " + last_name + "! Did you know that there are " + name_length.to_s + " letters in your name? Also, did you know that I probably have autism?"
