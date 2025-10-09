class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        i = 0
        length = len(flowerbed)
        while i < length and n > 0:
            if flowerbed[i] == 0:
                prev_empty = (i == 0) or (flowerbed[i-1] == 0)
                next_empty = (i == length - 1) or (flowerbed[i+1] == 0)
                if prev_empty and next_empty:
                    flowerbed[i] = 1
                    n -= 1
                    i += 1
            i += 1
        return n <= 0
