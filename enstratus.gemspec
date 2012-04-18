# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "enstratus/version"

Gem::Specification.new do |s|
  s.name        = "enstratus"
  s.version     = Enstratus::VERSION
  s.authors     = ["John E. Vincent"]
  s.email       = ["lusis.org+github.com@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "enstratus"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "excon"
  s.add_runtime_dependency "nokogiri"
end
