# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ohlala_rails_scaffold_templates/version"

Gem::Specification.new do |s|
  s.name        = "ohlala_rails_scaffold_templates"
  s.version     = OhlalaRailsScaffoldTemplates::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Swami Atma"]
  s.email       = ["swami@ohlalaweb.com"]
  s.homepage    = ""
  s.summary     = %q{Rails 3+ scaffold templates}
  s.description = %q{A ridiculously opinionated set of scaffold templates for Rails 3 and later. Meant to be used for the Ohlàlà! Webdesigns projects but can be customized to any Rails developer's workflow.}

  s.rubyforge_project = "ohlala_rails_scaffold_templates"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
