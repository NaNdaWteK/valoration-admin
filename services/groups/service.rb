require_relative 'repository'

module Groups
  class Service
    class << self

      def add(group)
        group = Repository.store(group)

        return group
      end

      def empty
        Repository.empty
      end

    end
  end
end
