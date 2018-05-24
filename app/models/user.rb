class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_presence_of :password, confirmation: true
  validates_uniqueness_of :username
  has_attached_file :profile_pic, styles: { medium: "300x300>"}, default_url: "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Ffc07.deviantart.net%2Ffs71%2Ff%2F2011%2F299%2Fc%2Fc%2Fprofile_picture_by_missing_man-d4e1qxe.jpg&f=1"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_secure_password
end
