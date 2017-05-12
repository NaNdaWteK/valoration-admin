require 'mongo'
require_relative '../connection/connection'

module Elements
  class Repository
    class << self
      def connection
          DB::Connection.new
      end

      def store(element)
        begin
          connection.elements.insert_one(element.serialize)
          connection.close
        rescue Mongo::Error => ex
          raise ex, "Error al guardar el elemento"
        end
        return element
      end

      def retrieve(id)
        begin
          data = connection.elements.find({ id: id }).first
          connection.close
          return Elements::Element.from_bson(data)
        rescue Mongo::Error => ex
          raise ex, "Error en la base de datos"
        end
      end

      def empty
        begin
          connection.elements.delete_many
          connection.close
        rescue Mongo::Error => ex
          raise ex, "No se ha podido vaciar la coleccion"
        end
      end
    end
  end
end
