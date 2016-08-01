# Building AVConcerns - an example engine for Hydradam

1. Generate engine using: `rails plugin new AVConcerns --mountable --skip-test-unit`.
1. Adds rspec as dev dependency in `av_concerns.gemspec`. Also...
  * Changes `README.rdoc` to `README.md`, and removes RDoc stuff from `Rakefile`
  * Removes invalid "TODO" strings from required gemspec values.
  * Adds `Gemfile.lock` to `.gitignore`.
    > NOTE: Why it isn't there by default for a gem, when you're not supposed to check your gem's Gemfile.lock into revision?
1. Installs RSpec with `bundle exec rails generate rspec:install`.
1. Setup `engine_cart`...
  1. Add `engine_cart` as dev dependency in `av_concerns.gemspec`.
    > NOTE: Docs in Github say to add to "engine's Gemfile", but that's not common practice, unless you don't want to commit to the dependency. But I think in general, you're gem is typically opinionated about which test tools it uses to test itself. Are the `engine_cart` docs just being extra un-opinionated?
  1. Run `bundle install`.
  1. require 'engine_cart/rake_task' in engine's `Rakefile`
  1. Run `bundle exec engine_cart:prepare`.
  1. Build test app with `bundle exec rake engine_cart:generate`. **This worked for me. No problems so far.**
1. Add `curation_concerns` as a dependency in `av_concerns.gemspec`
  > NOTE: Attempting to run `bundle exec rake engine_cart:generate` here, to regenerate the app with the new bundle dependency did not work, claiming `Could not find gem 'curation_concerns (~> 1.2.0) ruby'`. Had to run `bundle install` explicitly from the engine root.
