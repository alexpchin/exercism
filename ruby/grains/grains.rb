class Grains

  attr_accessor :total

  def initialize
    # @one = 1
    # @two = 2
  end

  def square(n)
    SQUARES_TO_GRAINS["w#{n}"]
  end

  # def total()
  # end

  private
  # SQUARES             = (1...64).to_a
  # GRAINS              = SQUARES.map { |g| g ** (g**2)  }
  # SQUARES_TO_GRAINS   = SQUARES.zip GRAINS

end