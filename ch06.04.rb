puts "Welcome to the Leap Year Listing Program!"
puts ""
puts "Please enter a start year:"
start_year = gets.chomp.to_i
puts "Please enter an end year:"
end_year = gets.chomp.to_i
puts ""
puts "The leap years between " + start_year.to_s + " and " + end_year.to_s + " are:"

while start_year <= end_year
  if start_year%4 == 0
    puts start_year
  elsif start_year%400 == 0
    puts start_year
  end

  start_year = start_year + 1
end
