require 'rails_helper'

describe Student do
  context 'validations' do
    it {should validate_presence_of(:name)}
  end
end