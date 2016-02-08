# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paramount/version'

Gem::Specification.new do |spec|
  spec.name          = "paramount"
  spec.version       = Paramount::VERSION
  spec.authors       = ["Charles Sistovaris"]
  spec.email         = ["charlysisto@gmail.com"]
  spec.summary       = %q{Mount your parameteres on a dedicated object.}
  spec.description   = %q{Mount your parameteres on a dedicated object to cerate & update your models and finally give power to the building parts of you controller}
  spec.homepage      = "https://github.com/charly/paramount"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4"
  spec.add_dependency "virtus", "~> 1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 4.7"
  spec.add_development_dependency "active_record", "~> 4"
  spec.add_development_dependency "sqlite3", "~> 4"
end
