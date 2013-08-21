class Production < ActiveRecord::Base
  attr_accessible :cost, :count, :description, :name
  has_many :comments_prod, :dependent => :destroy
end
