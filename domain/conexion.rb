require_relative '../services/support/configuration'

module Domain
  class Conexion
    def initialize
      @connection ||= Mongo::Client.new(
        ["#{host}:27017"],
        :database => 'valoration_db'
      )
    end

    def host
      Support::Configuration.host
    end

  end
end
