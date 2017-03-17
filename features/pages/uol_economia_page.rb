# encoding: utf-8

module UI
    module Pages
        class UolEconomiaPage < SitePrism::Page
            set_url '/'
            element :logo_vinte_anos, '.sprite.sprite-geral.logo-header-20anos'
            element :link_economia, '.menu-uol-estacao.bg2-hover.canal-economia'
            element :cotacao_dolar, :xpath, ".//*[@id='cambio']/ul/li[1]/p[2]"
        end
    end
end

