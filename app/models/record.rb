class Record < ActiveRecord::Base
  attr_accessible :header, :text, :tag_list
  acts_as_taggable
  has_many :record_comment, :dependent => :destroy
  validates :header, :length => {:in => 4..255}, :presence => true
  validates :text, :presence => true

  searchable do
    text :text, :tag_list
  end
end
