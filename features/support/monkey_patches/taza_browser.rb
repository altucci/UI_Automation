module Taza
  class Browser
    def self.create_watir(params)
      require 'watir'
      if ENV['BROWSER'] == 'chrome'
        options = Selenium::WebDriver::Chrome::Options.new
        eval(params[:switches]).each { |switch| options.add_argument(switch)}
        browser = Watir::Browser.new params[:browser],
                                     options: options
      elsif ENV['BROWSER'] == 'ie'
        browser = Watir::Browser.new params[:browser]
      elsif ENV['BROWSER'] == 'firefox'
        browser = Watir::Browser.new params[:browser], profile: Selenium::WebDriver::Firefox::Options.new.profile
      else
        browser = Watir::Browser.new params[:browser]
      end
      browser
    end
  end
end