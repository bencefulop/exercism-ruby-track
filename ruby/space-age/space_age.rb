class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    ((((@seconds.to_f / 60).floor(2) / 60).floor(2) / 24).floor(2) / 365).floor(2)
  end

  def on_mercury
    (on_earth / 0.2408467).floor(2)
  end
end