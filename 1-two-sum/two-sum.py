class Solution(object):
    def twoSum(self, nums, target):
        has_map = {}
        for i , num in enumerate(nums):
            result = target - num
            if result in has_map:
                return[has_map[result],i]
            has_map[num] = i


      
        