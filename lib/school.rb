# code here!
class School
    attr_accessor :name, :roster
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end
    def add_student(student_name,grade)
        if @roster.include?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.sort
        @roster.each do |grade,students|
            @roster[grade] = students.sort
        end
        @roster
    end
end