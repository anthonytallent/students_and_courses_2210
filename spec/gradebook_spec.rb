require 'pry'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do

  describe '#gradebook class' do
    it 'exists' do
      gradebook = Gradebook.new("Mr. Smith")

      expect(gradebook).to be_a(Gradebook)
    end

    it 'has an instructor' do
      gradebook = Gradebook.new("Mr. Smith")

      expect(gradebook.instructor).to eq("Mr. Smith")
    end

    it 'has courses' do
      gradebook = Gradebook.new("Mr. Smith")

      expect(gradebook.courses).to eq ([])
    end

    it 'has students' do
      gradebook = Gradebook.new("Mr. Smith")

      expect(gradebook.students).to eq([])
    end
  end

  describe '#add_course' do
    it 'can add courses' do
      gradebook = Gradebook.new("Mr. Smith")

      calculus = Course.new("Calculus", 2) 

      gradebook.add_course(calculus)

      expect(gradebook.courses).to eq([calculus])
    end
  end

  describe '#add_student' do
    it 'can add students' do 
      gradebook = Gradebook.new("Mr. Smith")

      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      gradebook.add_student(student1)
      gradebook.add_student(student2)

      expect(gradebook.students).to eq ([student1, student2])
    end
  end

  describe '#failing_students' do
    it 'will list all students below a given grade threshold' do
      gradebook = Gradebook.new("Mr. Smith")

      calculus = Course.new("Calculus", 2) 

      gradebook.add_course(calculus)
      
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      student1.log_score(90)
      student1.log_score(85)
      student2.log_score(30)
      student2.log_score(70)

      gradebook.add_student(student1)
      gradebook.add_student(student2)

      expect(gradebook.failing_students).to eq([student2])
    end
  end

end