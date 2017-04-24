require 'digest/md5'
module Identifiers
  class Generator

    class << self
      def maker(type)

        case type
        when :md5
          Md5ID.new
        when :jwt
          JwtID.new
        else
          raise "Bad id generator type: #{type}"
        end

      end
    end

  end
  class Md5ID < Generator
    def generate(identifier)
      identifiers = Time.now.getutc.to_s + identifier.to_s

      return Digest::MD5.hexdigest(identifiers)
    end
  end
  class JwtID < Generator
    def generate(identifier)
    end
  end
end
