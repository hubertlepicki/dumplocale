# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dumplocale/version"

Gem::Specification.new do |s|
  s.name        = "dumplocale"
  s.version     = Dumplocale::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Hubert Łępicki"]
  s.email       = ["hubert.lepicki@amberbit.com"]
  s.homepage    = ""
  s.summary     = %q{Allows you to extract full translations, including Rails' built-in translations to YAML files}
  s.description = %q{If you want to dump full translations to YAML files from I18n::SimpleBackend, and import them later to custom backend, use this gem.}

  s.rubyforge_project = "dumplocale"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
