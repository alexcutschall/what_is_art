require 'stringio'

class Api::V1::Users::FavoritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    parsed_request = JSON.parse(request.body.string)
    user = User.find(parsed_request["user_id"])
    artwork_id = parsed_request["artworkId"].to_i
    artwork_title = parsed_request["artworkTitle"]
    artwork_category = parsed_request["artworkCategory"]
    artwork_medium = parsed_request["artworkMedium"]
    artwork_date = parsed_request["artworkDate"]
    artwork_series = parsed_request["artworkSeries"]
    artwork_literature = parsed_request["artworkLiterature"]
    artwork_collecting_institution = parsed_request["artworkCollectingInstitution"]
    image = parsed_request["artworkImageLink"]
    
    artwork = user.favorites.create(artwork_id: artwork_id, artwork_title: artwork_title,
    artwork_category: artwork_category, artwork_medium: artwork_medium,
    artwork_date: artwork_date, artwork_series: artwork_series,
    artwork_literature: artwork_literature,
    artwork_collecting_institution: artwork_collecting_institution,
    image: image)
  end
end
