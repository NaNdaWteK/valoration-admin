require 'digest/md5'
module Elements
  class Repository

    @elements = []

    class << self

      def store(element)
        time = Time.now.getutc.to_s
        id = self.generate_id(time + element.to_s)
        @elements << Element.new(id, element)
        return self.retrieve(id).to_hash
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

        def to_hash
          {id: @id, element: @element}
        end
      end

    end
  end
end
