require_relative '../../domain/element'
require_relative '../common/token'
require_relative 'repository'
require_relative 'element'

module Elements
  class Service
    class << self

      def add(element_data)
        element = to_element(element_data)

        element = Elements::Repository.store(element)

        return element.serialize
      end

      def list
        data = Elements::Repository.list
        elements = Elements::Element.from_bson(data)
        return serialized(elements)
      end

      def empty
        Elements::Repository.empty
      end

      private

      def to_element(data)
        id = Identifiers::Token.generate_md5_id(data)

        element = Elements::Element.new(id, data)

        return element
      end

      def serialized(elements)
        response = Array.new

        elements.each { |element| response.push(element.serialize) }

        return response
      end

    end
  end
end
