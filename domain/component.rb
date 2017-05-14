module Domain
  class Component
    def initialize(id, name)
      @id = id
      @component = name
    end
    def related_key(element_id)
      @element_id = element_id
    end
  end
end
