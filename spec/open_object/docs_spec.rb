RSpec.describe OO do
  # Remove me when lab42_literate is available
  #

  context 'basic access' do 
    let( :o ){ OO.new a: 1 }

    it { expect(o.a).to eq(1) }
    it { expect(o[:a]).to eq(1) }
  end
end
