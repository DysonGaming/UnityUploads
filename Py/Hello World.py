def rev(z):
    navn = ""
    for i in range(len(z)-1, -1, -1):
        navn = navn + z[i]
    return navn

print("indtast et ord ")
z=input("")

if z == rev(z):
    print(z + " ER et palindrom")
else: 
    print(z + " er IKKE et palindrom")