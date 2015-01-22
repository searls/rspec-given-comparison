desc 'run rspec-given tests'
task :rspec_given do
  sh 'bundle exec rspec --pattern "**/*given_spec.rb"'
end

desc 'run rspec tests'
task :rspec do
  sh 'bundle exec rspec --pattern "**/*vanilla_spec.rb"'
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "test/test_*.rb"
end

task :default => [:rspec_given, :rspec, :test]
