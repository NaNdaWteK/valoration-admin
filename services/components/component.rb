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
      component = Components::Component.new(bson['id'], bson['component'])
      component.related_key(bson['element_id'])
      return component
    end
  end
end
