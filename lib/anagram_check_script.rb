require_relative('anagram_check')

puts 'Type first word:'
str1 = gets.chomp

puts 'Type second word:'
str2 = gets.chomp

puts Anagram.new(str1).anagram_check(str2) + ' (' + str1 + ' and ' + str2 + ')'
