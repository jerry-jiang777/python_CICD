from tqdm import tqdm


a = 100
sum = 0
for i in tqdm(range(a)):
    sum += i

print(sum)
