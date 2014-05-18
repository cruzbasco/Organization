require 'employee_package/employee'
require 'employee_package/grade'
require 'attribute.rb'
require 'attribute_types/text_type'
require 'Information'
	
	describe "a employee" do
	subject(:employee){Employee.new()}
	subject(:grade){Grade.new()}
	subject(:attribute){Attribute.new("property", "value",TextType.new, Information::PUBLIC)}

	it "has an empty attributes?" do
		employee.return_attributes.should == []
	end
	it "insert attributes" do
		employee.insert_attribute(attribute)
		employee.return_attributes.count.should > 0
	end
	
end