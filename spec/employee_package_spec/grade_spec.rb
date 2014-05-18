require 'employee_package/grade'
require 'attribute.rb'
require 'attribute_types/text_type'
require 'Information'
	
	describe "a grade" do
	subject(:attribute){Attribute.new("value", "value",TextType.new, Information::PUBLIC)}
	subject(:grade){Grade.new}

	it "has a profession?" do
		grade.return_profession.should == []
	end

	it "insert profession" do
		grade.insert_profession(attribute)
		grade.return_profession.count.should > 0
	end

	it "could remove any profession as it needed" do
		grade.remove_profesion(attribute)
		grade.return_profession.count.should == 0
	end


end