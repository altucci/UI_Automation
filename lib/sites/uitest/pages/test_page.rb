require 'rubygems'
require 'taza/page'

module Uitest
  class TestPage < ::Taza::Page

    element(:service_map) { browser.img(alt: 'serviceAreaMap.jpg') }

  end
end