# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'router/version'

Gem::Specification.new do |spec|
  spec.name          = "router"
  spec.version       = Router::VERSION
  spec.authors       = ["Jason Thompson"]
  spec.email         = ["jason@jthompson.ca"]
  spec.description   = %q{Learning more about rack by writing a router.}
  spec.summary       = %q{A router. Not useable.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
