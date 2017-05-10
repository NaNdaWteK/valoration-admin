require 'mongo'
require_relative '../conexion/conexion'

module Elements
  class Repository

    def initialize
      @conexion = Mongo::Conexion.new
    end

    def store(element)
      @conexion.elements.insert_one(element.serialize)
      return element
    end

    def retrieve(id)
      data = @conexion.elements.find({ id: id }).first
      return Elements::Element.from_bson(data)
    end

    def empty
      @conexion.elements.delete_many
    end

  end
end
