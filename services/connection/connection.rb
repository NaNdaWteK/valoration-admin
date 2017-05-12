require_relative '../../domain/connection'

module DB
  class Connection < Domain::Connection
    def elements
      @connection[:elements]
    end
    def groups
      @connection[:groups]
    end
  end
end
