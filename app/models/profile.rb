class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :about, :firstname, :image, :lastname, :user_id
  mount_uploader :image, ImageUploader
  validate :firstname, :lastname, :presence => true
end
