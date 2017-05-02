module Groups
  class Repository

    @groups = []

    class << self

      def store(group)

        @groups.push(group)

        return group
      end

      def retrieve(id)
        #@groups.find { |group| group.id == id }
      end

      def empty
        @groups = []
      end

    end
  end
end
