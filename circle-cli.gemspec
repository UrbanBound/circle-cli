# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'circle-cli/version'

Gem::Specification.new do |s|
  s.name          = "circle-cli"
  s.version       = Circle::Cli::VERSION
  s.authors       = ["Max Kuipers"]
  s.email         = ["max.kuipers@gmail.com"]
  s.homepage      = "https://github.com/UrbanBound/circle-cli"
  s.summary       = "Interact with Circle CI from your command line."
  s.description   = "This is a command line tool that allows easy access to more common functions when using Circle CI."
  s.executables   << 'circle'

  s.add_runtime_dependency 'circleci'
  s.add_runtime_dependency 'thor'

  s.files         = `git ls-files bin lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
end
