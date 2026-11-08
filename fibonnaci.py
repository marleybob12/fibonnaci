def main():
    n = int (input("Digite o numero entre 3 a 34 :"))
    while n <= 2 or n >= 35 :
        print("numero invalido")
        n = int(input("Digite o numero entre 3 e 34"))

    #validação
    penultimo : int  = 0
    ultimo :int =1

    while ultimo <= n :
        resultado =ultimo - penultimo
        if( resultado %2 == 0 ):
            print(resultado)
        proximo = ultimo + penultimo 

        penultimo = ultimo
        ultimo= proximo 

if (__name__ =="__main__" ):
    main()
    
