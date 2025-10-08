class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
       Length = max(candies)
       L = []
       for i in candies:
        if i + extraCandies >=Length:
            L.append(True)
        else:
            L.append(False)
       return L