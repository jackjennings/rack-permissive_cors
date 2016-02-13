require 'minitest_helper'

require 'rack'
require 'rack/test'
require 'rack/permissive_cors'

APP = Rack::Builder.new do
  use Rack::PermissiveCors

  map "/" do
    run ->(env) {[200, {'Content-Type' => 'text/plain'}, ['Hi!']] }
  end
end

class Rack::TestPermissiveCors < Minitest::Test
  include Rack::Test::Methods

  def app
    APP
  end

  def test_that_it_has_a_version_number
    refute_nil ::Rack::PermissiveCors::VERSION
  end

  def test_has_cors_headers
    header 'Origin', '192.0.0.1'
    get '/'
    assert_equal '192.0.0.1', last_response.headers['Access-Control-Allow-Origin']
  end
end
