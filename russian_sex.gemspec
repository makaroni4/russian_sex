# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'russian_sex/version'

Gem::Specification.new do |gem|
  gem.name          = "russian_sex"
  gem.version       = RussianSex::VERSION
  gem.authors       = ["Anatoli Makarevich"]
  gem.email         = ["makaroni4@gmail.com"]
  gem.description   = %q{Gender detector for russian names.}
  gem.summary       = %q{Based on 40k database of russian first names.}
  gem.homepage      = "https://github.com/makaroni4/russian_sex"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('unicode_utils', '>= 1.4.0')
  gem.add_development_dependency('rake', '~> 10')
end
