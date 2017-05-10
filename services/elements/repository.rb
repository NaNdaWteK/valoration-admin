require 'mongo'
require_relative '../support/configuration'

module Elements
  class Repository

    class << self

      def store(element)

        collection.insert_one(element.serialize)
        return element
      end

      def retrieve(id)
        data = collection.find({ id: id }).first
        return Elements::Element.from_bson(data)
      end

      def empty
        collection.delete_many
      end

      private

      def connection
        @connection ||= Mongo::Client.new(
          ["#{host}:27017"],
          :database => 'valoration_db'
        )
      end

      def collection
        connection[:elements]
      end

      def host
        Support::Configuration.host
      end

    end
  end
end
