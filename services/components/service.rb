require_relative '../../domain/component'
require_relative '../common/tokens_factory'
require_relative 'repository'
require_relative 'component'

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
