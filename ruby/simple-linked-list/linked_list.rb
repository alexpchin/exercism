# Reference: 
# 1. http://matt.weppler.me/2013/08/14/implementing-a-linked-list-in-ruby.html

class Element
  attr_reader :datum, :next

  def initialize(datum, _next)
    @datum = datum
    @next  = _next
  end

  def reverse
    # Must be @next as next is a reserved word in Ruby
    if @next
      Element.new(@next.datum, Element.new(datum, @next.reverse))
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
      # Simple catch for if next is nil
      [instance.datum] + self.to_a(instance.next)
    else
      []
    end 
  end

  # Ensure range is an array
  def self.from_a(array_or_range)
    Array(array_or_range).reverse.reduce(nil) do |next_element, datum|
      Element.new(datum, next_element)
    end
  end

end