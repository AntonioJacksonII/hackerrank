@n = gets.strip.to_i
@a = gets.strip
@a = @a.split(' ').map(&:to_i)

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

@total_swaps = 0

until @num_swaps == 0 do
    swap_round
    @total_swaps += @num_swaps
end

puts "Array is sorted in #{@total_swaps} swaps."
puts "First Element: #{@a[0]}"
puts "Last Element: #{@a[-1]}"