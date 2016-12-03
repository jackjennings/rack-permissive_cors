# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/permissive_cors/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-permissive_cors"
  spec.version       = Rack::PermissiveCors::VERSION
  spec.authors       = ["Jack Jennings"]
  spec.email         = ["jack@remote.gd"]

  spec.summary       = %q{Rack middleware that allows all requests from any origin}
  spec.homepage      = "https://github.com/standard-library/rack-permissive_cors"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rack-cors", "~>0.4.0"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
