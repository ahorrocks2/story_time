class Story < ActiveRecord::Base
  validates :title, :author, :first_sentence, presence: true
  has_and_belongs_to_many :images  
end
