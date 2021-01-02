from solution import *

def test_case_0():
    case_0 = Solution(3, [1,2,3])
    case_0.bubble_sort()

    assert case_0.a == [1, 2, 3]
    assert case_0.total_swaps == 0

def test_case_1():
    case_1 = Solution(3, [3, 2, 1])
    case_1.bubble_sort()

    assert case_1.a == [1, 2, 3]
    assert case_1.total_swaps == 3