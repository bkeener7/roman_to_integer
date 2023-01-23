RSpec.describe RomanConversion do
  let(:conversion) { RomanConversion.new }

  it 'exists' do
    expect(conversion).to be_an_instance_of(RomanConversion)
  end
end
