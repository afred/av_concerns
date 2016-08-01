begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

# Load rake tasks from EngineCart
require 'engine_cart/rake_task'

# Load RSpec's :spec rake tasks, and add the engine_cart:generate rake task as
# a prerequisite.
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :spec => ['engine_cart:generate']
