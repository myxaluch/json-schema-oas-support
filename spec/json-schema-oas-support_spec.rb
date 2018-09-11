# frozen_string_literal: true

RSpec.describe JsonSchemaOasSupport do
  subject(:validation) { JSON::Validator.validate(schema, data) }

  let(:schema) do
    {
      '$schema' => 'https://raw.githubusercontent.com/googleapis/gnostic/master/OpenAPIv3/openapi-3.0.json',
      'properties' => {
        'a' => {
          'type' => 'integer',
          'nullable' => true
        }
      }
    }
  end

  describe 'nullable option' do
    context 'when provide valid data' do
      let(:data) { { 'a' => 1 } }

      it 'returns success' do
        expect(validation).to be_truthy
      end
    end

    context 'when provide null' do
      let(:data) { { 'a' => nil } }

      it 'returns success' do
        expect(validation).to be_truthy
      end
    end

    context 'when provide incorrect data' do
      let(:data) { { 'a' => 'ololo' } }

      it 'returns fail' do
        expect(validation).to be_falsey
      end
    end
  end
end
