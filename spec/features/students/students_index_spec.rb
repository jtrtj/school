require 'rails_helper'

describe 'user' do
  context 'visiting /students' do
    it 'will see a list of all students' do
      student_1 = Student.create(name: 'kjh')
      student_2 = Student.create(name: 'gfd')

      visit students_path
      
      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
    end
  end
end