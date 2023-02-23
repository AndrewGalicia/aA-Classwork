module Stepable
    def moves
        moves = []
        moves_diffs.each do |dx, dy|
            moves << [dx, dy]
        end

        moves
    end

    


    private
    def move_diffs
        raise NotImplementedError
    end




    def moves
        moves = []
        move_diffs.each do |dx, dy|
            moves << [dx, dy]
       end
         moves
    end

    private
    def move_diffs
        raise NotImplementedError
    end
    
end