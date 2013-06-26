# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# wifiread = ActiveSupport::JSON.decode(File.read('public/manhattanwifi.json')) 
# wifiread["data"].each do |a| 
#   Wifi.create!(:name => a[10], 
#     :location => a[9], 
#     :address => a[15][0])
# end 

Rails.application.eager_load! # To load all models app/models/**/*.rb

all_records = ActiveRecord::Base.descendants.map &:all

mydata = all_records.to_json
binding.pry