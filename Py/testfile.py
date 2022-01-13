import random
alfabetet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
listOfCombos = []
for i in range(1, 6):
    comboNum = i
    random.shuffle(alfabetet)
    listOfCombos.append(alfabetet)
print(listOfCombos)

