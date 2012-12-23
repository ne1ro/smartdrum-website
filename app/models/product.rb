class Product < ActiveRecord::Base
  attr_accessible :count, :description, :image, :name, :price
end
