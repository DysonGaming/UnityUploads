Nr1 = input('Choose your first number (i.e "0.25")') # choose 1st nr
print("You have chosen " + Nr1)
print("") # break

method = input('Choose your method (i.e "+,-,*,/,^,_")') # choose operator
print("You have chosen to " + method)
print("") # break

Nr2 = input('Choose your first number (i.e "0.25")') # choose 2nd nr
print("You have chosen " + Nr2)
print("") # break

result = 0

# Define methods/operators
def add ():
    result = int(Nr1) + int(Nr2)
    return result

def subtract ():
    result = int(Nr1) - int(Nr2)
    return result

def multiply ():
    result = int(Nr1) * int(Nr2)
    return result

def divide ():
    result = int(Nr1) / int(Nr2)
    return result

def power ():
    result = int(Nr1) ** int(Nr2)
    return result

def root ():
    result = 1
    return result

def equation ():
    result = 1
    return result

# find method/operator & print result
if method == "+":
    print("your result is " + str(add()))

if method == "-":
    print("your result is " + str(subtract()))

if method == "*":
    print("your result is " + str(multiply()))

if method == "/":
    print("your result is " + str(divide()))

if method == "^":
    print("your result is " + str(power()))

if method == "_":
    print("your result is " + str(root()))