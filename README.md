= AvConcerns

1. Generate engine using: `rails plugin new AVConcerns --mountable --skip-test-unit`.
1. Adds rspec as dev dependency. Also...
  * Changes `README.rdoc` to `README.md`, and removes RDoc stuff from `Rakefile`
  * Removes invalid "TODO" strings from required gemspec values.
  * Adds `Gemfile.lock` to `.gitignore`. Wonder why it isn't there by default for a gem?
1. Installs RSpec with `bundle exec rails generate rspec:install`.
1. 