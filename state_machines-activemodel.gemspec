# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'state_machines/integrations/version'

Gem::Specification.new do |spec|
  spec.name          = 'state_machines-activemodel'
  spec.version       = StateMachines::Integrations::ActiveModel::VERSION
  spec.authors       = ['Abdelkader Boudih', 'Aaron Pfeifer']
  spec.email         = ['terminale@gmail.com']
  spec.summary       = %q(ActiveModel integration for State Machines)
  spec.description   = %q(Adds support for creating state machines for attributes on ActiveModel)
  spec.homepage      = 'https://github.com/seuros/state_machines-activemodel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'state_machines'    , '>= 0'
  spec.add_dependency 'activemodel' , '>= 3.2'

  spec.add_development_dependency 'bundler', '>= 1.6'
  spec.add_development_dependency 'rake', '>= 10'
  spec.add_development_dependency 'appraisal', '>= 1'
  spec.add_development_dependency 'rspec' , '3.0.0.beta2'
end
