# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pismo/version"

Gem::Specification.new do |s|
  s.name        = "pismo"
  s.version     = Pismo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Cooper", "Jasper Kennis"]
  s.email       = ["jasper@fontanel.nl"]
  s.homepage    = "https://github.com/brainsley/pismo"
  s.description = %q{Pismo extracts and retrieves content-related metadata from HTML pages - you can use the resulting data in an organized way, such as a summary/first paragraph, body text, keywords, RSS feed URL, favicon, etc.}
  s.summary     = %q{Extracts or retrieves content-related metadata from HTML pages}
  s.date        = %q{2013-02-22}
  s.default_executable = %q{pismo}

  s.rubyforge_project = "pismo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency(%q<shoulda>, [">= 0"])
  s.add_dependency(%q<awesome_print>, [">= 0"])
  s.add_dependency(%q<nokogiri>, [">= 0"])
  s.add_dependency(%q<sanitize>, [">= 0"])
  s.add_dependency(%q<fast-stemmer>, [">= 0"])
  s.add_dependency(%q<chronic>, [">= 0"])
end
