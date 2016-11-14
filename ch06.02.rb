puts "Why hello there, grandson! How are you today? Be sure to speak up, grandma can't hear so well anymore."
response = gets.chomp

while response != "BYE"
  if response != response.upcase
  puts "WHAT? GRANDMA CAN\'T HEAR YOU! SPEAK UP, SONNY!"
  response = gets.chomp
  else
  year = 1930 + rand(21)
  puts "NO, NOT SINCE " + year.to_s + "!"
  response = gets.chomp
  end
end
