$:.unshift( File.expand_path( "../lib", __FILE__ ) )
require 'lab42/open_object/version'
version = Lab42::OpenObject::VERSION
Gem::Specification.new do |s|
  s.name        = 'lab42_open_object'
  s.version     = version
  s.summary     = 'OpenObject an Immutable OpenStruct Enhancement'
  s.description = %{An Open Object à la OpenStruct, but immutable and with a Hash and Enumerable Protocol Implementation } 
  s.authors     = ["Robert Dober"]
  s.email       = 'robert.dober@gmail.com'
  s.files       = Dir.glob("lib/**/*.rb")
  s.files      += %w{LICENSE README.md}
  s.homepage    = "https://github.com/RobertDober/lab42_open_object"
  s.licenses    = %w{Apache 2}

  s.required_ruby_version = '>= 2.3.1'
  s.add_dependency 'forwarder2', '~> 0.2'

  s.add_development_dependency 'pry', '~> 0.11'
  s.add_development_dependency 'pry-byebug', '~> 3.5'

  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'lab42_literate', '~> 0.1'

  s.add_development_dependency 'simplecov', '~> 0.15'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'

  s.add_development_dependency 'travis-lint', '~> 2.0'
  # s.add_development_dependency 'rake', '~> 10.3'
end
