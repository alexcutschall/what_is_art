require 'stringio'

class Api::V1::Users::FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    JSON.parse(request.body.string)
  end
end
