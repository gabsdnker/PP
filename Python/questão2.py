pessoas = [({"nome": "John", "cidade": "Toronto"}),
                     ({"nome": "Sarah", "cidade": "Paris"}),
                     ({"nome": "Zack", "cidade": "Los Angeles"})]
contador = 0
for pessoa in pessoas:
    contador += 1
    if pessoa["nome"] == "Zack":
        print(pessoa["nome"], "mora em", pessoa["cidade"])
        break
