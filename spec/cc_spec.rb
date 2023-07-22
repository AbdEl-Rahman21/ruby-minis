require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts letters in a sentence' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')

    expect(caesar_cipher('To be or not to be, That is the question',
                         10)).to eql('Dy lo yb xyd dy lo, Drkd sc dro aeocdsyx')
  end

  it 'returns the same sentence if index is 26' do
    expect(caesar_cipher('What a string!', 26)).to eql('What a string!')
  end

  it 'returns an empty string if given one' do
    expect(caesar_cipher('', 6)).to eql('')
  end
end
