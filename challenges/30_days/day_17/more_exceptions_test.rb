require 'minitest/autorun'
require 'minitest/pride'
require './more_exceptions'

class MoreExceptionsTest < Minitest::Spec

    def setup
        @calculator = Calculator.new
    end

    def test_case_0
        assert_equal 243, @calculator.power(3, 5)
    end

    def test_case_1
        assert_equal 16, @calculator.power(2, 4)
    end

    def test_case_2
        error = assert_raises RangeError do
            @calculator.power(-1, -2)
        end
        assert_equal error.message, 'n and p should be non-negative'
    end

    def test_case3
        error = assert_raises RangeError do
            @calculator.power(-1, 3)
        end
        assert_equal error.message, 'n and p should be non-negative'
    end
end