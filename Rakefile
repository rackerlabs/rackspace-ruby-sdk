require "bundler/gem_tasks"

task :default => :rspec

task :rspec do
  exec "RACKSPACE_MOCK=true rspec"
end

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
    exec "RACKSPACE_MOCK=true ruby ./spec/support/backspace/backspace.rb"
  end

  desc "Run the specs"
  task :spec do
    exec "RACKSPACE_MOCK=true rspec spec"
  end
end
