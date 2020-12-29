require 'minitest/autorun'
require 'minitest/pride'
require './solution'

class SolutionTest < Minitest::Test

    def test_push_character
        solution = Solution.new
        solution.push_character('a')
        solution.push_character('b')

        assert_equal ['a', 'b'], solution.stack
    end

    def test_enqueue_character
        solution = Solution.new
        solution.enqueue_character('a')
        solution.enqueue_character('b')

        assert_equal ['b', 'a'], solution.queue
    end

    def test_pop_character
        solution = Solution.new
        solution.push_character('a')
        solution.push_character('b')
        assert_equal ['a', 'b'], solution.stack
        
        assert_equal 'b', solution.pop_character
        assert_equal ['a'], solution.stack
    end

    def test_dequeue_character
        solution = Solution.new
        solution.enqueue_character('a')
        solution.enqueue_character('b')
        assert_equal ['b', 'a'], solution.queue

        assert_equal 'a', solution.dequeue_character
        assert_equal ['b'], solution.queue
    end
    
end