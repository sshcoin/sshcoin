# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sshcoin/version'

Gem::Specification.new do |spec|
  spec.name          = "sshcoin"
  spec.version       = Sshcoin::VERSION
  spec.authors       = ["Nathan Amick"]
  spec.email         = ["github@nathanamick.com"]
  spec.description   = %q{Decentralized hosting for autonomous applications}
  spec.summary       = %q{Sshcoin is tool that autonomous applications can use to find and purchase hosting from multiple providers.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
