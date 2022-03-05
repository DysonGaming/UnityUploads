bakt = 2
oldbakt = 2
run = 1440

while run > 0:
    bakt = bakt + oldbakt*2
    oldbakt = bakt
    run -= 20

print(bakt)

print(bakt * 0.000000000001)