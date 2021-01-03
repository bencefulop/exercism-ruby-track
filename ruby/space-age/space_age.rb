class SpaceAge

  YEAR_IN_EARTH_SECONDS = 31_557_600
  PLANETS  = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  PLANETS.each do |key, value|
    define_method("on_#{key}") do
      @seconds / YEAR_IN_EARTH_SECONDS / value
    end
  end
end