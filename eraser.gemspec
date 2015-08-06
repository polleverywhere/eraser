# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eraser/version'

Gem::Specification.new do |spec|
  spec.name          = "eraser"
  spec.version       = Eraser::VERSION
  spec.authors       = ["Steel Fu"]
  spec.email         = ["steelfu@gmail.com"]

  spec.summary       = %q{Erase or replace unicode space separators and line terminators.}
  spec.description   = %q{Erase or replace unicode space separators and line terminators.}
  spec.homepage      = "https://github.com/polleverywhere/eraser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
