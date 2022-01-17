import string
alphabet_string1 = string.ascii_lowercase
alphabet_listLOWER = list(alphabet_string1)

alphabet_string = string.ascii_uppercase
alphabet_listUPPER = list(alphabet_string)

def cryLetter(b,i):
    pUpper = alphabet_listUPPER.index(b)
    # incrypt
    if pUpper + i >= 26:
        pUpper = pUpper - 26
    return alphabet_listUPPER[pUpper + i]

def cryLetter(b,i):
    pLower = alphabet_listLOWER.index(b)
    # incrypt
    if pLower + i >= 26:
        pLower = pLower - 26
    return alphabet_listLOWER[pLower + i]


print(len(alphabet_listUPPER))

msg = input("")

if str.isupper(msg):
    print("upper")
else:
    print("Lower")

