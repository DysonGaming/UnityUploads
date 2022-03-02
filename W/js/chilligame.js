window.onload=function() {

    const options = [1,2,3];
    var choice = 0;
    var basket = 12;

    var button1 = document.getElementById('Button1');
    var button2 = document.getElementById('Button2');
    var button3 = document.getElementById('Button3');

    buttonStart.onclick = function() {

        var choice = 0;
        var basket = 12;
        StartGame();
  
    };
    
    function StartGame(choice,basket) {
    
        while (basket != 0) {

            //alert('It is now your turn! Choose to take either 1, 2 or 3 items');
            //choice = USER CHOICE

            button1.onclick = function() {

                var choice = 1;
          
            };
        
            button2.onclick = function() {
        
                var choice = 2;
          
            };
        
            button3.onclick = function() {
        
                var choice = 3;
          
            };
    
            if (parseInt(choice) in options) {
    
                remainder = (parseInt(basket)-parseInt(choice)).toString();
                basket = parseInt(remainder);
                
                //alert("You have chosen to take " + choice + " from the basket. There are now " + remainder + " items left");
                

            } else {
    
                //alert("Number is NOT allowed"); 
    
            };
    
            if (basket != 0) {
    
                Aiturn = 4 - parseInt(choice);
                basket = basket - Aiturn;
                //alert("The AI has taken "+ Aiturn.toString() + " from the basket. There are now " + basket.toString() + " items left");
                
    
            };
    
        };
    
    };

};




/*
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

restart()*/