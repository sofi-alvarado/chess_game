class Rook
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    color == 'white' ? "\u2656" : "\u265C"
  end
end