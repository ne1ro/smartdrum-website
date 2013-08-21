class CommentsBlog < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  attr_accessible :data
end
