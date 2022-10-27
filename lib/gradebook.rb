require 'pry'
require './lib/student'
require './lib/course'

class Gradebook
  attr_reader :instructor, :courses, :students

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students = []
  end

  def add_course(course)
    @courses << course
  end

  def add_student(student)
    @students << student
  end

  def failing_students
    students = []
    @students.each do |student|
      if student.grade <= 70
        students << student
      end
    end
    students
  end

end