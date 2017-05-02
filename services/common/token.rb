require 'digest/md5'
require 'jwt'
require_relative 'tokens_factory'

module Identifiers
  class Token

    class << self
      def generate_md5_id(argument)
        return Identifiers::Generator.maker(:md5).generate(argument)
      end

      def generate_jwt_id(argument)
        return Identifiers::Generator.maker(:jwt).generate(argument)
      end
    end

  end
end
