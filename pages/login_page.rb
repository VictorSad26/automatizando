class LoginPage < SitePrism::Page
  set_url 'customer/account/login'

  element :email,                 '#emailCpf'
  element :senha,                 '#password'
  element :logar,                 "[data-qa='btn_signin']"

  def fazer_login
    email.set   'victor.sad@hotmail.com'
    senha.set   '437'
    logar.click
  end
end