# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "bitswarm/version"

Gem::Specification.new do |s|
  s.name        = "bitswarm"
  s.version     = Bitswarm::VERSION
  s.author      = "Reuben Avery"
  s.email       = ["ravery@bitswarm.io"]
  s.homepage    = "https://github.com/bitswarmlabs/bitswarm"
  s.license     = "MIT"
  s.summary       = 'A command line tool to create Bitswarm.io base images.'
  s.description   = <<-EOF
    bitswarm is a command line tool designed to create base images and infrastructure in order to deploy and develop
    the Bitswarm.io ecosystem.
  EOF
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 1.9.2'

  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'cucumber', '~> 2.1'
  s.add_development_dependency 'ra10ke'
end
