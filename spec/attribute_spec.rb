require 'attribute'
require 'information'
require 'attribute_types/text_type'
require 'attribute_types/numeric_type'

describe "An attribute" do
  subject(:text_type) {TextType.new}
  subject(:attribute) {Attribute.new("","",text_type,Information::PUBLIC)}
  
  it "has a property" do
    attribute.add_property("sample")
    attribute.property.should == "sample"
  end
  
  it "has a value" do
    attribute.add_value("sample")
    attribute.value.should == "sample"
  end
  
  it "has a type like String" do
    attribute.add_type(text_type)
    attribute.type.should == text_type
  end
  
  it "is visible if is public" do
    attribute.add_visible(Information::PUBLIC)
    attribute.is_visible?.should == true
  end
  
  it "is non visible if is private" do
    attribute.add_visible(Information::PRIVATE)
    attribute.is_visible?.should == false
  end
  
  it "should be created with non info and TextType as default" do
    attribute.property.should == ""
    attribute.value.should == ""
    attribute.type.should == text_type
    attribute.is_visible?.should == true
  end
  
  it "has a default constructor which set its attributes" do
    attribute = Attribute.new("property", "value", text_type, Information::PUBLIC)
    attribute.property.should == "property"
    attribute.value.should == "value"
    attribute.type.should == text_type
    attribute.is_visible?.should == true
  end
  
  it "has an editable and non_editable methods" do
    attribute = Attribute.new("property", "value", text_type, Information::PUBLIC)
    attribute.editable_type.should == text_type.editable("property", "value")
    attribute.non_editable_type.should == text_type.non_editable("property", "value")
  end
  
end