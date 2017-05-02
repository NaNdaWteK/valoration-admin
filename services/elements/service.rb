require_relative '../../domain/element'
require_relative '../common/token'
require_relative 'repository'
require_relative 'element'

module Elements
  class Service
    class << self

      def add(element_data)

        element = to_element(element_data)

        element = Repository.store(element)

        return element.serialize
      end

      def to_element(data)
        id = Identifiers::Token.generate_md5_id(data)

        element = Elements::Element.new(id, data)

        return element
      end

      def empty
        Repository.empty
      end

    end
  end
end
