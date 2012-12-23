class ProdComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :text
end
