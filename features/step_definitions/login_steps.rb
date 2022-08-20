Dado('que eu esteja na pagina de login') do
  login_page.load
end

Quando('eu faço login com meus dados') do
  login_page.fazer_login
end

Entao('devo ser autenticado com sucesso') do
  raise 'mensagem inválida' if page.has_text?('Olá Victor!') != true
end