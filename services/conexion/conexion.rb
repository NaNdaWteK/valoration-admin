require_relative '../../domain/conexion'

module Mongo
  class Conexion < Domain::Conexion
    def elements
      @connection[:elements]
    end
  end
end
