class EmptyNode
  attr_accessor :data

  def initialize(data=nil)
    @data = data
  end

  def include?(*)
    false
  end

  def insert(*)
    false
  end
  alias_method :<<, :insert

  # def inspect
  #   "{}"
  # end
end

class Bst
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data  = data
    @left  = EmptyNode.new
    @right = EmptyNode.new
  end

  def insert(v)
    case data <=> v
    when 1, 0 then insert_left(v)
    when -1 then insert_right(v)
    end
  end
  alias_method :<<, :insert

  def each
    left.select {|y| yield y } unless left.data == nil
    yield data
    right.select {|y| yield y } unless left.data == nil
  end

  # def include?(v)
  #   case data <=> v
  #   when 1 then left.include?(v)
  #   when -1 then right.include?(v)
  #   when 0 then true # the current node is equal to the data
  #   end
  # end

  # def inspect
  #   "{#{data}:#{left.inspect}|#{right.inspect}}"
  # end

  # def each
  #   # yield self.to_a
  #   case data <=> v
  #   when 1 then left.include?(v)
  #   when -1 then right.include?(v)
  #   when 0 then true # the current node is equal to the data
  #   end
  # end

  def to_a
    left.to_a + [data] + right.to_a
  end

  private
  def insert_left(v)
    left.insert(v) || self.left = Bst.new(v)
  end

  def insert_right(v)
    right.insert(v) || self.right = Bst.new(v)
  end
end