$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap-helper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap-helper"
  s.version     = BootstrapHelper::VERSION
  s.authors     = ["Dianhui Nie"]
  s.email       = ["dianhui.nie@gmail.com"]
  s.homepage    = "https://github.com/niedhui/bootstrap-helper"
  s.summary     = "Some view helpers for twitter bootstrap"
  s.description = "Some view helpers for twitter bootstrap"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"

end
