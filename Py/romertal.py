Romertxt = []

def omkodciffer(c):
    if c == "I":
        return 1
    if c == "V":
        return 5
    if c == "X":
        return 10
    if c == "L":
        return 50
    if c == "C":
        return 100
    if c == "D":
        return 500
    if c == "M":
        return 1000

def sentence(i, txt):

    for i in txt:
        

txt = input("Indtast Romertal")

print(len(txt))

print(omkodciffer(txt))
