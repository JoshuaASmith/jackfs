# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jackfs/version"

Gem::Specification.new do |s|
  s.name        = "jackfs"
  s.version     = Jackfs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jack Russell Software"]
  s.email       = ["team@jackrussellsoftware.com"]
  s.homepage    = ""
  s.summary     = 'This is a fs gem we use'
  s.description = 'This is the fs gem we use'

  s.rubyforge_project = "jackfs"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sqlite3', '>= 1.0.0'
  s.add_runtime_dependency 'sequel', '>= 4.0.0'
  s.add_development_dependency 'rspec', '>= 3.0'
end
