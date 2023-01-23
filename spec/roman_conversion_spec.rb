RSpec.describe RomanConversion do
  let(:conversion) { RomanConversion.new }
  let(:case1) { 'III' }
  let(:case2) { 'LVIII' }
  let(:case3) { 'MCMXCIV' }
  let(:case4) { 'CMXCIX' }

  it 'exists' do
    expect(conversion).to be_an_instance_of(RomanConversion)
  end

  it 'can convert I numerals to numbers' do
    expect(conversion.roman_to_int(case1)).to eq(3)
  end

  it 'can covert different numerals to numbers' do
    expect(conversion.roman_to_int(case2)).to eq(58)
  end

  it 'can handle numeral prefixes' do
    expect(conversion.roman_to_int(case3)).to eq(1994)
  end

  it 'can handle complex numeral prefixes' do
    expect(conversion.roman_to_int(case4)).to eq(999)
  end
end
