class Solution:
    def isValid(self, s: str) -> bool:
        stack=[]
        match = {'(': ')', '{': '}', '[':']'}

        for ch in s :
            if ch in match:
                stack.append(ch)
            else :
                if not stack :
                    return False 
                if match[stack[-1]] != ch:
                    return False
                stack.pop()

        return len(stack) == 0 