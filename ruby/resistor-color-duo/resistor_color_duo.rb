class ResistorColorDuo
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value(colors)
    color_code = ""
    colors[0..1].each { |color| color_code += COLORS.index(color).to_s }
    color_code.to_i
  end
end
