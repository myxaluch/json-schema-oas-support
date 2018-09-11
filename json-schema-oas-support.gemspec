lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json-schema-oas-support/version'

Gem::Specification.new do |spec|
  spec.name                          = 'json-schema-oas-support'
  spec.version                       = JsonSchemaOasSupport::VERSION
  spec.summary                       = 'Add to json-schema gem OAS support'
  spec.description                   = 'Add to json-schema gem OAS support'
  spec.authors                       = ['Sasha Kotov']
  spec.email                         = 'amikotov@gmail.com'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json-schema'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
end
