# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "masker/version"

Gem::Specification.new do |s|
  s.name = %q{masker}
  s.version = Masker::VERSION
  s.authors = ["Chanras Sun"]
  s.email = %q{chanras.sun@gmail.com}
  s.description = %q{Standalone Ruby code for the selective rewriting of MySQL dumps in order to protect user privacy.}

  s.homepage = %q{https://github.com/webessentials/masker}
  s.summary = %q{Standalone Ruby code for the selective rewriting of MySQL dumps in order to protect user privacy.}

  s.add_dependency "ffaker"
  s.add_dependency "walker_method"
  s.add_development_dependency "rspec"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f)}
  s.require_paths = ["lib"]
end
