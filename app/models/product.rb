class Product < ActiveRecord::Base
  attr_accessible :count, :description, :image, :name, :price
  mount_uploader :image, ImageUploader

end
