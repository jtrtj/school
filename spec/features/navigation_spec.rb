=begin
As a user
When I visit any page
I see links to see a list of all students, or create a new student

As a user
When I visit `/students`
And I click on a student's name
I am taken to a show page for that student
=end

require 'rails_helper'

describe 'user' do
  context 'visiting any page' do
    it 'can navigate to all students or create a student' do
      student_1 = Student.create(name: 'kjh')
      student_1 = Student.create(name: 'jhg')

      visit student_path(student_1)
      
      click on 'All Students'

      expect(current_path).to eq(students_path)

      click on 'New Student'

      expect(current_path).to eq(new_student_path)
    end
  end
end
