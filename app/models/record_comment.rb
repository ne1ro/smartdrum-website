class RecordComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :record
  attr_accessible :text, :user_id, :record_id
  validates :text, :presence => :true
end
