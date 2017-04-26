require 'digest/md5'
require 'jwt'

module Identifiers
  class Generator

    class << self
      def maker(type)

        case type
        when :md5 then Md5ID.new
        when :jwt then JwtID.new
        else
          raise "Bad id generator type: #{type}"
        end

      end
    end

  end

  class Md5ID
    def generate(identifier)
      identifiers = Time.now.getutc.to_s + identifier.to_s

      return Digest::MD5.hexdigest(identifiers)
    end
  end

  class JwtID
    def generate(identifier)
      payload = {}
      payload[:date]   = Time.now.getutc.to_s
      payload[:id]   = Digest::MD5.hexdigest(identifier + ':' + payload[:date])
      payload[:item] = identifier

      return JWT.encode(payload, identifier, 'HS256')
    end
  end

end
