puts "Hello there, grandson! How are you today?"
puts "Be sure to speak up, grandman can't hear so well anymore!"

response = gets.chomp
bye_number = 0

while bye_number != 2
  if response != response.upcase
    puts "WHAT? SPEAK UP, SONNY!"
    bye_number = 0
    response = gets.chomp
  elsif response == "BYE"
    puts "...GRANDMA CAN'T HEAR YOU! WHAT DID YOU SAY?"
    bye_number = bye_number + 1
    response = gets.chomp
  else
    year = 1930 + rand(21)
    puts "NO, NOT SINCE " + year.to_s + "!"
    bye_number = 0
    response = gets.chomp
  end
end
