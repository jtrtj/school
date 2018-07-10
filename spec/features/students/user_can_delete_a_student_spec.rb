describe 'user' do
  context 'visiting /students' do
    it 'can delete a student' do
      student_1 = Student.create(name: 'kjh')
      student_1 = Student.create(name: 'jhg')
     
      visit students_path
      
      within "#student-#{student_1.id}"
      click_on 'delete'
     
      expect(page).to_not have_content(student_1.name)
    end
  end
end