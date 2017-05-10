require_relative '../../domain/connection'

module DB
  class Connection < Domain::Connection
    def elements
      @connection[:elements]
    end
  end
end
