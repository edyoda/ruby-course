require 'mygem'

describe 'mygem' do  
  it 'returns 10 if the given value is 1,2,3,4' do 
    expect(MyGem.new.sum(1,2,3,4)).to eq 10
  end
end
