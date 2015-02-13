class BinarySearch

  attr_reader :list

  def initialize(array)
    raise ArgumentError if array != array.sort
    @list = array
  end

  def search_for(n)
    raise RuntimeError if !list.include?(n)
    list.index(n)
  end

  def middle
    list.length / 2
  end

end