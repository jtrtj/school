require 'rails_helper'

describe Address do
  context 'validations' do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:street)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:zip_code)}
  end
  context 'relationships' do
    it {should belong_to(:student)}
  end
end