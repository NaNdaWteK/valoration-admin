module Elements
  class Element
    attr_reader :id, :element

    def initialize(id, element)
      @id = id
      @element = element
    end

    def to_h
      {id: @id, element: @element}
    end
  end
end
