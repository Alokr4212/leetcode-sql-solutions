class Solution(object):
    def mergeAlternately(self, word1, word2):
        result = ""
        a , l = len(word1), len(word2)
        i = 0
        while i < a and i < l:
            result += word1[i] + word2[i]
            i += 1
        return result + word1[i:] + word2[i:]
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """

        