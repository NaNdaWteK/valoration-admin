module Components
  class Component
    attr_reader :id, :component

    def initialize(id, component, element_id)
      @id = id
      @component = component
      @element_id = element_id
    end

    def to_h
      {id: @id, component: @component, element_id: @element_id}
    end
  end
end
