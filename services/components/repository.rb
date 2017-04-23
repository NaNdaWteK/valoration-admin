require 'digest/md5'
require_relative 'component'
module Components
  class Repository

    @components = []

    class << self

      def store(data)
        response = true
        element_id = data['element_id']

        data['components'].each do |component|
          id = save(component, element_id)
          if !retrieve(id)
            response = false
          end
        end

        return response
      end

      def retrieve(id)
        @components.find { |component| component.id == id }
      end

      def empty
        @components = []
      end

      def generate_id(*identifiers)
        Digest::MD5.hexdigest(identifiers.join)
      end

      private

      def save(component, element_id)
        time = Time.now.getutc.to_s
        id = generate_id(time, component.to_s)
        name = component

        @components << Components::Component.new(id, name, element_id)

        id
      end

    end
  end
end
