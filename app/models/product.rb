class Product < ActiveRecord::Base
  attr_accessible :count, :description, :image, :name, :price
  mount_uploader :image, ImageUploader
  has_many :prod_comment, :dependent => :destroy
  validates :name, :uniqueness => true, :presence => true

  searchable do
    text :name, :description
  end
end
