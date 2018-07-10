require 'rails_helper'

describe 'user' do
  context 'visiting /students/id' do
    it 'will see a students name' do
      student = Student.create(name: 'kjh')

      visit student_path(student)
      
      expect(page).to have_content("Name : #{student.name}")
    end
    
    it 'will see a students addresses' do
      student = Student.create(name: 'kjh')
      address_1 = student.addresses.create(description: 'qwert', street: 'sdfgh', city: 'erty', state: 'wer', zip_code: '1234')
      address_2 = student.addresses.create(description: 'poiu', street: 'rew', city: 'nbvc', state: 'lkjh', zip_code: '87654')

      visit student_path(student)
      
      expect(page).to have_content("description: #{address_1.description}")
      expect(page).to have_content("street: #{address_1.street}")
      expect(page).to have_content("city: #{address_1.city}")
      expect(page).to have_content("state: #{address_1.state}")
      expect(page).to have_content("zip: #{address_1.zip_code}")

      expect(page).to have_content("description: #{address_2.description}")
      expect(page).to have_content("street: #{address_2.street}")
      expect(page).to have_content("city: #{address_2.city}")
      expect(page).to have_content("state: #{address_2.state}")
      expect(page).to have_content("zip: #{address_2.zip_code}")
    end
  end
end
