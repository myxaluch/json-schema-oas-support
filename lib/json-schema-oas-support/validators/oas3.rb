# frozen_string_literal: true

module JSON
  class Schema
    class Oas3 < Draft4
      def initialize
        super
        @attributes = @attributes.merge('type' => JSON::Schema::TypeOasAttribute)
        @uri = JSON::Util::URI.parse(
          'https://raw.githubusercontent.com/googleapis/gnostic/master/OpenAPIv3/openapi-3.0.json'
        )
        @names = ['oas3', 'https://raw.githubusercontent.com/googleapis/gnostic/master/OpenAPIv3/openapi-3.0.json']
      end

      JSON::Validator.register_validator(self.new)
    end
  end
end
