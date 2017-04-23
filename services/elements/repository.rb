require 'digest/md5'
require_relative 'element'
module Elements
  class Repository

    @elements = []

    class << self

      def store(element)
        time = Time.now.getutc.to_s
        id = generate_id(time + element.to_s)
        @elements << Elements::Element.new(id, element)
        return retrieve(id).to_h
      end

      def retrieve(id)
        @elements.find { |element| element.id == id }
      end

      def empty
        @elements = []
      end

      def generate_id(*identifiers)
        Digest::MD5.hexdigest(identifiers.join)
      end

    end
  end
end
