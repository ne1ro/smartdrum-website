class News < ActiveRecord::Base
  attr_accessible :header, :text
  validates :header, :length => {:in => 4..255}, :presence => true
  has_many :news_comment, :dependent => :destroy
end
