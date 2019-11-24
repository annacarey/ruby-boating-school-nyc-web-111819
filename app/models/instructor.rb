class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self
    end 

    def self.all
        @@all 
    end 
 
    def pass_student(student, name)
        test = student.boating_tests.find {|test| test.name == name }
        if test 
            test.status = "passed"
        else 
            BoatingTest.new(student, name, "passed", self)
        end 
    end 

    def fail_student(student, name)
        test = student.boating_tests.find {|test| test.name == name }
        if test 
            test.status = "failed"
        else 
            BoatingTest.new(student, name, "failed", self)
        end 
    end 
end
