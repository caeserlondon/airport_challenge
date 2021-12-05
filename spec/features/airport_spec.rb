require './lib/airport'

describe Airport do
	# it { is_expected.to respond_to(:land).with(1).argument } first scafolding code

	subject(:airport) { described_class.new(20) }

	it 'instruct a plane to land' do
		expect(airport).to respond_to(:land).with(1).argument
	end

	it 'instruct a plane to take off' do
		expect(airport).to respond_to(:take_off).with(1).argument
	end
	it 'does not allow landing when at capacity' do
		plane = double :plane
		20.times { airport.land(plane) }
		expect {
			airport.land(plane)
		}.to raise_error 'cannot land plane: airport full'
	end
end
