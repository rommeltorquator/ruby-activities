class Student
    def initialize(name, age, degree)
        @name = name
        @age = age
        @degree = degree
    end

    def introduce
        "Hello! My name is #{@name}, age is #{@age}, and I am a #{@degree} student"
    end
end

rommel = Student.new("Rommel", 15, "Tourism")
puts rommel.introduce