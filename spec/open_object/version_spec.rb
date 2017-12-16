RSpec.describe OO do
  describe OO::VERSION do 
    let( :semantic_version ){ %r[\A \d+ \. \d+ \. \d+ (?:-pre\d*)? \z ]x }

    it { expect(OO::VERSION).to match(semantic_version)}
  end
end
