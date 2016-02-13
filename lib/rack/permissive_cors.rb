require "rack/cors"
require "rack/permissive_cors/version"

module Rack
  class PermissiveCors < Rack::Cors

    def initialize(*)
      super
      allow_all
    end

    private

      def allow_all
        allow do
          origins '*'
          resource '*', headers: :any, methods: :any
        end
      end

  end
end
