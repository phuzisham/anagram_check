require_relative('anagram_check')

puts 'Type first word:'
str1 = gets.chomp

puts 'Type second word:'
str2 = gets.chomp

puts Anagram.new(str1, str2).anagram_check()
