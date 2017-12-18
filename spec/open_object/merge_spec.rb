RSpec.describe OO do
  
  describe '#merge' do
    let( :original ){ OO.new a: 42, c: 3 }
    let( :merged ){ original.merge a: 43, b: 44 }

    it 'returns another OO instance' do
      expect(merged).to be_kind_of(described_class)
    end

    it 'does not change the original' do
      expect( original.to_hash ).to eq(a: 42, c: 3)
    end

    it 'the merged has the correct value' do
      expect( merged.to_hash ).to eq(a: 43, b: 44, c: 3)
    end
    
  end

end
