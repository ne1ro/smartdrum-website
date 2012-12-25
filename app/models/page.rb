class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :content, :name, :title, :presence => true
end
