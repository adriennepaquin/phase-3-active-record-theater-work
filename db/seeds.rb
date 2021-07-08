puts "Clearing old data..."
Role.destroy_all
Audition.destroy_all


puts "Seeding auditions..."

30.times do
  Student.create(actor: Faker::Name.name, role:)
end

puts "Seeding exams..."
10.times do
  Exam.create(subject: Faker::Educator.subject,
              total_questions: rand(1..100),
              is_pop_quiz: [true, false].sample,
              administration_date: Faker::Date.between(from: 365.days.ago, to: Date.today))
end

puts "Seeding StudentExams..."
20.times do
  exam = Exam.all.sample
  student = Student.all.sample
  grade_score = rand(0..100)

  # TODO: create StudentExams! Remember, a StudentExam belongs to an exam
  # and a StudentExam belongs to a student.
  StudentExam.create(grade: grade_score, student_id: student.id, exam_id: exam.id) # <- insert key value pairs required to create a studentExam!

end

puts "Done!"
