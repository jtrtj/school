require 'rails_helper'

describe Student do
  context 'validations' do
    it {should validate_presence_of(:name)}
  end
  context 'relationships' do
    it {should have_many(:addresses)}
    it {should have_many(:courses).through(:student_courses)}
  end
end