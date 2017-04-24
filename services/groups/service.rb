require_relative 'repository'

module Groups
  class Service
    class << self
      def add(group)
        id = Repository.store(group)
        
        return id
      end
    end
  end
end
