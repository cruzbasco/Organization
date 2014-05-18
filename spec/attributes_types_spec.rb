describe "An attribute type" do
  
  context "have editable method" do
    it "so TextType implement it" do
      attribute_type = TextType.new
      message = "<div class = 'form-group'><label class='col-md-4 control-label' for='Property'> Property:</label><div class='col-md-4'><input name='Property' type='text' value='Value' class='form-control input-md' required=''/></div></div>"
      attribute_type.editable("Property","Value").should == message
    end
    
    it "so NumericType implement it" do
      attribute_type = NumericType.new
      message ="<div class='form-group'><label class='col-md-4 control-label' for='Property'>Property:</label><div class='col-md-4'><input name='Property' type='number' value='Value' class='form-control input-md' required=''/></div></div>"
      attribute_type.editable("Property","Value").should == message
    end
  end
  
  context "have non_editable method" do  
    it "so TextType implement it" do
      attribute_type = TextType.new
      message = "<div class='form-group'><label class='col-md-5 control-label'>Property</label><div class='col-md-2'><input type='text' value='Value' class='form-control input-md' readonly></div></div>"
      attribute_type.non_editable("Property","Value").should == message
    end
    
    it "so NumericType implement it" do
      attribute_type = NumericType.new
      message = "<div class='form-group'><label class='col-md-5 control-label'>Property</label><div class='col-md-2'><input type='text' value='Value' class='form-control input-md' readonly></div></div>"
      attribute_type.non_editable("Property", "Value").should == message
    end
  end

end