#../lib/pieces/pawn.rb

class Pawn
  attr_reader :color, :first_turn, :symbol

  def initialize(color)
    @color = color
    @first_turn = true
    @symbol = "♟" if @color == "white"
    @symbol = "♙" if @color == "black"
    @mov = 1 if @color == "white"
    @mov = -1 if @color == "black"
  end

  def move_list
    case color
    when @color == "white" 
      [1, 0]
    when @color == "black"
      [-1, 0]
    end
  end

  def first_move
    case color 
    when @color == "white"
      [2, 0]
    when @color == "black"
      [-2, 0]
    end
  end

  def attack_moves
    case color
    when @color == "white"
      [[1, -1], [1, 1]]
    when @color == "black"
      [[-1, 1], [-1, -1]]
    end
  end

  def self.movement(board, pos = @pos)
    p pos[0]
    p pos[1]
    end_position = board["#{pos[0]}, #{pos[1] + 1}"]
    end_position = @symbol
    pos = "  "
  end


end