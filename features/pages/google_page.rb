# encoding: utf-8

module UI
    module Pages
        class GooglePage < SitePrism::Page
            set_url '/'
            element :txt_pesquisa, '#lst-ib'
            element :bt_pesquisar, '#_fZl'
            element :lbl_resultado_status, '#resultStats'
        end
    end
end

