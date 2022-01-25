x = 13
PlayerSide = 0

def func(i):
    allow = [1,2,3]
    if i in allow:
        x = 13 - i
    else: 
        print('Type number from 1-3')
    return x


while x != 0:
    if (PlayerSide % 2) == 0:

        print('Player 1 - Type your num')
        num = input('')
        print(func(int(num)))
        print (x)
        func(num)
        PlayerSide += 1
    else:
        print('Player 2 - Type your num')
        num = input('')
        print(func(int(num)))
        print (x)
        func(num)
        PlayerSide += 1

