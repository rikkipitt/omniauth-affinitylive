# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth/affinitylive/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-affinitylive"
  spec.version       = Omniauth::Affinitylive::VERSION
  spec.authors       = ["Rikki pitt"]
  spec.email         = ["rikkipitt@gmail.com"]
  spec.description   = "AffinityLive authentication strategy for OmniAuth."
  spec.summary       = "AffinityLive authentication strategy for OmniAuth."
  spec.homepage      = "http://github.com/rikkipitt/omniauth-affinitylive"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2"
  spec.add_runtime_dependency "multi_xml", "~> 0.5"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.0"

end
