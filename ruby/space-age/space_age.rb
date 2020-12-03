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

  def on_jupiter
    # (on_earth / 11.862615).floor(3)
    (on_earth / 11.862615).round(2)
    # either of these work
  end

  def on_saturn
    (on_earth / 29.447498).floor(2)
    # (on_earth / 29.447498).round(2)
  end

  def on_uranus
    (on_earth / 84.016846).floor(2)
  end

  def on_neptune
    # (on_earth / 164.79132).floor(2)
    (on_earth / 164.79132).round(2)
  end
end