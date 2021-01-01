class Solution
    attr_reader :a, :total_swaps

    def initialize(n, a)
      @n = n
      @a = a
    end

    def swap_round
        i = 0
        @num_swaps = 0
        while i < @n - 1 do
            if @a[i] > @a[i + 1] then
                @a[i], @a[i + 1] = @a[i + 1], @a[i]
                i += 1
                @num_swaps += 1
            else
                i += 1
            end
        end
    end

    def bubble_sort
        @total_swaps = 0
        until @num_swaps == 0 do
            swap_round
            @total_swaps += @num_swaps
        end    
    end
end