require 'rake/testtask'

desc "Run all test cases"
FileList['test/*.rb'].each do |file|
  Rake::TestTask.new do |test|
    test.verbose = true
    test.test_files = [file]
    test.warning = true
  end
end
