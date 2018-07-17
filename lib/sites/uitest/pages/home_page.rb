require 'rubygems'
require 'taza/page'

module Uitest
  class HomePage < ::Taza::Page

    element(:search_bar) { browser.input(name: 'q') }
    element(:search_button) { browser.element(name: 'btnK') }

  end
end
