module Components
  class Component < Domain::Component
    def serialize
      {
        'id' => @id,
        'component' => @component,
        'element_id' => @element_id
      }
    end
  end
end
