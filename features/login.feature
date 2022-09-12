#language:pt

 Funcionalidade: Login na Droga Raia

  Cenario: Usuario realizando Login com E-mail
    Dado que eu esteja na pagina de login
    Quando eu faço login com meus dados
    Entao devo ser autenticado com sucesso

    Cenario: Usuario realizando Login com CPF
      Dado que eu esteja na pagina de login
      Quando eu faço login com meu CPF
      Entao devo ser autenticado com sucesso