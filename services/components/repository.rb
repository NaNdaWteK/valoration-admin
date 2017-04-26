require_relative 'component'
require_relative '../common/tokens_factory.rb'

module Components
  class Repository

    @components = []

    class << self

      def store(data)
        id = ''
        element_id = data['element_id']

        data['components'].each do |component|
          id = save(component, element_id)
        end

        return retrieve(id).to_h
      end

      def retrieve(id)
        return @components.find { |component| component.id == id }
      end

      def empty
        @components = []
      end

      private

      def save(component, element_id)
        id = generate_md5_id(component)
        name = component

        @components << Components::Component.new(id, name, element_id)

        return id
      end

      def generate_md5_id(argument)
        return Identifiers::Generator.maker(:md5).generate(argument)
      end

    end
  end
end
