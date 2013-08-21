class Blog < ActiveRecord::Base
  has_many :comments_blog, :dependent => :destroy
  attr_accessible :data, :header
end
