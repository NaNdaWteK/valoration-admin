require_relative '../../domain/connection'

module DB
  class Connection < Domain::Connection
    def elements
      @connection[:elements]
    end
    def groups
      @connection[:groups]
    end
    def components
      @connection[:components]
    end
  end
end
