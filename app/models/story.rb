class Story < ActiveRecord::Base
  validates :title, :author, :first_sentence, presence: true
  has_many :sentences
end
