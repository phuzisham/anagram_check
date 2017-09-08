require_relative('anagram_check')

puts 'Type first word:'
str1 = gets.chomp

puts 'Type second word:'
str2 = gets.chomp

example = Anagram.new(str1)

puts example.anagram_check(str2) + ' (' + str1 + ' and ' + str2 + ')'

puts 'Would you like to check another word against ' + str1 + '? Type yes or no'

response = gets.chomp
response = response.gsub(/[^a-z]/i, '').downcase

if (response === 'yes')
  puts 'Type another word:'
  str2 = gets.chomp
  puts example.anagram_check(str2) + ' (' + str1 + ' and ' + str2 + ')'
else
  puts 'Thanks for using this script!'
end
