require_relative "./Piece.rb"
require_relative "./Stepable.rb"

class Knight

    include Stepable

    def symbol
        # symbol = 
    end

    protected

    def move_diffs
        [[2,1], [2,-1], [-2,1], [-2,-1], [1,2], [1,-2], [-1,2], [-1,-2]]
    end

end