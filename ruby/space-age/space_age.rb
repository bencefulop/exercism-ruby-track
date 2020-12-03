# class SpaceAge
#   def initialize(seconds)
#     @seconds = seconds
#   end

#   # MAYBE REFACTOR WITH THE SEND METHOD?
#   # Set up kay/value pairs, or constants?
  
#   def on_earth
#     # 1_000_000_000 seconds = / 60 minutes /60 hours / 24 days / 365.25 years
#     (@seconds.to_f / 31_557_600).round(2)
#     # (@seconds.to_f / 60 / 60 / 24 / 365.25).round(2)
#     # ((((@seconds.to_f / 60) / 60) / 24) / 365.25).round(2)
#   end

#   def on_mercury
#     (on_earth / 0.2408467).floor(2)
#   end
 
#   def on_venus
#     (on_earth / 0.61519726).floor(2)
#   end

#   def on_mars
#     (on_earth / 1.8808158).floor(2)
#   end

#   def on_jupiter
#     # (on_earth / 11.862615).floor(3)
#     (on_earth / 11.862615).round(2)
#     # either of these work
#   end

#   def on_saturn
#     (on_earth / 29.447498).floor(2)
#     # (on_earth / 29.447498).round(2)
#   end

#   def on_uranus
#     (on_earth / 84.016846).floor(2)
#   end

#   def on_neptune
#     # (on_earth / 164.79132).floor(2)
#     (on_earth / 164.79132).round(2)
#   end
# end


# The above is not DRY (Don't repeat yourself) but with define_method we can make it DRY
# search for define_method here: https://www.toptal.com/ruby/ruby-metaprogramming-cooler-than-it-sounds

class SpaceAge

  EARTH_SECONDS = 31557600.freeze
  PLANETS  = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }.freeze

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def method_missing(method_name)
    # str = method_name.id2name
    planet_name = method_name.to_s.gsub!("on_", "").to_sym
    raise StandardError.new("#{planet_name} is not a valid planet") unless PLANETS[planet_name]

    @seconds / EARTH_SECONDS / PLANETS[planet_name]
  end

  # PLANETS.each do |key, value|
  #   define_method("on_#{key.to_s}") do
  #     @seconds / EARTH_SECONDS / value
  #   end
  # end
end
