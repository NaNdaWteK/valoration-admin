module Components
  class Repository

    @components = []

    class << self

      def store(components)

        components.each { |component| @components.push(component) }

        return components
      end

      def retrieve(id)
        #return @components.find { |component| component.id == id }
      end

      def empty
        @components = []
      end

    end
  end
end
