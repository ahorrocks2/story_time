require 'rails_helper'

describe Story do
  it { should validate_presence_of :title }
  it { should validate_presence_of :author }
  it { should validate_presence_of :first_sentence }
  it { should have_and_belong_to_many :images }  
end
