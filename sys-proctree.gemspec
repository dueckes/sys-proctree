# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sys/proctree/version"

Gem::Specification.new do |s|
  s.name = "sys-proctree"
  s.version = ::Sys::ProcTree::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = [ "Matthew Ueckerman" ]
  s.summary = %q{Discovers and can attempt to lay waste to a process tree}
  s.description = %q{Discovers and kills process trees via process lists provided by the sys-proctable gem}
  s.email = %q{ matthew.ueckerman@myob.com }
  s.homepage = "http://github.com/MYOB-Technology/sys-proctree"
  s.rubyforge_project = "sys-proctree"
  s.license = "MIT"

  s.files        = Dir.glob("./lib/**/*")
  s.test_files   = Dir.glob("./spec/**/*")
  s.require_path = "lib"

  s.required_ruby_version = ">= 1.9.3"

  s.add_dependency "sys-proctable", ">= 0.9.8"

  s.add_development_dependency "travis-lint", "~> 2.0"
  s.add_development_dependency "rspec",       "~> 3.4"
  s.add_development_dependency "os",          "~> 0.9"
  s.add_development_dependency "rake",        "~> 11.1"
  s.add_development_dependency "simplecov",   "~> 0.11"
end
