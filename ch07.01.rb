puts "Please enter some words below. Press \"Enter\" when you\'re finished."
words = []
addWord = 0

while addWord != ""
  addWord = gets.chomp
  words.push addWord
end

puts "Here is a sorted list of the words you entered:"
puts words.sort
