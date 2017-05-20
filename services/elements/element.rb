module Elements
  class Element < Domain::Element
    def serialize
      {
        'id' => @id,
        'element' => @element
      }
    end
    def self.from_bson(bson)
      elements = Array.new
      bson.each { |element| elements.push(Elements::Element.new(element['id'], element['element'])) }
      return elements
    end
  end
end
