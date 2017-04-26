require_relative 'repository'

module Groups
  class Service
    class << self
      
      def add(group)
        id = Repository.store(group)

        return id
      end

      def empty
        Repository.empty
      end

    end
  end
end
