# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jasper-rails-rspec/version"

Gem::Specification.new do |s|
  s.name        = "jasper-rails-rspec"
  s.version     = JasperRailsRSpec::VERSION
  s.authors     = ["Marlus Saraiva", "Rodrigo Maia"]
  s.summary     = %q{jasper-rails RSpec integration}
  s.description = %q{Defines matchers for testing PDFs generated by jasper-rails}
  s.email       = "rodrigomaia@grupofortes.com.br"
  s.homepage    = "https://github.com/fortesinformatica/jasper-rails-rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rspec', '>= 2.8.0')
  s.add_dependency('rspec-rails', '>= 2.8.0')
  s.add_dependency('pdf-inspector', '>= 1.0.1')
  s.add_dependency('jasper-rails', '>= 0.1.1')
end
