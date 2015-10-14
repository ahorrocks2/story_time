class Sentence < ActiveRecord::Base
  validates :author, :text, presence: true
  belongs_to :story
end
