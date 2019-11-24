class Student

attr_reader :first_name

@@all = []

def initialize(first_name)
    @first_name = first_name
    self.class.all << self
end

def self.all
    @@all 
end 

def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
end

def self.find_student(first_name)
    self.all.find do |student|
        student.first_name == first_name
    end 
end 

def grade_percentage
    grade = self.num_passed.to_f / self.num_boating_tests.to_f * 100
end 

def boating_tests 
    BoatingTest.all.select do |test|
        test.student == self
    end 
end

def num_boating_tests
    boating_tests.length
end 

def num_passed
    boating_tests.count do |test|
        test.status == "passed"
    end 
end 

end 
