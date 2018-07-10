=begin
As a user
When I visit `/students/:id/addresses/new`
And I fill in description with a description (e.g. "Summer Address")
And I fill in street with a street address
And I fill in city with a city
And I fill in state with a state
And I fill in zip code with a zip code
And I click submit
I am taken to that student's show page
And I see the description, street, city, state, and zip on that page
=end

require 'rails_helper'

describe 'user' do
  context 'visiting students/id/addresses/new' do
    it 'can fill out new address form' do
      student_1 = Student.create(name: 'kjh')

      visit new_student_address_path(student_1)
      
      fill_in :address_description, with: 'sdfg'
      fill_in :address_street, with: 'ghgf'
      fill_in :address_city, with: 'bvcx'
      fill_in :address_state, with: 'btyx'
      fill_in :address_zip_code, with: '34567'
      
      click_on 'submit'
      save_and_open_page
      expect(current_path).to eq(student_path(student_1))
      expect(page).to have_content('description: sdfg')
      expect(page).to have_content('street: ghgf')
      expect(page).to have_content('city: bvcx')
      expect(page).to have_content('state: btyx')
      expect(page).to have_content('zip: 34567')
    end
  end
end