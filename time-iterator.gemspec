# coding: utf-8
require File.expand_path('../lib/time_iterator/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "time-iterator"
  spec.version       = TimeIterator::VERSION
  spec.homepage      = "https://github.com/vid-io/time-iterator"
  spec.authors       = ["Aleksey V Zapparov"]
  spec.email         = ["ixti@member.fsf.org"]
  spec.license       = "MIT"
  spec.summary       = "time-iterator-#{TimeIterator::VERSION}"
  spec.description   = <<-DESC
    Utility class to iterate through times with a given step size.
  DESC

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
