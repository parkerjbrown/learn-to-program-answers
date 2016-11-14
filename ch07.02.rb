line_width = 40
table_of_contents = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", "Chapter 3: Variables", "page 118"]

puts table_of_contents[0].center(line_width)
puts ""

i = 0
until i == 6
  puts (table_of_contents[i += 1].ljust(line_width/2) + table_of_contents[i += 1].rjust(line_width/2))
end
