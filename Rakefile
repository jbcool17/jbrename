require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'shellwords'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


desc "Setup Test Files/Folders"
task :setup_test_folders do
  `rm -rf TEST/*`

  10.times do |i|
    puts "Creating TEST/PK_EP 190#{i}..."

    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}`

    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("02 Somthing Cats")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("03 Somthing Ducks")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("04 Somthing Dogs")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("05 Somthing Mate")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("06 Somthing Test")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("07 Somthing Cap")}`
    `mkdir -p #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("08 Somthing Production")}`

    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("02 Somthing Cats")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("03 Somthing Ducks")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("04 Somthing Dogs")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("05 Somthing Mate")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("06 Somthing Test")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("07 Somthing Cap")}/#{Shellwords.escape('test test.txt')}`
    `touch #{Shellwords.escape("TEST/PK_EP 190")}#{i}/#{Shellwords.escape("08 Somthing Production")}/#{Shellwords.escape('test test.txt')}`
  end
end
