# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudformer/version'

Gem::Specification.new do |spec|
  spec.name          = "cloudformer2"
  spec.version       = Cloudformer::VERSION
  spec.authors       = ["Sentia MPC", "Dennis Vink"]
  spec.email         = ["dennis.vink@sentia.com"]
  spec.description   = %q{Cloudformation tasks for apply(create/update), delete, recreate on stack along with validations on templates}
  spec.summary       = %q{Cloudformer attempts to simplify AWS Cloudformation stack creation process in ruby projects by providing reusable rake tasks to perform common operations such as apply(create/update), delete, recreate on stack along with validations on templates.}
  spec.homepage      = "https://github.com/sentialabs/cloudformer2"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_dependency "rake"
  spec.add_dependency "aws-sdk-v1", '~> 1.67.0'
  spec.add_dependency "aws-sdk", '~> 2.10.9'
  spec.add_dependency "httparty"
end
