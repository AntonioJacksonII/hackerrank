import sys

class Solution:
    def __init__(self, n, a):
        self.n = n
        self.a = a
        self.total_swaps = 0
        self.num_swaps = 0

    def swap_round(self):
        self.num_swaps = 0
        for x in range((self.n) - 1):
            if self.a[x] > self.a[x+1]:
                self.a[x], self.a[x+1] = self.a[x+1], self.a[x]
                self.num_swaps += 1

    def bubble_sort(self):
        self.num_swaps = 1
        while self.num_swaps != 0:
            self.swap_round()
            self.total_swaps += self.num_swaps
        else:
            print('Array is sorted in %s swaps.'%(self.total_swaps))
            print('First Element: %s'%(self.a[0]))
            print('Last Element: %s'%(self.a[-1]))