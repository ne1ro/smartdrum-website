class RecordComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :record
  attr_accessible :text
  validates :text, :presence => :true
end
