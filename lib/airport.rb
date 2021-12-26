# frozen_string_literal: true

class Airport
  def initialize(capacity)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise 'cannot land plane: airport full' if full?
    raise 'cannot land plane: weather is stormy' if stormy?

    @planes << plane
  end

  def take_off(_plane)
	   raise 'cannot take off plane: weather is stormy' if stormy?
  end

  private

  def full?
    @planes.length >= @capacity
  end

  def stormy?
    rand(1..6) > 4
  end
end
