# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awesome_scrub/version'

Gem::Specification.new do |spec|
  spec.name          = "awesome_scrub"
  spec.version       = AwesomeScrub::VERSION
  spec.authors       = ["sanemat"]
  spec.email         = ["o.gata.ken@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.5.0.rc"
  spec.add_development_dependency "rake"
  # NOTE: Recommend, but if you implement `#scrub` yourself, no problem.
  #spec.add_dependency 'string-scrub' if RUBY_VERSION < '2.1'
end
