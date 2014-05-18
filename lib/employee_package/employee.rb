class Employee
	attr_reader :attributes, :grade
	def initialize()
		@grade = Grade.new
		@attributes = []
	end
	
	def return_attributes
		@attributes
	end
	def insert_attribute(attribute)
		@attributes.push(attribute)
	end

private

	def insert_grade(grade)
		@grade.insert_profession(grade)
	end
	
end