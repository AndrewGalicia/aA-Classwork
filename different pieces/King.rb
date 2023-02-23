require_relative "./Piece.rb"
require_relative "./Stepable.rb"

class King < Piece
    include Stepable

    def symbol
        # symbol = 
    end

    protected

    def move_diffs
        KING_MOVES = [[1,0],[1,1],[1,-1],[-1,0],[-1,1],[-1,-1],[0,1],[0,1]]
    end

end