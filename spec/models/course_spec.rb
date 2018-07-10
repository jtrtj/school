require 'rails_helper'

describe Course do
  context 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:teacher)}
  end
  context 'relationships' do
    it {should have_many(:students).through(:student_courses)}
  end
end