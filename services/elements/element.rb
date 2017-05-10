module Elements
  class Element < Domain::Element
    def serialize
      {
        'id' => @id,
        'element' => @element
      }
    end
    def self.from_bson(bson)
      return Elements::Element.new(bson['id'], bson['element'])
    end
  end
end
