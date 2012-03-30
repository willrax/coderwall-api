# -*- encoding: utf-8 -*-
require File.expand_path('../lib/coderwall-api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Will"]
  gem.email         = ["me@willrax.com"]
  gem.description   = "A gem to access the Coderwall api"
  gem.summary       = "This gem will allow access to the Coderwall api and can be easily updated as the api grows"
  gem.homepage      = "http://github.com/willrax/coderwall-api"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coderwall-api"
  gem.require_paths = ["lib"]
  gem.version       = Coderwall::Api::VERSION
end
