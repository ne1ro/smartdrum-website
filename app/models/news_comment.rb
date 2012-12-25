class NewsComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :news
  attr_accessible :text, :user_id, :news_id
  validates :text, :presence => :true
end
