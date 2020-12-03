class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

# 1_000_000_000 seconds = / 60 minutes /60 hours / 24 days / 365.25 years

  def on_earth
    ((((@seconds.to_f / 60) / 60) / 24) / 365.25).round(2)
  end

  def on_mercury
    (on_earth / 0.2408467).floor(2)
  end
 
  def on_venus
    (on_earth / 0.61519726).floor(2)
  end

  def on_mars
    (on_earth / 1.8808158).floor(2)
  end
end