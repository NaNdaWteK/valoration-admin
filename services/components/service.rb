require_relative 'repository'

module Components
  class Service
    class << self
      def add(components)
        response = Repository.store(components)
        return response
      end
      def empty
        Repository.empty
      end
    end
  end
end
