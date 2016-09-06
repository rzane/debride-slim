# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "debride-slim"
  spec.version       = '0.1.0'
  spec.authors       = ["Ray Zane"]
  spec.email         = ["ray@promptworks.com"]

  spec.summary       = %q{Slim support for debride.}
  spec.description   = spec.summary
  spec.homepage      = "http://github.com/rzane/debride-slim"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
