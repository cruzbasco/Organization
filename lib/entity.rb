class Entity
  
  attr_accessor :attributes, :entities
    
  def initialize
    @attributes = []
    @visible = Information::PUBLIC
  end
  
  def main_property
    @main_attribute.property
  end
  
  def main_value
    @main_attribute.value
  end
  
  def main_type
    @main_attribute.type
  end
  
  def set_visible (visible)
    @visible = visible
  end
  
  def is_visible?
    @visible
  end
  
  def change_primary_attribute (property, value, type, visible)
    @main_attribute = Attribute.new(property,value,type,visible)
  end
  
  def add_attribute (attribute)
    @attributes.push(attribute)
  end
  
  def remove_attribute (attribute_id)
    @attributes.delete_if{|attribute| attribute.object_id == attribute_id}
  end
  
  def search_attribute (data)
    @attributes.select{|attribute| attribute.property == data || attribute.value == data}.first
  end

  def set_attributes(attributes, visible)
    @attributes=attributes
    @visible=visible
  end
  
end