

module Slidable
    HORIZONTAL_VETICAL_DIRS = [ [0,1], [0,-1], [1,0], [-1,0] ] # right, left, up, down
    DIAGONAL_DIRS = [ [1,1], [-1,-1], [-1, 1], [1, -1], ] # up right, down left, up left, down right 

    def horizontal_dirs
        HORIZONTAL_VETICAL_DIRS
    end

    def diagonal_dirs   
        DIAGONAL_DIRS
    end

    def moves
        moves = []
        move_dirs.each do |dir|
            moves += grow_unblocked_moves_in_dir(dir[0], dir[1])
        end
    end

    private

    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        # returns an array of positions that are unblocked in the direction of dx, dy
        # until it hits a piece or the edge of the board
        moves_arr = []
        pos_x, pos_y = @pos
        new_pos = [pos_x + dx, pos_y + dy]
        while new_pos.all? { |coord| coord.between?(0,7) } && (@board[new_pos].empty? || @board[new_pos].color != @color)
            
            moves_arr << new_pos
            new_pos = [pos_x + dx, pos_y + dy]
        end

        moves_arr
    end 

    # implementing on the subclasses, returns the direction of the piece.

    # def valid_moves
    #     # moves.select { |move| move.empty}
    #     valid_moves = []
    #     pos_x, pos_y = @pos
    #     MOVES.each do |(dx,dy)|
    #         new_pos = [pos_x + dx, pos_y +dy]
    #         if new_pos.all? do |coord| 
    #             coord.between?(0,7) && (board[coord].empty? || #something about colors ) #also .empty? == true, cannot be your own color, and can be a different color but nothing behind it. 
    #                 valid_moves << new_pos
    #         end
    #     end
    #     valid_moves
    # end

end