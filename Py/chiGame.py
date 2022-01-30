"""
Author: KaspeDKK
Github: KaspeDKK

filename: chiGame.py

description:
    13 karameller & 1 chilli

    Den der har chillien taber

    man kan tage 1, 2 elelr 3 af gangen

    Round1 = AI takes 1
    Round2 = Player takes 1,2,3 and AI takes Remainders
    Round3 = Player takes 1,2,3 and AI takes Remainders
    Round4 = Player takes 1,2,3 and AI takes Remainders
    RoundFinal = player takes chilli
"""
#-----------------#
#   Game-Script   #
#-----------------# 

# Game variables
options = [1,2,3]
choice = 0
basket = 12 # with the pre-deducted value from the AI's first move'

# Script for the game
def Start(choice,basket):
    print('Game started. The AI has taken 1 item from the basket')

    while basket != 0:

        # Player turn
        print('It is now your turn! Choose to take either 1, 2 or 3 items')
        choice = input("")

        # checks if choice as INT is allowed
        if int(choice) in options:

            # respond to user (print)
            remainder = str(int(basket)-int(choice))
            basket = int(remainder)
            print("You have chosen to take " + choice + " from the basket. There are now " + remainder + "items left")
        else:
            print("Number is NOT allowed") 

        # AI plays if he hasnt won yet
        if basket != 0:

            # AI turn
            Aiturn = 4 - int(choice)
            basket = basket - Aiturn

#----------#
#   MENU   #
#----------# 

    # START

    print('Welcome to the Chilli-Game.')
    print('') # empty line

    print('To start game: Type START')
    menuInput = input("")

    if menuInput.upper() == "START":
        print('Do you wish to read the rules? YES/NO')
        menuInput = input("")

        if menuInput.upper() == "YES":      
            print("There is a basket full of items and a chilli. Your goal is to NOT be left with the chilli at the end. You can take 1, 2 or 3 items from the basket for each turn. So can your opponent. The one that is left with the chilli loses. ")
        else:
            Start(choice,basket)

    # RETURN TO MENU

    # END
    print("You lost")


