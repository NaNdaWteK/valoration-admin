require 'mongo'
require_relative '../connection/connection'

module Components
  class Repository

    class << self
      def connection
          DB::Connection.new
      end

      def store(components)
        begin
          connection.components.insert_many(components)
          connection.close
        rescue Mongo::Error => ex
          raise ex, "Error al guardar el elemento"
        end

        return components
      end

      def retrieve(id)
        begin
          data = connection.components.find({ id: id }).first
          connection.close
          return Components::Component.from_bson(data)
        rescue Mongo::Error => ex
          raise ex, "Error en la base de datos"
        end
      end

      def empty
        begin
          connection.components.delete_many
          connection.close
        rescue Mongo::Error => ex
          raise ex, "No se ha podido vaciar la coleccion"
        end
      end

    end
  end
end
