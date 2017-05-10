require_relative '../services/support/configuration'

module Domain
  class Connection
    def initialize
      @connection ||= Mongo::Client.new(
        ["#{host}:27017"],
        :database => 'valoration_db'
      )
    end

    def close
      @connection.close
    end

    private

    def host
      Support::Configuration.host
    end

  end
end
