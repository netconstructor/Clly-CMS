$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cllycms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cllycms"
  s.version     = Cllycms::VERSION
  s.authors     = ["Joel Niedfeldt"]
  s.email       = ["joel@coolhunting.com"]
  s.homepage    = "http://www.coolhunting.com"
  s.summary     = "Summary of Cllycms."
  s.description = "Description of Cllycms."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "mongoid", "~> 2.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
