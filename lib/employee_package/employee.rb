require 'employee_package/grade'
require 'entity'

class Employee < Entity

	attr_reader :attributes, :grade

	def initialize
		super
		@grade = Grade.new
	end

	def insert_grade(grade)
		@grade.insert_profession(grade)
	end

	def return_grades
		@grade.return_profession
	end
	
end