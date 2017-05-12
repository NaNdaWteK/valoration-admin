require_relative '../../domain/group'
require_relative '../common/token'
require_relative 'repository'
require_relative 'group'


module Groups
  class Service
    class << self

      def add(group_data)

        group = to_group(group_data)

        group = Groups::Repository.store(group)

        return group.serialize
      end

      def to_group(group_data)
        id = Identifiers::Token.generate_md5_id(group_data)

        group = Groups::Group.new(id, group_data)

        return group
      end

      def empty
        Repository.empty
      end

    end
  end
end
