class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        " #{SYMBOL} "
    end

    def empty?
        return true if  self == NullPiece.instance
        false
    end

    def move_into_check?(end_pos)
        duped_board = @board.dup
        duped_board.move_piece(@pos, end_pos)
        duped_board.in_check?(@color)
    end

    def valid_moves
        moves.reject { |move| move_into_check?(move)  }
    end

    def pos=(val)
        @pos = val

    end


    # def to_s #returns a string representation of the piece    



    # def empty? #is current position empty?
    # end

    # def valid_moves #give an array of valid moves that this piece can do

    # end

    # def pos=(val) #changes the position of the instance
    # end

    # SYMBOL = #color

    # def move_into_check?(end_pos) #checks to see if it one move 

    # end

end