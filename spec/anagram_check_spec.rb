require('pry')
require('rspec')
require('anagram_check')

describe('#anagram_check') do
  example = Anagram.new()

  it() do
    expect(example.anagram_check('ruby', 'bury')).to(eq(true))
  end

end
