require('pry')
require('rspec')
require('anagram_check')

describe('#anagram_check') do

  it('will check if two words are words') do
    expect(Anagram.new('rby').anagram_check('bury')).to(eq('You need to input actual words!'))
  end

  it('will check if two words are anagrams') do
    expect(Anagram.new('ruby').anagram_check('bury')).to(eq('These words are anagrams!'))
  end

  it('will check if two words are not anagrams and if not display number of common letters') do
    expect(Anagram.new('mango').anagram_check('melon')).to(eq('These words are not anagrams and have 3 letters in common!'))
  end

  it('will check ignoring case') do
    expect(Anagram.new('ruBy').anagram_check('buRy')).to(eq('These words are anagrams!'))
  end

  it('will check if words are also palindromes') do
    expect(Anagram.new('Racecar').anagram_check('racecar')).to(eq('These words are anagrams and palindromes!'))
  end

  it('will check if words are antigrams') do
    expect(Anagram.new('Kite').anagram_check('Car')).to(eq('These words are antigrams!'))
  end

  it('will remove spaces and check') do
    expect(Anagram.new('Race Car').anagram_check('racecar')).to(eq('These words are anagrams and palindromes!'))
  end

  it('will remove special characters and check') do
    expect(Anagram.new('Race Car').anagram_check('racecar!!!##@@')).to(eq('These words are anagrams and palindromes!'))
  end

end
