require 'minitest/autorun'
require 'minitest/pride'
require './exceptions'

class ExceptionsTest < Minitest::Test

    def setup
        @case_0 = Exceptions.new('3')
        @case_1 = Exceptions.new('za')
        @case_2 = Exceptions.new('3134')
        @case_3 = Exceptions.new('abc')
    end

    def test_case_0
        assert_equal 3, @case_0.result
    end

    def test_case_1
        assert_equal 'Bad String', @case_1.result
    end

    def test_case_2
        assert_equal 3134, @case_2.result
    end

    def test_case_3
        assert_equal 'Bad String', @case_3.result
    end
end
