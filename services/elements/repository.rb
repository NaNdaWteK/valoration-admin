require_relative 'element'
require_relative '../common/ids_generator'

module Elements
  class Repository

    @elements = []

    class << self

      def store(element)
        id = generate_md5_id(element)
        @elements << Elements::Element.new(id, element)
        return retrieve(id).to_h
      end

      def retrieve(id)
        @elements.find { |element| element.id == id }
      end

      def empty
        @elements = []
      end

      private

      def generate_md5_id(argument)
        return Identifiers::Generator.maker(:md5).generate(argument)
      end

    end
  end
end
