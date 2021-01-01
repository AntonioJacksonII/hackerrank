require 'minitest/autorun'
require 'minitest/pride'
require './solution'

class SolutionTest < Minitest::Test
    def test_case_0
        case_0 = Solution.new(3, [1, 2, 3])
        case_0.bubble_sort

        assert_equal case_0.a, [1, 2, 3]
        assert_equal case_0.total_swaps, 0
    end

    def test_case_1
        case_1 = Solution.new(3, [3, 2, 1])
        case_1.bubble_sort

        assert_equal case_1.a, [1, 2, 3]
        assert_equal case_1.total_swaps, 3
    end
end