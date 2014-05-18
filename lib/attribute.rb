class Attribute
  
  attr_reader :property, :value, :type
  
  def initialize (property, value , type, visible)
    @property = property
    @value = value
    @type = type
    @visible = visible
  end
  
  def add_property (property)
    @property = property
  end
  
  def add_value (value)
    @value = value
  end
  
  def add_type (type)
    @type = type
  end
  
  def add_visible (visible)
    @visible = visible
  end
  
  def is_visible?
    @visible
  end
  
  def editable_type
    @type.editable(@property, @value)
  end
  
  def non_editable_type
    @type.non_editable(@property, @value)
  end
  
end