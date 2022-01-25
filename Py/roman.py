
"""
Authors: KaspeDKK, Alfred

filename: roman.py

"""

def convertToInt(s):
    
    romanNums = {

        # Standard Parameters
        'I':1,
        'V':5,
        'X':10,
        'L':50,
        'C':100,
        'D':500,
        'M':1000,

        # Special Parameters
        'IV':4,
        'IX':9,
        'XL':40,
        'XC':90,
        'CD':400,
        'CM':900
    }
    i = 0
    num = 0

    while i < len(s):
        # construct msg
        if i+1<len(s) and s[i:i+2] in romanNums:
            num+=romanNums[s[i:i+2]]
            i+=2
        else:
            # print selected msg(i)
            num+=romanNums[s[i]]
            i+=1
    return num

# Front end interaction
print('Select Roman Number')
msg = input('')
print("Number is " + str(convertToInt(msg.upper())))