module Components
  class Repository

    @components = []

    class << self

      def store(data)
        element_id = data['element_id']
        components = []

        data['components'].each do |component|
          component = save(component, element_id)
          components.push(component.serialize)
        end

        return components
      end

      def retrieve(id)
        return @components.find { |component| component.id == id }
      end

      def empty
        @components = []
      end

      private

      def save(component, element_id)
        id = generate_jwt_id(component)
        name = component
        component = Components::Component.new(id, name, element_id)

        @components.push(component)

        return component
      end

      def generate_md5_id(argument)
        return Identifiers::Generator.maker(:md5).generate(argument)
      end

      def generate_jwt_id(argument)
        return Identifiers::Generator.maker(:jwt).generate(argument)
      end

    end
  end
end
