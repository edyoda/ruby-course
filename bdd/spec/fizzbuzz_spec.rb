require './lib/fizzbuzz.rb'
 
describe 'fizzbuzz' do
  it 'return 1 in number is 1' do
    expect(fizzbuzz(1)).to eq 1
  end
  it 'returns fizz if divisible by 3' do 
    expect(fizzbuzz(9)).to eq 'fizz'
  end
  it 'returns buzz if divisible by 5' do
    expect(fizzbuzz(20)).to eq 'buzz'
  end
  it 'returns fizzbuzz if divisible by 5 and 3' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
end
