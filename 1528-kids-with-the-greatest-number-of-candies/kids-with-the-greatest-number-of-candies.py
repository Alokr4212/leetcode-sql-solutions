class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        length = max(candies)
        L = []
        for i in candies:
            if i + extraCandies >= length:
                L.append(True)
            else:
                L.append(False)
        return L