require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :console do
  exec "irb -r rackspace -I ./lib"
end

namespace :mock do
  desc "Start Mock Server"
  task :server do
    system "ruby ./spec/support/backspace/backspace.rb"
  end

  desc "Run the specs"
  task :spec do
    system "RACKSPACE_MOCK=true rspec spec"
  end
end
