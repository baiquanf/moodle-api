# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moodle/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'moodle-api'
  spec.version       = Moodle::Api::VERSION
  spec.authors       = ['Ryan-Neal Mes']
  spec.email         = ['ryan.mes@gmail.com']

  spec.summary       = 'Moodle web service API wrapper.'
  spec.description   = 'Wraps Moodle API and exposes web services that have been made external.'
  spec.homepage      = 'https://github.com/get-smarter/moodle-api'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'rubocop', '~> 0.81'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.38'
  spec.add_development_dependency 'simplecov', '~> 0.18'
  spec.add_development_dependency 'vcr', '~> 5.1'

  spec.add_dependency 'typhoeus', '~> 1.3'
end
