# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awesome_scrub/version'

Gem::Specification.new do |spec|
  spec.name          = 'awesome_scrub'
  spec.version       = AwesomeScrub::VERSION
  spec.authors       = ['sanemat']
  spec.email         = ['o.gata.ken@gmail.com']
  spec.summary       = %q{Easy to use String#scrub.}
  spec.description   = %q{Wrap String#scrub preventing Invalid byte sequence in UTF-8.}
  spec.homepage      = 'https://github.com/sanemat/awesome_scrub'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '> 4'
  # NOTE: Recommend, but if you implement `#scrub` yourself, no problem.
  #spec.add_dependency 'string-scrub' if RUBY_VERSION < '2.1'
end
