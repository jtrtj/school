require 'rails_helper'

describe 'user' do
  context 'visiting /students/id/edit' do
    it 'can fill in edit student form' do
      student_1 = Student.create(name: 'kjh')
      new_name = 'dfgh'
      visit edit_student_path(student_1)
      
      fill_in :student_name, with: new_name

      click_on 'submit'
     
      expect(current_path).to eq(student_path(student_1))
      expect(page).to have_content(new_name)
    end
  end
end