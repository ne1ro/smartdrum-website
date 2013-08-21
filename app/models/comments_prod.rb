class CommentsProd < ActiveRecord::Base
  belongs_to :user
  belongs_to :production
  attr_accessible :data
end
