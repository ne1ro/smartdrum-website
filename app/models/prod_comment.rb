class ProdComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :text, :user_id, :product_id
  validates :text, :presence => :true

  searchable do
    text :text
  end
end
