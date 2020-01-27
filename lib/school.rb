class School

    attr_accessor :roster
    attr_reader :school_name
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        
       @roster = @roster.sort.to_h
        @roster.sort_by do |grade, names|
            names = names.sort_by! do |name| #! modifies the array of names itself
                name.downcase
            end
        end
        @roster
    end
end