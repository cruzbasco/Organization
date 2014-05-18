require 'entity'

describe "An entity" do
  
  subject(:text_type) {TextType.new}
  subject(:entity) {Entity.new(Attribute.new("Position","",text_type,Information::PUBLIC))}
  subject(:attribute) {Attribute.new("","",text_type,Information::PUBLIC)}
  
  context "starts with" do
    it "an empty primary attribute" do
      entity.main_property.should == "Position"
      entity.main_value.should == ""
      entity.main_type.should == text_type
      entity.is_visible?.should == true
    end
    
    it "empty attributes" do
      entity.attributes.should == []
    end
    
    it "could modify its own primary attribute" do
      entity.change_primary_attribute("cambio","cambio",text_type,Information::PUBLIC)
      entity.main_property.should == "cambio"
      entity.main_value.should == "cambio"
      entity.main_type.should == text_type
    end
    
    it "is visible if is public" do
      entity.is_visible?.should == true
    end
    
    it "is non visible if is private" do
      entity.set_visible(Information::PRIVATE)
      entity.is_visible?.should == false
    end
  end
  
  context "with attributes" do
    it "isn't empty if has attributes" do
      entity.add_attribute(attribute)
      entity.attributes.should_not == []
    end
    
    it "is empty when add and remove attribute" do
      entity.add_attribute(attribute)
      entity.remove_attribute(attribute.object_id)
      entity.attributes.should == []
    end
    
    it "returns all of its attributes"do
      entity.add_attribute(attribute)
      entity.add_attribute(attribute)
      entity.attributes.count.should == 2
    end
    
    it "an attribute can be searched by property" do
      entity.add_attribute(attribute)
      entity.add_attribute(Attribute.new("buscar aqui","",TextType.new,Information::PUBLIC))
      entity.add_attribute(attribute)
      entity.search_attribute("buscar aqui").property.should == "buscar aqui"
    end
    
    it "an attribute can be searched by value" do
      entity.add_attribute(attribute)
      entity.add_attribute(Attribute.new("","buscar aqui",TextType.new,Information::PUBLIC))
      entity.add_attribute(attribute)  
      entity.search_attribute("buscar aqui").value.should == "buscar aqui"
    end
  end
  
  
end