require 'pry'
require './lib/student'
require './lib/course'

RSpec.describe Course do

  describe '#Course class' do
    it 'exists' do
      course = Course.new("Calculus", 2) 

      expect(course).to be_a(Course)
    end

    it 'has a name' do
      course = Course.new("Calculus", 2) 

      expect(course.name).to eq("Calculus")
    end

    it 'has a capacity' do
      course = Course.new("Calculus", 2) 

      expect(course.capacity).to eq(2)
    end

    it 'has anarray of its students' do
      course = Course.new("Calculus", 2) 

      expect(course.students).to eq([])
    end
  end

  describe '#full? method' do
    it 'knows if the class is at capacity' do
      course = Course.new("Calculus", 2) 

      expect(course.full?).to eq(false)
    end
  end

  describe '#enroll method' do
    it 'will add a student to the students array' do
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29}) 

      course = Course.new("Calculus", 2) 

      course.enroll(student1) 
      course.enroll(student2)  

      expect(course.full?).to eq(true)
    end
  end
end