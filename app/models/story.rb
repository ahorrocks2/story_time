class Story < ActiveRecord::Base
  validates :title, :author, :first_sentence, presence: true
  validates :first_sentence, length: {minimum: 30, maximum: 200}
  before_validation(:title_case)
  before_validation(:author_title_case)
  has_many :sentences

  private
    def title_case
      title = self.title.downcase
      words = title.split(' ')
      words.map do |word|
        word.capitalize!()
      end
      self.title = words.join(' ')
    end

    def author_title_case
      author = self.author.downcase
      words = author.split(' ')
      words.map do |word|
        word.capitalize!()
      end
      self.author = words.join(' ')
    end

end
