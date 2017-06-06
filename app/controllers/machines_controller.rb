class MachinesController < ApplicationController
    def index
    end

    def raffle
        @total_array = Array.new
        1.upto(45) do |i|
            @total_array.push(i)
        end
        @selected = @total_array.sample(6)
        @selected = @selected.sort.to_s
        
        lot = Lottery.new
        lot.my_lotto = params[:my_lotto]
        lot.save
        
        @lottos = Lottery.all
        
        
    end

    def lotto
        @my_array = Array.new
        
        n = params[:my_input]
        n = n.to_i
        
        1.upto(n) do |i|
            @my_array.push(i)
        end
        
    @result_array = @my_array.sample(6)
        
    end
end
