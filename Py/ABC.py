import time
import random
alfabetet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
# creates random keys for the incryption so you get a different result if you wipe the incrypt file
data = open("encrypt.txt", "a")
x=0
while (x<=3):
    for _ in range(2):
        cun = random.randint(1, 26)
        data.write(str(cun))
        data.write("\n")
        x=x+3

keys = open("encrypt.txt", "r")

key1 = int(keys.readline())
key2 = int(keys.readline())
key3 = int(keys.readline())

keyinc = key1
keyinc2 = key2
keyinc3 = key3
keydec = -abs(key1)
keydec2 = -abs(key2)
keydec3 = -abs(key3)

# IF at the end go back to the start of the alfabet
def cryLetter(b,i):
    p = alfabetet.index(b)
    # incrypt
    if p + i >= 26:
        p = p - 26
    return alfabetet[p + i]
    
# incrypterings processen
def incrypt(i, txt):
    crymsg = ""

    for b in txt:
        if b in alfabetet:
            crymsg += cryLetter(b,i)
        else: 
            crymsg += b
    return crymsg

# incrypts and saves the message
while True:
    try:
        print('Type your message')
        msg = str(input(""))
        msg = msg.upper()
        crmsg=(incrypt(keyinc,msg))
        crmsg2=(incrypt(keyinc2, crmsg))
        crmsg3=(incrypt(keyinc3, crmsg2))
        print(crmsg3)
        break
    except:
        print()


crmsg = (incrypt(keyinc, msg))
crmsg2 = (incrypt(keyinc2, crmsg))
crmsg3=(incrypt(keyinc3, crmsg2))
# Decrypt if user says YEs
while True:
    print('To decrypt: Type yes')
    Check = input("")
    if "yes" in Check:
        print('Type your encrypted message')
        msg2 = input("")
        msg2 = msg2.upper()
        demsg=(incrypt(keydec,crmsg3))
        demsg2=(incrypt(keydec2, demsg))
        demsg3=(incrypt(keydec3, demsg2))
        print(demsg3)
        break
    elif "NO" in Check:
        print('You have chosen NOT to decrypt...')
        break
    else:
        print('You have typed an ivalid command. Try again.')
        continue



# 26 pr 26 pr 26 + ombytning






