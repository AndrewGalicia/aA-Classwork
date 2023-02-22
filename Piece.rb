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
        self == Null_piece
    end

    def valid_moves
        # moves.select { |move| move.empty}
        valid_moves = []
        pos_x, pos_y = @pos
        MOVES.each do |(dx,dy)|
            new_pos = [pos_x + dx, pos_y +dy]
            if new_pos.all? do |coord| 
                coord.between?(0,7) && (board[coord].empty? || #something about colors ) #also .empty? == true, cannot be your own color, and can be a different color but nothing behind it. 
                    valid_moves << new_pos
            end
        end
        valid_moves
    end

    def pos=(val)
        @pos = val
    end

    update


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