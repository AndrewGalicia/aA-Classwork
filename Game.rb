require_relative "./Board.rb"
# require_relative "./Display.rb"

# chess game class
Class Game  
    def initialize
        @board = Board.new
        # @display = Display.new(@board)
        @current_player = :white
    end

    def play
        until @board.checkmate?(:white) || @board.checkmate?(:black)
            @board.move_piece(@current_player)
            switch_turn
        end
        puts "Checkmate!"
    end

    private


    def switch_turn
        @current_player = (@current_player == :white ? :black : :white)
    end
end

