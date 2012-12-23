class Record < ActiveRecord::Base
  attr_accessible :header, :text, :tag_list
  acts_as_taggable
end
