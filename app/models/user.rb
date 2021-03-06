require 'net/http'

class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_presence_of :password, confirmation: true
  validates_uniqueness_of :username
  has_attached_file :profile_pic
  do_not_validate_attachment_file_type :profile_pic
  has_secure_password
  has_many :user_favorites
  has_many :favorites, through: :user_favorites

  def x_app_token_request
    api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
    response = Net::HTTP.post_form(api_url, client_id: ENV['ARTSY_CLIENT_ID'], client_secret: ENV['ARTSY_SECRET'])
    xapp_token = JSON.parse(response.body)['token']
  end
end
