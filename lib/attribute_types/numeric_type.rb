class NumericType
  def editable (property, value)
    "<div class='form-group'><label class='col-md-4 control-label' for='#{property}'>#{property}:</label><div class='col-md-4'><input name='#{property}' type='number' value='#{value}' class='form-control input-md' required=''/></div></div>"
  end
  
  def non_editable (property, value)
    "<div class='form-group'><label class='col-md-5 control-label'>#{property}</label><div class='col-md-2'><input type='text' value='#{value}' class='form-control input-md' readonly></div></div>"
  end
end