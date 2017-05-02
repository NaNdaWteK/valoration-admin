module Elements
  class Repository

    @elements = []

    class << self

      def store(element)

        @elements.push(element)

        return element
      end

      def retrieve(id)
        #@elements.find { |element| element.id == id }
      end

      def empty
        @elements = []
      end

    end
  end
end
