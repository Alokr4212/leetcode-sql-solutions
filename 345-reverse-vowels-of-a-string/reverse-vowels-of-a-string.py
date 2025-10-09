class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = [ch for ch in s if ch.lower() in 'aeiou']
        result = ''
        for ch in s:
            if ch.lower() in 'aeiou':
                result += vowels.pop()
            else:
                result += ch
        return result


        