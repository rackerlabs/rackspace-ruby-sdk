require "bundler/gem_tasks"

task :default => :rspec

task :rspec do
  exec "rspec"
end

desc "Start a terminal with this gem preloaded."
task :console do
  exec "irb -r rackspace -I ./lib"
end

desc "Generate a new checklist.md"
task :checklist do
  exec "ruby #{Dir.pwd}/lib/rackspace/tools/checklist.rb"
end
