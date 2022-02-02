"""
There are 14 things

1 is a chilli(the last one)

There are two players, and one must draw 1-4 things out of the basket of 14 things when it is their turn. 
Whoever picks up the last one(the chili) loses.


"""
Basket = 13

def turn(i):
    Basket = 13

    if i > 0 and i < 5:
        Basket -= i
    else:
        Basket = 13
    print(Basket)






print('Choose your number  1-4')

turnNum = input('')

turn(int(turnNum))

print(Basket)
