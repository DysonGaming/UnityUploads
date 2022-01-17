"""
Forfatter: Kasper Melsing Bjoernholdt
Github: KaspeDKK

Filnavn: encryption.py

Beskrivelse: 
Denne enkryptering er baseret på cæsar enkrypteringen. 
Dog har denne TO forskellige nøgler som er illustreret nedenunder.

"""

# Opsæt alfabet og standardnøgle
alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
i = 3

# Hvis man er i slutningen af alfabet, skal man starte ved A
def cryLetter(b,i,mode):

    # Opdel alfabet i 2 dele
    Alpha1 = alphabet[0::2] # ['A', 'C', 'E', 'G', 'I', 'K', 'M', 'O', 'Q', 'S', 'U', 'W', 'Y']
    Alpha2= alphabet[1::2] # ['B', 'D', 'F', 'H', 'J', 'L', 'N', 'P', 'R', 'T', 'V', 'X', 'Z']

    if b in Alpha1:

        # Bestem 1. nøgle og sæt dekrypteringsnøgle
        i = 9
        if mode == 1:
            i = -i
        AlphaFinal = Alpha1

        # Tjek hvis kryptering overgår alfabetsum, og sæt tilbage hvis det gør
        p = Alpha1.index(b)
        if p + i >= 13:
            p = p - 13

    elif b in Alpha2:

        # Bestem 2. nøgle og sæt dekrypteringsnøgle
        i = 7
        if mode == 1:
            i = -i
        AlphaFinal = Alpha2

        # Tjek hvis kryptering overgår alfabetsum, og sæt tilbage hvis det gør
        p = Alpha2.index(b)
        if p + i >= 13:
            p = p - 13

    else:
        print("error occured")

    return AlphaFinal[p + i]
    
# klargør sætning
def encrypt(i, txt,mode):
    crymsg = ""

    for b in txt:
        if b in alphabet:
            crymsg += cryLetter(b,i,mode)
        elif b in alphabet: 
            crymsg += cryLetter(b,i,mode)
        else:
            crymsg += b
    return crymsg

# Sender den inkrypterede besked og gemmer den i en variabel.
def startProcess():

    print('Type your pre-encryption message')
    msg = input("")
    msg = msg.upper()
    mode = 0
    print("Encrypted message: "+encrypt(i,msg,mode))


""" MENU - Bruger sektion """

# START
def start():
    print('Hello User. Encrypt new message?: Type YES / NO ')
    Check = input("")
    if "YES" in Check:
        startProcess()
    elif "NO" in Check:
        print('exiting application...')
        exit() 
    else:
        print('You have typed an ivalid command. Script restarting.')
        startProcess()
start()

# Decrypter den modtagede besked HVIS bruger skriver YES
print('decrypt a message?: Type YES / NO')
Check = input("")
if "YES" in Check:
    print('Type your encrypted message')
    msgdec = input("")
    msgdec = msgdec.upper()
    mode = 1
    print("Decrytped message: "+encrypt(i,msgdec,mode))
    start()
elif "NO" in Check:
    start()
else:
    print('You have typed an ivalid command. Try again.')
    start()