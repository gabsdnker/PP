from time import sleep
def contador(n):
    if n == 1:
        return n
    print (n);
    sleep(1)
    return contador(n-1)

def main():
    print(contador(5));
    print("BOOM")

if __name__== '__main__':
    main()
