require_relative './Piece.rb'
require_relative '../Slidable.rb'
class Board
    attr_reader :rows
    def initialize 
        @rows = Array.new(8){Array.new(8)}
        #inserting generic piece instances 

        # each spot where an piece is initialized on render
        @rows[0][0] = Piece.new(:W, self, [0, 0])
        @rows[0][1] = Piece.new(:W, self, [0, 1])
        @rows[0][2] = Piece.new(:W, self, [0, 2])
        @rows[0][3] = Piece.new(:W, self, [0, 3])
        @rows[0][4] = Piece.new(:W, self, [0, 4])
        @rows[0][5] = Piece.new(:W, self, [0, 5])
        @rows[0][6] = Piece.new(:W, self, [0, 6])
        @rows[0][7] = Piece.new(:W, self, [0, 7])
        @rows[1].each.with_index{ |ele, i| @rows[1][i] = Piece.new(:W, self, [1, i])  }
        @rows[6].each.with_index{ |ele, i| @rows[6][i] = Piece.new(:B, self, [6, i])  }
        @rows[7][0] = Piece.new(:B, self,[7, 0]) 
        @rows[7][1] = Piece.new(:B, self,[7, 1])
        @rows[7][2] = Piece.new(:B, self,[7, 2])
        @rows[7][3] = Piece.new(:B, self,[7, 3])
        @rows[7][4] = Piece.new(:B, self,[7, 4])
        @rows[7][5] = Piece.new(:B, self,[7, 5])
        @rows[7][6] = Piece.new(:B, self,[7, 6])
        @rows[7][7] = Piece.new(:B, self,[7, 7])
    end
    
    def [](pos)
        row , col = pos 
        @rows[row][col]

    end

    def []=(pos, val)
        row , col = pos 
        @rows[row][col]  = val
    end
    


    def move_piece(start_pos, end_pos)
        if self[start_pos] == nil 
            raise 'Position empty'
        # elsif valid_pos?(end_pos) == false
        #     raise 'Not a valid position'
        else
            
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
            # self[end_pos].pos = end_pos
        end
    end

    private 
    
    # @null_piece = Null_piece.new 

    
end