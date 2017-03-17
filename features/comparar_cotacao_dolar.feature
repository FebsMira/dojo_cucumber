#language: pt
#uft-8

@uol
Funcionalidade: Comparar cotacao do dolar
	Eu como cliente quero comparar a cotacao do dolar 
	pesquisado no site do UOL no menu economia

	Contexto: Acessar pagina do uol
	Dado que estou na pagina inicial do google

	@verificar_cotacao_do_dolar
	Cenario: Comparar a cotacao do dolar pesquisado no site do UOL
		Dado que entrarei no site da "UOL"
		Quando validar que estou no site UOL
		E selecionar o link Economia
		Entao comparar se o valor do dolar e menor que "3,20"