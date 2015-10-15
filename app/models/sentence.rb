class Sentence < ActiveRecord::Base
  validates :author, :text, presence: true
  belongs_to :story
  validates :text, length: {minimum: 30, maximum: 200}
  before_validation (:author_title_case)

private
  def author_title_case
    author = self.author.downcase
    words = author.split(' ')
    words.map do |word|
      word.capitalize!()
    end
    self.author = words.join(' ')
  end
end
