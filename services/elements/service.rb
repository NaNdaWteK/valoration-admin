require_relative 'repository'

module Elements
  class Service
    class << self

      def add(element)
        element = Repository.store(element)

        return element
      end

      def empty
        Repository.empty
      end

    end
  end
end
