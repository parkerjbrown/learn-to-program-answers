puts "Hey there, buddy! What year were you born?"
year = gets.chomp
puts year + ", huh? That's pretty neat. What about the month?"
month = gets.chomp
puts "So you're a " + month + " baby. Real good there, pal. And how's about the day, huh? HOW'S ABOUT THE DAY, PALLY?"
day = gets.chomp
birthday = Time.mktime(year, month, day)
years_old = Time.now.year - birthday.year
puts "Looks like you're " + years_old.to_s + "! So guess what? I'm gonna BONK ya " + years_old.to_s + " times!"
puts
puts "BONK! " * years_old
