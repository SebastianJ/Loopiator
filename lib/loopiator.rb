module Loopiator
  VERSION = "0.0.1"

  require File.join(File.dirname(__FILE__), 'loopiator/railtie') if defined?(Rails)
  
  if (!Hash.instance_methods(false).include?(:symbolize_keys!))
    require File.join(File.dirname(__FILE__), 'loopiator/extensions/hash')
  end

  require File.join(File.dirname(__FILE__), 'loopiator/logger')
  require File.join(File.dirname(__FILE__), 'loopiator/errors')
  
  require File.join(File.dirname(__FILE__), 'loopiator/response')
  
  require File.join(File.dirname(__FILE__), 'loopiator/domains')

  require File.join(File.dirname(__FILE__), 'loopiator/client')
end
