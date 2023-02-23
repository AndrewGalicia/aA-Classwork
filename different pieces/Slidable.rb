

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
       self.move_dirs.each do |dir|
        moves << self.grow_unblocked_moves_in_dir(dir)
       end

        moves.flatten 
    end

    private

    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dx, dy)
       
        moves_arr = [] 
        pos_x, pos_y = @pos
        new_pos = [pos_x + dx, pos_y +dy] 
        while new_pos.all? {|coord| coord.between(0,7)} && self.color != @board[new_position].color
            moves_arr << new_pos
            break if !@board[new_pos].empty?  
            pox_x, pos_y = new_pos
            new_pos = [pos_x + dx, pos_y + dy]    
        end

        moves_arr
    end 
end