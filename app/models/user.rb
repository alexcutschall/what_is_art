class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_presence_of :password, confirmation: true
  validates_uniqueness_of :username
  has_attached_file :profile_pic, styles: { medium: "300x300>"}, default_url: "/assets/:style/missing.jpg"
  has_secure_password
end
