require 'rails_helper'

describe 'user' do
  context 'visiting /students/new' do
    it 'can fill in new student form' do
      name = 'sgfds'

      visit new_student_path
      
      fill_in :student_name, with: name

      click_on 'submit'

      expect(current_path).to be(students_path)
      expect(page).to have_content(name)
    end
  end
end