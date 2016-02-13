require 'rack/cors'

module Rack
  class PermissiveCors < Rack::Cors
    VERSION = "0.1.0"
  end
end
