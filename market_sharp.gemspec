# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'market_sharp/version'

Gem::Specification.new do |spec|
  spec.name          = 'market_sharp'
  spec.version       = MarketSharp::VERSION
  spec.authors       = ['Customer Lobby']
  spec.email         = ['dev@customerlobby.com']
  spec.description   = 'Client for the MarketSharp API'
  spec.summary       = 'Client for the MarketSharp API'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency('bundler', '1.17.3')
  spec.add_development_dependency('byebug')
  spec.add_development_dependency 'rake'
  spec.add_development_dependency('rspec', '~> 3.1')
  spec.add_development_dependency('webmock', '~> 1.6')
  spec.add_runtime_dependency('ruby_odata', '~> 0.2.0.beta1')
end
