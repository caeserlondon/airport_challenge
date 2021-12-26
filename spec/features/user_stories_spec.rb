describe 'user_stories' do
	# As an air traffic controller
	# So I can get passengers to a destination
	# I want to instruct a plane to land at an airport
	 it 'so planes can land at airports, instruct a plane to land' do
 		 airport = Airport.new(20)
 		 plane = Plane.new
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

	 it 'dose not allow planes to land when airport is full' do
 		 airport = Airport.new(20)
 		 plane = Plane.new
 		 20.times { airport.land(plane) }
 		 expect {
  			 airport.land(plane)
  		}.to raise_error 'cannot land plane: airport full'
 	end

	# As the system designer
	# So that the software can be used for many different airports
	# I would like a default airport capacity that can be overridden as appropriate

	# it ''
end
