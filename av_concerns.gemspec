$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "av_concerns/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "av_concerns"
  s.version     = AvConcerns::VERSION
  s.authors     = ["Andrew Myers"]
  s.email       = ["afredmyers@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AvConcerns."
  s.description = "TODO: Description of AvConcerns."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.7"

  s.add_development_dependency "sqlite3"
end
