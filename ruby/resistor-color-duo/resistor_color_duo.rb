class ResistorColorDuo
COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(colors)
    output = ""
    colors[0..1].each { |color| output += "#{COLORS.index(color)}" }
    output.to_i
  end
end
