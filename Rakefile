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
       FactoryGirl.create(:dvd, name: "Lord of the Rings: The Two Towers", asin: "B000067DNF", summary: "The Fellowship of the Ring (Four-Disc Special Extended Edition) (2001)", date: "November 12, 2002", director_id: "1")
       FactoryGirl.create(:dvd, name: "The Lord Of The Rings: The Fellowship Of The Ring", asin: "B00009TB5G", summary: "The Two Towers (Four-Disc Special Extended Edition) (2002)", date: "November 12, 2003", director_id: "1")
       FactoryGirl.create(:dvd, name: "The Lord Of The Rings: The Return of the King", asin: "B000089Q95", summary: "The Return of the King (Two-Disc Widescreen Theatrical Edition) (2004)", date: "November 12, 2004", director_id: "1")      
       FactoryGirl.create(:dvd, name: "Sleeping Dictionary", asin: "B000089Q95", summary: "Realy boring sounding movie", date: "November 12, 2004", director_id: "1")
       FactoryGirl.create(:dvd, name: "Miss Congeniality", asin: "B007JNR4UU", summary: "Miss Congeniality / Miss Congeniality 2: Armed and Fabulous (Comedy Double Feature) [Blu-ray] (2010)", date: "October 12, 2010", director_id: "1")
       
        FactoryGirl.create(:actor, name: "Elijah Wood", gender: "Male")
        FactoryGirl.create(:actor, name: "Ian McKellen", gender: "Male")
        FactoryGirl.create(:actor, name: "Viggo Mortensen", gender: "Male")
        FactoryGirl.create(:actor, name: "Liv Tyler", gender: "Female")
        FactoryGirl.create(:actor, name: "Jessica Alba", gender: "Female")
        FactoryGirl.create(:actor, name: "Sandra Bullock", gender: "Female")
  
        FactoryGirl.create(:director, name: "Peter Jackson", gender: "Male")
        FactoryGirl.create(:director, name: "Ishiro Honda", gender: "Male")
        FactoryGirl.create(:director, name: "Merian C. Cooper", gender: "Male")
        FactoryGirl.create(:director, name: "Donald Petrie", gender: "Male")
        
        FactoryGirl.create(:dvd_actor,  dvd_id: "1", actor_id: "1") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "1", actor_id: "2") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "1", actor_id: "3") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "1", actor_id: "4") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "2", actor_id: "1") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "2", actor_id: "2") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "2", actor_id: "3") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "2", actor_id: "4") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "3", actor_id: "1") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "3", actor_id: "2") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "3", actor_id: "3") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "3", actor_id: "4") 
        
        FactoryGirl.create(:dvd_actor,  dvd_id: "4", actor_id: "5") 
        FactoryGirl.create(:dvd_actor,  dvd_id: "5", actor_id: "6") 
        
        
  end
end

