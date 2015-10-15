class Sentence < ActiveRecord::Base
  validates :author, :text, presence: true
  belongs_to :story
  validates :text, length: {minimum: 30, maximum: 200}
end
