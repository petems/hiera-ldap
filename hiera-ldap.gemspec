lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bundler/version'

Gem::Specification.new do |s|
  s.name        = "hiera-ldap"
  s.version     = '1.1.1'
  s.platform    = Gem::Platform::RUBY

  s.authors     = ["Hunter Haugen"]
  s.authors     = "hunter@puppetlabs.com"
  s.homepage    = "http://github.com/hunner/hiera-file"
  s.summary     = "LDAP backend for Hiera"
  s.description = "An LDAP backend for Hiera"

  # hiera is omitted as an explicit dependency so that hiera-file can be
  # installed as a gem when hiera is installed via system package.
  #s.add_dependency 'hiera', '>= 1.0.0'

  s.add_development_dependency 'rspec', '~> 2.10.0'
  s.add_development_dependency 'mocha', '~> 0.10.5'

  s.files        = Dir.glob("lib/**/*")
  s.require_path = 'lib'

  s.test_files   = Dir.glob("spec/**/*_spec.rb")
end