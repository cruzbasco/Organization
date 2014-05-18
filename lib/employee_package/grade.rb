class Grade

	attr_reader :profession

	def initialize()
		@profession = []
	end

	def return_profession
		@profession
	end

	def insert_profession(profession)
		@profession.push(profession)
	end

	def remove_profession(profession)
		@profession.delete_if{|profession| profession.object_id == profession_id}
	end

	
end