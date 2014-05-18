require 'entity'

describe "An entity" do
  
  subject(:text_type) {TextType.new}
  subject(:entity) {Entity.new}
  subject(:attribute) {Attribute.new("","",text_type,Information::PUBLIC)}
  
  context "starts with" do
    it "empty attributes" do
      entity.attributes.should == []
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