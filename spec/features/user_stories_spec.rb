describe 'user_stories' do
	# As an air traffic controller
	# So I can get passengers to a destination
	# I want to instruct a plane to land at an airport
	 it 'so planes can land at airports, instruct a plane to land' do
 		 airport = Airport.new(20)
 		 plane = Plane.new
			 allow(airport).to receive(:stormy?).and_return false
 		 expect { airport.land(plane) }.not_to raise_error
 	end

	# As an air traffic controller
	# So I can get passengers on the way to their destination
	# I want to instruct a plane to take off from an airport

	 it 'so plane can take off from the airport, instruct a plane to take off' do
  	 airport = Airport.new(20)
  		plane = Plane.new
  		expect { airport.take_off(plane) }.not_to raise_error
  end

	# As an air traffic controller
	# To ensure safety
	# I want to prevent landing when the airport is full
	 context 'when airport is full' do
 	  it 'dose not allow planes to land' do
   		 airport = Airport.new(20)
   		 allow(airport).to receive(:stormy?).and_return false
  			 plane = Plane.new
   		 20.times { airport.land(plane) }
   		 expect {
    			 airport.land(plane)
    		}.to raise_error 'cannot land plane: airport full'
   	end
  end

# As an air traffic controller
# To ensure safety
# I want to prevent takeoff when weather is stormy
	 context 'when weather is stormy' do
 	  it 'does not allow plane to land' do
   		 airport = Airport.new(20)
   		 plane = Plane.new
   		 allow(airport).to receive(:stormy?).and_return true
   		 expect { airport.land(plane) }.to raise_error 'cannot land plane: weather is stormy'
   	end
  end
end
