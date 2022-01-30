"""
Author: KaspeDKK
Github: KaspeDKK

filename: chiGame.py

description:
    13 its & 1 chilli

    The loser is the one that ends up with the chilli

    You can take 1, 2 or 3 items each turn

    "AI" Algorithm:
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

def Break():
    print("") # empty line

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
            Break()
            print("You have chosen to take " + choice + " from the basket. There are now " + remainder + " items left")
            Break()
        else:
            print("Number is NOT allowed") 

        # AI plays if he hasnt won yet
        if basket != 0:

            # AI turn
            Aiturn = 4 - int(choice)
            basket = basket - Aiturn
            print("The AI has taken "+ str(Aiturn) + " from the basket. There are now " + str(basket) + " items left")
            Break()

#----------#
#   MENU   #
#----------# 

# RETURN TO MENU / is above actual start because this is called in the START section
def restart():
    print('To play again: Type START')
    menuInput = input("")    
    if menuInput.upper() == "START":
        print('Do you wish to read the rules? YES/NO')
        menuInput = input("")

        if menuInput.upper() == "YES":      
            print("There is a basket full of items and a chilli. Your goal is to NOT be left with the chilli at the end. You can take 1, 2 or 3 items from the basket for each turn. So can your opponent. The one that is left with the chilli loses. ")
            restart()
        elif menuInput.upper() == "NO":
            Start(choice,basket)
        else:
            print('Error: Unknown command. TRY AGAIN')
            restart()

# START of game

print("Welcome to the Chilli-Game.")
Break()

print("To start game: Type START")
menuInput = input("")

if menuInput.upper() == "START":
    print('Do you wish to read the rules? YES/NO')
    menuInput = input("")

    if menuInput.upper() == "YES":      
        print("There is a basket full of items and a chilli. Your goal is to NOT be left with the chilli at the end. You can take 1, 2 or 3 items from the basket for each turn. So can your opponent. The one that is left with the chilli loses. ")
        Start(choice,basket)
    elif menuInput.upper() == "NO":
        Start(choice,basket)
    else:
        print('Error: Unknown command. TRY AGAIN')
        restart()        
    
# END of game
print("You have the chilli, and have lost the Chilli-Game")
Break()
restart()


