# code here!

class School

	def initialize(school_name)
		@school_name = school_name
		@roster = Hash.new { |grade, full_names| grade[full_names] = []}
	end

	def roster
		@roster
	end

	def add_student(full_name, grade_level)
		@roster[grade_level].push(full_name)
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, full_names|
			@roster[grade]= full_names.sort
		end
	end

end
