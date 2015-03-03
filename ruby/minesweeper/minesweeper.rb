class Board

  MINE = "*"

  attr_accessor :boards

  def initialize(input)
    @boards = parse_boards(input)
  end

  def self.transform(inp)
    new(inp).assign_numbers
  end

  def assign_numbers
    forward
    backward
  end

  private
  def parse_boards(input)
    input.map do |row, i|
      row.chars
    end
  end

  def forward
    boards.each_with_index do |board, index|
      board.each_with_index do |square, i|
        if i == MINE
          boards[index][i+1] = 1 
        end
      end
    end  
  end

  def backward
    boards.reverse.each_with_index do |board, index|
      board.each_with_index do |square, i|
        if i == MINE
          boards[index][i+1] += 1
        end
      end
    end 
  end

  def down
  end

  def up
  end

end