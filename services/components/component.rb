module Components
  class Component < Domain::Component
    def serialize
      {
        'id' => @id,
        'component' => @component,
        'element_id' => @element_id
      }
    end
    
    def self.from_bson(bson)
      return Components::Component.new(bson['id'], bson['component'], bson['element_id'])
    end
  end
end
