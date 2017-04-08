require 'digest'
module Elements
  class Repository

    @elements = []

    class << self

      def store(element)
        id = self.generate_id(element.to_s)
        @elements << Element.new(id, element)
        return self.retrieve(id).to_h
      end

      def retrieve(id)
        @elements.find { |element| element.id == id }
      end

      def empty
        @elements = []
      end

      def generate_id(*identifiers)
        Digest::MD5.hexdigest(identifiers.join)
      end

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
  end
end
