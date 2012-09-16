#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Cloud1::Application.load_tasks

namespace :unittest do
  desc "do something"
  task :newdvd => :environment do
     require 'factory_girl'
     #require File.dirname(__FILE__) + '/test/factories.rb'
     FactoryGirl.create(:dvd, name: "12234")
  end
end


