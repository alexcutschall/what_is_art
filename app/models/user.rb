class User < ApplicationRecord
  validates_presence_of :username, :password
  validates_presence_of :password, confirmation: true
  validates_uniqueness_of :username
  has_attached_file :profile_pic, styles: { medium: "300x300>"}
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/
  has_secure_password
end
