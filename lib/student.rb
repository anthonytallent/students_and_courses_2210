class Student
  attr_reader :scores, :info

    def initialize(info = {name: name, age: age})
      @info = info
      @scores = []
    end

    def name
    info.values[0]
    end

    def age
    info.values[1]
    end

    def log_score(num)
      @scores << num
    end

    def grade
      score_floats = []
      @scores.each do |score|
        score_floats << score.to_f
      end
      score_floats.sum / 2.0
    end
end