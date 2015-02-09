class Element
  attr_reader :datum, :_next
  alias_method :next, :_next

  def initialize(datum, _next)
    @datum, @_next = datum, _next
  end

  def reverse
    if _next
      Element.new(_next.datum, Element.new(datum, _next.reverse))
    else
      self
    end
  end

  # Used for test_roundtrip
  def to_a
    self.class.to_a(self)
  end

  def self.to_a(instance)
    if instance
      # Simple solution for if next is nil
      [instance.datum] + self.to_a(instance.next)
    else
      []
    end
  end

  # Ensure range is an array
  # Reverse the array
  # next_element, datum = sum, value
  def self.from_a(array_or_range)
    Array(array_or_range).reverse.reduce(nil) do |next_element, datum|
      Element.new(datum, next_element)
    end
  end

end