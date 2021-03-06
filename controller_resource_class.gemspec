# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'controller_resource_class/version'

Gem::Specification.new do |spec|
  spec.name          = "controller_resource_class"
  spec.version       = ControllerResourceClass::VERSION
  spec.authors       = ["barelyknown"]
  spec.email         = ["sean@buytruckload.com"]
  spec.description   = %q{Add a resource_class method to Rails controllers.}
  spec.summary       = %q{Add a resource_class method to Rails controllers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_dependency "activesupport"
end
