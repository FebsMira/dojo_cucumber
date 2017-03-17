Dado(/^que estou na pagina inicial do google$/) do
  google_page.load
end

Dado(/^que entrarei no site da "([^"]*)"$/) do |arg1|
  google_page.txt_pesquisa.set arg1
  google_page.bt_pesquisar.click
  click_link('UOL - O melhor conteúdo')
end
                                                                                                                
Quando(/^validar que estou no site UOL$/) do
  take_screenshot("Pagina Uol", "Passed")                                                                  
  uol_page.logo_vinte_anos.visible?
  
end                                                                                                             
                                                                                                                
Quando(/^selecionar o link Economia$/) do       
  uol_page.link_economia.click
end                                                                                                             

Entao(/^comparar se o valor do dolar e menor que "([^"]*)"$/) do |arg1|
  valor_a_comparar = arg1

  valor_a_comparar = valor_a_comparar.gsub(",", ".")

  dolar = uol_economia_page.cotacao_dolar

  valor_dolar = dolar.text.split(/ /).last

  valor_dolar = valor_dolar.gsub(",", ".")

  unless valor_dolar.to_f <= valor_a_comparar.to_f
  	fail "Dolar acima de " + valor_a_comparar
  end

end                                                                       
                                                                                                                
                                                                                                                