require_relative('anagram_check')
example = Anagram.new()

puts 'Type first word:'
str1 = gets.chomp

puts 'Type second word:'
str2 = gets.chomp

puts example.anagram_check(str1, str2)
