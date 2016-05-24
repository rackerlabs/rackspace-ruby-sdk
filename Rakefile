require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Start a terminal with this gem preloaded."
task :console do
  exec "irb -r rackspace -I ./lib"
end

desc "Generate a new checklist.md"
task :checklist do
  exec "ruby #{Dir.pwd}/lib/rackspace/tools/checklist.rb"
end

desc "Test all Factories"
task :harness do
  exec "ruby #{Dir.pwd}/lib/rackspace/tools/harness.rb"
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
