# encoding: utf-8

module UI
    module Pages
        class UolPage < SitePrism::Page
            set_url '/'
            element :logo_vinte_anos, '.sprite.sprite-geral.logo-header-20anos'
            element :link_economia, '.menu-uol-estacao.bg2-hover.canal-economia'
        end
    end
end

