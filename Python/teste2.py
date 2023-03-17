import time


def contador(i):
    print(i)
    time.sleep(1)
    if i < 10:
        contador(i + 1)


contador(1)
