Jekyll::Site.class_eval do
  def app_pages(kind)
    puts kind
    pages.select do |page|
      page.url =~ /^\/apps\/#{Regexp.escape kind}/
    end
  end
  
  def site_payload_with_apps
    site_payload_without_apps.tap do |result|
      result['site']['iphone_pages'] = self.pages.select do |page|
        page.to_liquid['url'].sub('index.html', '') =~ /^\/apps\/iphone\/.+?/
      end
      result['site']['mac_pages'] = self.pages.select do |page|
        page.to_liquid['url'].sub('index.html', '') =~ /^\/apps\/mac\/.+?/
      end
    end
  end
  alias_method :site_payload_without_apps, :site_payload
  alias_method :site_payload, :site_payload_with_apps
end