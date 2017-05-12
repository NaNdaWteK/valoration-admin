require 'mongo'
require_relative '../connection/connection'

module Groups
  class Repository
    class << self
      def connection
          DB::Connection.new
      end

      def store(group)
        begin
          connection.groups.insert_one(group.serialize)
          connection.close
        rescue Mongo::Error => ex
          raise ex, "Error al guardar el grupo"
        end
        return group
      end

      def retrieve(id)
        begin
          data = connection.groups.find({ id: id }).first
          connection.close
          return Groups::Group.from_bson(data)
        rescue Mongo::Error => ex
          raise ex, "Error en la base de datos"
        end
      end

      def empty
        begin
          connection.groups.delete_many
          connection.close
        rescue Mongo::Error => ex
          raise ex, "No se ha podido vaciar la coleccion"
        end
      end

    end
  end
end
