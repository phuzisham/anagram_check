require('pry')
require('rspec')
require('anagram_check')

describe('#anagram_check') do
  example = Anagram.new()

  it('will check if two words are anagrams') do
    expect(example.anagram_check('ruby', 'bury')).to(eq(true))
  end

  it('will check ignoring case') do
    expect(example.anagram_check('ruBy', 'burY')).to(eq(true))
  end

end