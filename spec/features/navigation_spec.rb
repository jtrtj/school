require 'rails_helper'

describe 'user' do
  context 'visiting any page' do
    it 'can navigate to all students or create a student' do
      student_1 = Student.create(name: 'kjh')
      student_1 = Student.create(name: 'jhg')

      visit student_path(student_1)
      
      click_on 'All Students'

      expect(current_path).to eq(students_path)

      click_on 'New Student'

      expect(current_path).to eq(new_student_path)
    end

    it "can click a students name to go to student's show page" do
      student_1 = Student.create(name: 'kjh')
      student_1 = Student.create(name: 'jhg')

      visit students_path

      click_on student_1.name

      expect(current_path).to eq(student_path(student_1))
    end
  end
end
