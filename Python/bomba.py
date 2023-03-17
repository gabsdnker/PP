from time import sleep
def main():
    n= int(input("Digite a contagem: "))
    for i in range(n, 0,-1):
        sleep(1)
        print(i)
        if i==1:
          print("BOOMM")

if __name__== '__main__':
    main()
