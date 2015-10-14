class Image < ActiveRecord::Base
  validates :url, :presence => true
  has_and_belongs_to_many :stories
end
