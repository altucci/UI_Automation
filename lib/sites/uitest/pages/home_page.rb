require 'rubygems'
require 'taza/page'

module Uitest
  class HomePage < ::Taza::Page

    element(:search_bar) { browser.text_field(:id => "lst-ib") }
    element(:search_button) { browser.element(name: 'btnK') }

  end
end
