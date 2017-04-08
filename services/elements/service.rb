require_relative 'repository'

module Elements
  class Service
    class << self
      def add(element)
        id = Repository.store(element)
        return id
      end
    end
  end
end
