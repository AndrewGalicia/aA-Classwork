require_relative "./Piece.rb"
require_relative "./Slidable.rb"

class Rook < Piece
    include Slidable

    def symbol
        # symbol = 
    end

    protected

    def move_dirs
        self.horizontal_dirs
    end


end
