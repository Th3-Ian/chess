#../lib/pieces/pawn.rb

class Pawn
  attr_reader :color, :first_turn, :symbol

  def initialize(color)
    @color = color
    @first_turn = true
    if @color == "black"
      @symbol = "♟"
    elsif @color == "white"
      @symbol = "♙"
    end
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

  def movement(start, board)
    end_position = move_list.map { |move| start[0] + move[0], start[-1] + move[-1] }
    end_position = @symbol
  end



end