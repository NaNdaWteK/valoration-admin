require_relative 'group'
require_relative '../common/ids_generator'

module Groups
  class Repository

    @groups = []

    class << self

      def store(group)
        id = generate_md5_id(group)

        @groups << Groups::Group.new(id, group)
        
        return retrieve(id).to_h
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

    end
  end
end
