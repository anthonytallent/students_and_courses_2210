require './lib/student'

RSpec.describe Student do

  describe 'student class' do

    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})    

      expect(student).to be_a(Student)
    end

    it 'has a name' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.name).to eq("Morgan")
    end

    it 'has an age' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.age).to eq(21)
    end

    it 'has scores' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.scores).to eq([])
    end
  end

  describe '#log_score method' do

    it 'will add a score to the scores array' do
      student = Student.new({name: "Morgan", age: 21})

      student.log_score(89)
      student.log_score(78)  

      expect(student.scores).to eq([89, 78])
    end
  end

  describe '#grade method' do
    it 'will calculate the average of the scores in the scores array' do
      student = Student.new({name: "Morgan", age: 21})

      student.log_score(89)
      student.log_score(78)  

      expect(student.grade).to eq(83.5)
    end
  end
end