result = 0
old = 1

Nr1 = input("1st Nr.")
nrX= input("1st to the power of X")
start = int(Nr1)
old = 1

for i in range(int(nrX)):

    old = start * old
    

print(old)