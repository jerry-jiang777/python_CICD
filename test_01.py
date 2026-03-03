from tqdm import tqdm

sum = 0
for i in tqdm(range(1000)):
    sum += i

print(sum)
