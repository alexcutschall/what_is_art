require 'stringio'

module Api
  module V1
    module Users
      class FavoritesController < ApiController
        skip_before_action :verify_authenticity_token

        def create
          JSON.parse(request.body.string)
          binding.pry
        end

      end
    end
  end
end
