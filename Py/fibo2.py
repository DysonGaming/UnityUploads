# sætter en liste med (x) pladser med -1 som værdi i hver.
res = [-1] * 1000

# Sætter 1. og 2. plads til 0 og 1.
res[0] = 0
res[1] = 1

# definerer funktion
def fibo(n):
    # Tjekker om resultatet i listen IKKE er -1, og stopper hvis det er SANDT
    if res[n] != -1:
        return res[n]
    # Tager summen af de to foregående resultater (dvs fibo's tal)
    res[n] = fibo(n-2) + fibo(n-1)
    return res[n]

# printer det bestemte tals fibotal
print(fibo(999))
