#../lib/board.rb
require "./pieces/pawn.rb"

class Board
  attr_accessor :board

  def initialize()
    @board = Array.new(8) {Array.new(8, "   ")}
    place_pieces(place_pawns)
  end

  def display_board()
    row_let = ["A", "B", "C", "D", "E", "F", "G", "H"]
    @board.each_with_index do |row, ind|
      puts "│"
      puts "  │───────────────────────────────│"
      print "#{row_let[ind]} "
      row.each do |cell|
        print "│"
        print cell
      end
    end
    print "│"
    puts "\n  -───────────────────────-────────"
    print "    1   2   3   4   5   6   7   8 \n"
  end

  def place_pawns()
    { [1, 0] => Pawn.new("black"),
      [1, 1] => Pawn.new("black"),
      [1, 2] => Pawn.new("black"),
      [1, 3] => Pawn.new("black"),
      [1, 4] => Pawn.new("black"),
      [1, 5] => Pawn.new("black"),
      [1, 6] => Pawn.new("black"),
      [1, 7] => Pawn.new("black"),
      [6, 0] => Pawn.new("white"),
      [6, 1] => Pawn.new("white"),
      [6, 2] => Pawn.new("white"),
      [6, 3] => Pawn.new("white"),
      [6, 4] => Pawn.new("white"),
      [6, 5] => Pawn.new("white"),
      [6, 6] => Pawn.new("white"),
      [6, 7] => Pawn.new("white")  }
  end

  def place_big()
    { [0, 0] => Rook.new("black"),
      [0, 1] => Knight.new("black"),
      [0, 2] => Bishop.new("black"),
      [0, 3] => King.new("black"),
      [0, 4] => Queen.new("black"),
      [0, 5] => Bishop.new("black"),
      [0, 6] => Knight.new("black"),
      [0, 7] => Rook.new("black"),
      [7, 0] => Rook.new("white"),
      [7, 1] => Knight.new("white"),
      [7, 2] => Bishop.new("white"),
      [7, 3] => Queen.new("white"),
      [7, 4] => King.new("white"),
      [7, 5] => Bishop.new("white"),
      [7, 6] => Knight.new("white"),
      [7, 7] => Rook.new("white")  }
  end

  def place_pieces(piece)
    piece.each { |pos, sym| @board[pos.first][pos.last] = " #{sym.symbol} " }
  end

  Pawn.movement([1, 1], @board)
end

new_game = Board.new
new_game.display_board