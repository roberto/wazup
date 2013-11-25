# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.where(title: "Example Project").delete

project = Project.new(title: "Example Project")

project.hosts << Host.new(address: "http://google.com/", name: "Google 1")
project.hosts << Host.new(address: "https://www.google.com/", name: "Google 2", auto: true)
project.hosts << Host.new(address: "https://google.com", auto: true)

project.save!
