require './lib/airport'

describe Airport do
	# it { is_expected.to respond_to(:land).with(1).argument } first scafolding block

	subject(:airport) { described_class.new }
	it 'instruct a plane to land' do
		expect(airport).to respond_to(:land).with(1).argument
	end
end
