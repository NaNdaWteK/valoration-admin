Mongo::Logger.logger.level = ::Logger::INFO

module Support
  class Configuration
    HOSTS = {
      'development' => 'valoration_mongo',
      nil => 'localhost'
    }

    def self.retrieve_mode
      begin
        consensus_environment = ENV.fetch('VALORATION_MODE')
      rescue
        consensus_environment = nil
      end
      return consensus_environment
    end

    def self.host
      HOSTS[retrieve_mode]
    end
  end
end
