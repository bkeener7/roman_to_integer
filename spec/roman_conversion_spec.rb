RSpec.describe RomanConversion do
  let(:conversion) { RomanConversion.new }
  let(:case1) { 'III' }

  it 'exists' do
    expect(conversion).to be_an_instance_of(RomanConversion)
  end

  it 'can convert I numerals to numbers' do
    expect(conversion.roman_to_int('III')).to eq(3)
  end

  it 'can covert different numerals to numbers' do
    expect(conversion.roman_to_int('LVIII')).to eq(58)
  end
end
