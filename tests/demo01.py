def add(a, b):
    result = a + b
    return result


def subtract(a, b):
    result = a - b
    return result


if __name__ == "__main__":
    res = add(1, 2)
    print(f"res = {res}")
    
    res_subtract = subtract(5, 3)
    print(f"res_subtract = {res_subtract}")