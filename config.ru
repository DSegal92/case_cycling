# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run CaseCycling::Application

r301 %r{.*}, 'http://www.casecycling.com$&', :if => Proc.new {|rack_env|
  rack_env['SERVER_NAME'] != 'casecycling.com'
}