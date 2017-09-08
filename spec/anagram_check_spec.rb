require('pry')
require('rspec')
require('anagram_check')

describe('#anagram_check') do

  it('will check if two words are words') do
    example = Anagram.new('rby')
    expect(example.anagram_check('bury')).to(eq('You need to input actual words!'))
  end

  it('will check if two words are anagrams') do
    example = Anagram.new('ruby')
    expect(example.anagram_check('bury')).to(eq('These words are anagrams!'))
  end

  it('will check if two words are not anagrams') do
    example = Anagram.new('mango')
    expect(example.anagram_check('melon')).to(eq('These words are not anagrams!'))
  end

  it('will check ignoring case') do
    example = Anagram.new('ruBy')
    expect(example.anagram_check('buRy')).to(eq('These words are anagrams!'))
  end

  it('will check if words are also palindromes') do
    example = Anagram.new('Racecar')
    expect(example.anagram_check('racecar')).to(eq('These words are anagrams and palindromes!'))
  end

  it('will check if words are antigrams') do
    example = Anagram.new('Kite')
    expect(example.anagram_check('Car')).to(eq('These words are antigrams!'))
  end

  it('will remove spaces and check') do
    example = Anagram.new('Race Car')
    expect(example.anagram_check('racecar')).to(eq('These words are anagrams and palindromes!'))
  end

  it('will remove special characters and check') do
    example = Anagram.new('Race Car')
    expect(example.anagram_check('racecar!!!##@@')).to(eq('These words are anagrams and palindromes!'))
  end

end
