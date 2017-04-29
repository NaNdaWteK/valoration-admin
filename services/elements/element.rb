module Elements
  class Element < Domain::Element
    def serialize
      {
        'id' => @id,
        'element' => @element
      }
    end    
  end
end
