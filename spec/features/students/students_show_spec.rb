require 'rails_helper'

describe 'user' do
  context 'visiting /students/id' do
    it 'will see a students name' do
      student = Student.create(name: 'kjh')

      visit student_path(student)
      
      expect(page).to have_content("Name : #{student.name}")
    end
  end
end
