require 'mongo'
require_relative '../connection/connection'

module Elements
  class Repository

    def initialize
        @db = DB::Connection.new
    end

    def store(element)
      begin
        @db.elements.insert_one(element.serialize)
        @db.close
      rescue Mongo::Error => ex
        raise ex, "Error al guardar el elemento"
      end
      return element
    end

    def retrieve(id)
      begin
        data = @db.elements.find({ id: id }).first
        @db.close
        return Elements::Element.from_bson(data)
      rescue Mongo::Error => ex
        raise ex, "Error en la base de datos"
      end
    end

    def empty
      begin
        @db.elements.delete_many
        @bd.close
      rescue Mongo::Error => ex
        raise ex, "No se ha podido vaciar la coleccion"
      end
    end

  end
end
