require 'digest'
module Groups
  class Repository

    @groups = []

    class << self

      def store(group)
        id = self.generate_id(group.to_s)
        @groups << Group.new(id, group)
        return self.retrieve(id).to_h
      end

      def retrieve(id)
        @groups.find { |group| group.id == id }
      end

      def empty
        @groups = []
      end

      def generate_id(identifiers)
        Digest::MD5.hexdigest(identifiers)
      end

      class Group
        attr_reader :id, :group

        def initialize(id, group)
          @id = id
          @group = group
        end

        def to_h
          {id: @id, group: @group}
        end
      end

    end
  end
end
