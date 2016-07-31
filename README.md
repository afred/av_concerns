= AvConcerns

1. Generate engine using: `rails plugin new AVConcerns --mountable --skip-test-unit`.
1. Adds rspec as dev dependency. Also...
  * Changes `README.rdoc` to `README.md`, and removes RDoc stuff from `Rakefile`
  * Removes invalid "TODO" strings from required gemspec values.
1. Installs RSpec with `bundle exec rails generate rspec:install`.
