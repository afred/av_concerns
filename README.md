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

  1. require `engine_cart/rake_task` in engine's `Rakefile`

  1. Run `bundle exec engine_cart:prepare`.

  1. Build test app with `bundle exec rake engine_cart:generate`. This worked for me. No problems so far.

1. Add `curation_concerns` as a dependency in `av_concerns.gemspec`

  > NOTE: Attempting to run `bundle exec rake engine_cart:generate` here, to regenerate the app with the new bundle dependency did not work, claiming `Could not find gem 'curation_concerns (~> 1.2.0) ruby'`. Had to run `bundle install` explicitly from the engine root. Seems like EngineCart will not rebuild your bundle for you, which makes sense.

1. Use EngineCart's test app when running rspec tests.

  1. Add RSpec's rake task `:spec`

  1. Add 'engine_cart:generate' as a prerequisite for `:spec`

1. Run CurationConcerns installer when generating EngineCart test app.

  1. Add method `TestAppGenerator#install_curation_concerns `in `spec/test_app_templates/lib/generators/test_app_generator.rb`.

  1. Add `require "curation_concerns"` in `lib/av_concerns.rb`. **This is key - the test app will fail to build without this.**

  1. At this point running `rake spec` should spin up a bare-bones CurationConcerns app for testing, and run all your tests (of which there are probably none).

1. Run the engine's installer when generating EngineCart test app

  1. Create a generator for the engine, with at least one method that you can verify has run. More methods for setting up a full installation will come later.

1. Build out the engine's installer

  1. Add a test to check the FileSet object for methods that come from the module AvConcerns::FileSetBehaviors::hasFfprobe. Run the tests and watch it fail.

  1. Add the AvConcerns::FileSetBehavior::hasFfprobe module to the engine.

  1. Add the code to the install generator to include the AvConcerns::FileSetBehavior::hasFfprobe module.

  1. The tests should pass. Make it so.