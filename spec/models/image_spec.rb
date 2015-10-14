require 'rails_helper'

describe Image  do
  it {should have_and_belong_to_many :stories}
  it {should validate_presence_of :url}
end
