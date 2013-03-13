# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tire/version'

Gem::Specification.new do |spec|
  spec.name          = "tire-am_serializers"
  spec.version       = Tire::AmSerializers::VERSION
  spec.authors       = ["Sergey Efremov", "Ilya Zayats"]
  spec.email         = ["efremov.sergey@gmail.com", "somebody32@gmail.com"]
  spec.description   = %q{The easy way to add active model serializers to your tire results}
  spec.summary       = %q{The easy way to add active model serializers to your tire results}
  spec.homepage      = "https://github.com/ResumUP/tire_am_serializers/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "tire"
  spec.add_dependency "active_model_serializers"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end