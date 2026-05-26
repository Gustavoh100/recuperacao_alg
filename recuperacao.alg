algoritmo "recuperação"

var
  op : inteiro
  reservas : matriz [1..10 ,1..4 ] de caractere
  reservas2 : matriz [1..10 ,1..4 ] de inteiro
  q_r : inteiro
  nome: caractere
  pessoas: inteiro
  data : caractere
  estado_status : caractere
  i , coluna : inteiro
  nome_busca , nome_busca2: caractere
  achou:  logico
  total_ativos : inteiro
inicio
  op <- 0
  q_r<- 0
  enquanto op <> 6 faca

    escreval ("############# bem vindo #############")
    escreval (" 1 - resgistrar-se ")
    escreval (" 2 - cancelar reserva pelo nome  ")
    escreval (" 3 - buscar pelo nome ")
    escreval (" 4 listar todas as reservas ")
    escreval (" 5 exibir total de reservas ativas  ")

    leia(op)

    se op = 1 entao
      se q_r > 10 entao
        escreval(" limite ultrapassado ")
      senao
        q_r <- q_r + 1
        escreval("########## cadastra-se ##########")
        escreval (" nome : ")
        leia(nome)
        reservas[q_r,1]<-nome
        escreval (" quantidades de pessoas : ")
        leia(pessoas)
        reservas2[q_r,2]<-pessoas
        escreval (" data : ")
        leia(data)
        reservas[q_r,3]<-data

        reservas[q_r,4 ]<- "ativo"
      fimse
    fimse
    se op = 2 entao
      se q_r = 0 entao
        escreval ("Nenhuma reserva cadastrada")
      senao
        achou <- falso
        escreval ("Digite o nome da pessoa para cancelar a reserva : ")
        leia (nome_busca)
        para i de 1 ate q_r passo 1 faca
          se (reservas[i, 1] = nome_busca) e (reservas[i, 4] = "ativo") entao
            achou <- verdadeiro
            reservas[i, 4] <- "cancelada"
            escreval ("Consulta cancelada para a pessoa: ", nome_busca)
          fimse
        fimpara
        se achou = falso entao
          escreval ("pessoa nao encontrado ou reserva ja cancelada")
        fimse
      fimse
    fimse
    se op = 3 entao
      se q_r = 0 entao
        escreval ("Nenhuma consulta cadastrada")
      senao
        achou <- falso
        escreval ("Digite o nome para buscar: ")
        leia (nome_busca2)
        escreval ("---------- RESERVAS ENCONTRADAS ----------")
        para i de 1 ate q_r passo 1 faca
          se  reservas[i, 1] = nome_busca2 entao
            achou <- verdadeiro
            escreval ("NOME : ", reservas[i, 1], " | PESSOAS: ", reservas2[i, 2], " | DATA: ", reservas[i, 3], " | Status: ", reservas[i, 4])
          fimse
        fimpara
        se achou = falso entao
          escreval ("Nenhuma reservas encontrada para essa pessoa")
        fimse
        escreval ("-------------------------------------------")
      fimse
    fimse
    se op = 4 entao
      se q_r = 0 entao
        escreval (" nenhuma reserva cadastrada ")
      senao
        escreval("     ############## lista de reservas ###############")
        escreval ("    nome /   pessoas   /   data    /  status   ")
        para i de 1 ate q_r passo 1 faca
          escreval( reservas[i , 1]"           "  reservas2[i,2 ] "           "reservas[i,3] "          "  reservas[i,4] )
        fimpara
      fimse
    fimse
    se op = 5 entao
      se q_r = 0 entao
        escreval(" nenhuma reserva "  )
      senao
        total_ativos <- 0
        para i de 1 ate q_r passo 1 faca
          se reservas[i,4] = "ativo" entao
            total_ativos<- total_ativos + 1
          fimse
        fimpara
        escreval (" total de ativas sao :"  ,total_ativos)
      fimse
    fimse
  fimenquanto
fimalgoritmo
