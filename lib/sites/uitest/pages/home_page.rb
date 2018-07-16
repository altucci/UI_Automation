require 'rubygems'
require 'taza/page'

module Uitest
  class HomePage < ::Taza::Page

    element(:username) { browser.element(id: 'username') }
    element(:password) { browser.element(id: 'password') }
    element(:login) { browser.element(id: 'SearchButton') }

    element(:footer) { browser.footer }
    element(:copyright) { footer.p(title: 'All Rights Reserved') }
    element(:view_service_map) { browser.link(text: 'View Service Map') }

  end
end
