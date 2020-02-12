require './caesar_cipher.rb'

describe '#caesar_cipher' do
  it 'Shifts a single string forward by the correct amount' do
    expect(caesar_cipher('hello', 5)).to eql('mjqqt')
  end

  it 'Shifts a single string backward by the correct amount' do
    expect(caesar_cipher('jump', -4)).to eql('fqil')
  end

  it 'wraps from z->a' do
    expect(caesar_cipher('hydroxyzine', 5)).to eql('mdiwtcdensj')
  end

  it 'wraps from a->z' do
    expect(caesar_cipher('crabcake', 5)).to eql('hwfghfpj')
  end

  it 'keeps the same case' do
    expect(caesar_cipher('ASHLEY', 5)).to eql('FXMQJD')
  end

  it 'handles multiple letters' do
    expect(caesar_cipher('hello ruby world', 5)).to eql('mjqqt wzgd btwqi')
  end
end
