Dir[File.expand_path(File.dirname(__FILE__) + '/../source/plugins/**/*.rb')].each do |f|
  require f
end