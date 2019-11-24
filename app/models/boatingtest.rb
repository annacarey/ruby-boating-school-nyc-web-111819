class BoatingTest

    attr_reader :student, :name, :instructor
    attr_accessor :status

    @@all = []

    def initialize(student, name, status, instructor)
        @student = student 
        @name = name
        @status = status 
        @instructor = instructor 
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def name_match(name)
        self.name == name 
    end 

end
