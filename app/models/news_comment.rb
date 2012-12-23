class NewsComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :news
  attr_accessible :text
end
