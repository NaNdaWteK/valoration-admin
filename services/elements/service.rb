require_relative '../../domain/element'
require_relative '../common/tokens_factory'
require_relative 'repository'
require_relative 'element'

module Elements
  class Service
    class << self

      def add(element)
        element = Repository.store(element)

        return element.serialize
      end

      def empty
        Repository.empty
      end

    end
  end
end
