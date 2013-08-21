class CommentsNews < ActiveRecord::Base
  belongs_to :user
  belongs_to :news
  attr_accessible :data
end
