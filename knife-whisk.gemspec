# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife-whisk/version'

Gem::Specification.new do |gem|
  gem.name          = "knife-whisk"
  gem.version       = Knife::Whisk::VERSION
  gem.authors       = ["Nic Grayson"]
  gem.email         = ["nic.grayson@banno.com"]
  gem.summary       = %q{Extends knife to whip up server create commands}
  gem.description   = gem.summary
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.add_development_dependency 'chef'
  gem.require_paths = ["lib"]
end
