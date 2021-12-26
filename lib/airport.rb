# frozen_string_literal: true
require './lib/weather_reporter'
class Airport
  def initialize(capacity, weather_reporter)
    @capacity = capacity
    @weather_reporter = weather_reporter
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
    @weather_reporter.stormy?
  end
end
