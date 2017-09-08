require('pry')
require('rspec')
require('anagram_check')

describe('#anagram_check') do
  example = Anagram.new()

  it('will check if two words are words') do
    expect(example.anagram_check('rby', 'bury')).to(eq('You need to input actual words!'))
  end

  it('will check if two words are anagrams') do
    expect(example.anagram_check('ruby', 'bury')).to(eq('These words are anagrams!'))
  end

  it('will check if two words are not anagrams') do
    expect(example.anagram_check('mango', 'melon')).to(eq('These words are not anagrams!'))
  end

  it('will check ignoring case') do
    expect(example.anagram_check('ruBy', 'burY')).to(eq('These words are anagrams!'))
  end

  it('will check if words are also palindromes') do
    expect(example.anagram_check('Racecar', 'racecar')).to(eq('These words are anagrams and palindromes!'))
  end

  it('will check if words are antigrams') do
    expect(example.anagram_check('Kite', 'Car')).to(eq('These words are antigrams!'))
  end

end
