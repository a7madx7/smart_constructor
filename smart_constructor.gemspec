# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_constructor/version'

Gem::Specification.new do |spec|
  spec.name          = "smart_constructor"
  spec.version       = SmartConstructor::VERSION
  spec.authors       = ["Ahmad Hamdi"]
  spec.email         = ["ahmad.hamdi.emara@gmail.com"]

  spec.summary       = %q{Creates instance variables from any passed hash automatically on the fly}
  spec.description   = %q{Once you require 'smart_constructor' your constructors will have the ability to create
    instance variables from any passed hash on the fly, note: you have to be careful with this one and know exactly
    what you're doing, otherwise it will mess up you code base}
  spec.homepage      = "https://github.com/a7madx7/smart_constructor"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "must-test-unit"
  spec.add_runtime_dependency "new_init"
end
