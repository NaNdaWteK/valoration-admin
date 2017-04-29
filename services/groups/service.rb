require_relative '../../domain/group'
require_relative '../common/tokens_factory'
require_relative 'repository'
require_relative 'group'


module Groups
  class Service
    class << self

      def add(group)
        group = Repository.store(group)

        return group.serialize
      end

      def empty
        Repository.empty
      end

    end
  end
end
