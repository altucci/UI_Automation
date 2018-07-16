After do |scenario|
  if scenario.failed?
    begin
      encoded_img = @site.browser.screenshot.base64
      embed("data:image/png;base64,#{encoded_img}",'image/png')
    rescue
      puts 'There was an issue taking a screenshot'
    end
  end

  @site.browser.close
end