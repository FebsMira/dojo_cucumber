# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module UI
  module Pages
    def google_page
      UI::Pages::GooglePage.new
    end
    def uol_page
      UI::Pages::UolPage.new
    end
    def uol_economia_page
      UI::Pages::UolEconomiaPage.new
    end
  end
end
