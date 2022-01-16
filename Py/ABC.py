alfabetet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

keyinc = 3
keydec = -3
iselect = 1

# Hvis man er i slutningen af alfabet, skal man starte ved A
def cryLetter(b,i):

    p = alfabetet.index(b)
    # check
    if p + i >= 26:
        p = p - 26

    Alpha2 = alfabetet[0::3] # ['A', 'D', 'G', 'J', 'M', 'P', 'S', 'V', 'Y']

    if b in Alpha2:
        iselect += 1
        print(iselect)

    else: print("error occured")

    return alfabetet[p + i]
    
# selve inkrypteringen
def incrypt(i, txt):
    crymsg = ""

    for b in txt:
        if b in alfabetet:
            crymsg += cryLetter(b,i)
        else: 
            crymsg += b
    return crymsg

# Sender den inkrypterede besked og gemmer den i en variabel.
def start():

    print('Type your pre-incryption message')
    msg = input("")
    msg = msg.upper()
    print(incrypt(keyinc,msg))
start()

# Decrypter den modtagede besked HVIS bruger skriver YES
print('decrypt a message?: Type YES / NO')
Check = input("")
if "YES" in Check:
    print('Type your encrypted message')
    msg2 = input("")
    msg2 = msg2.upper()
    print(incrypt(keydec,msg2))
elif "NO" in Check:
    print('You have chosen NOT to decrypt...')
    start()
else:
    print('You have typed an ivalid command. Try again.')
    start()
# 26 pr 26 pr 26 + ombytning

