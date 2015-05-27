# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman/dokku/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-dokku"
  spec.version       = Middleman::Dokku::VERSION
  spec.authors       = ["Nick Maloney"]
  spec.email         = ["ngmaloney@gmail.com"]

  spec.summary       = %q{Rake task for generating files needed to deploy a middleman site to dokku}
  spec.description   = %q{DO THIS!}
  spec.homepage      = "https://github.com/ngmaloney/middleman-dokku"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_dependency "puma", "~> 2.11"
  spec.add_dependency "rake", "~> 10.0"
end
