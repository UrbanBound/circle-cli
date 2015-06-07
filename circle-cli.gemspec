# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'circle-cli/version'

Gem::Specification.new do |s|
  s.name          = "circle-cli"
  s.version       = Circle::Cli::VERSION
  s.authors       = ["Max Kuipers"]
  s.email         = ["max.kuipers@gmail.com"]
  s.homepage      = "https://github.com//circle-cli"
  s.summary       = "TODO: summary"
  s.description   = "TODO: description"

  s.files         = `git ls-files bin lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
end
