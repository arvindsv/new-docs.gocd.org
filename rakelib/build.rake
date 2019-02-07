require 'rake/clean'

CLEAN.include('build')
CLEAN.include('resources')
CLEAN.include('public')

task :init do
  sh("yarn install")
end

task :run_hugo do
  sh('yarn run hugo')
end

desc "build the documentation"
task :build => [:clean, :init, :run_hugo, "static_checks:all"]