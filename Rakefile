require 'bundler/gem_tasks'
require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test" << "test/pdf2html"
  t.test_files = FileList['test/*_test.rb', 'test/pdf2html/*_test.rb']
  t.verbose = true
end

task :default => :test
