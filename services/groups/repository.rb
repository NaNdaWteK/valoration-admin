module Groups
  class Repository

    @groups = []

    class << self

      def store(group)
        id = generate_jwt_id(group)
        group = Groups::Group.new(id, group)

        @groups.push(group)

        return group
      end

      def retrieve(id)
        @groups.find { |group| group.id == id }
      end

      def empty
        @groups = []
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
