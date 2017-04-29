module Elements
  class Repository

    @elements = []

    class << self

      def store(element)
        id = generate_jwt_id(element)
        element = Elements::Element.new(id, element)
        @elements.push(element)

        return element
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

      def generate_jwt_id(argument)
        return Identifiers::Generator.maker(:jwt).generate(argument)
      end

    end
  end
end
