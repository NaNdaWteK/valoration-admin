require 'digest/md5'
require_relative 'group'
module Groups
  class Repository

    @groups = []

    class << self

      def store(group)
        time = Time.now.getutc.to_s
        id = self.generate_id(time, group.to_s)
        @groups << Groups::Group.new(id, group)
        return self.retrieve(id).to_h
      end

      def retrieve(id)
        @groups.find { |group| group.id == id }
      end

      def empty
        @groups = []
      end

      def generate_id(*identifiers)
        Digest::MD5.hexdigest(identifiers.join)
      end

    end
  end
end
