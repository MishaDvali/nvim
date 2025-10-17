n = 1
for i in range(1_000_000_000):
    if i % n == 0:
        n *= 2
        print(i)
