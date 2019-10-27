# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Floors
lvl1 = Floor.new(level: 0).save!
lvl2 = Floor.new(level: 1).save!
lvl3 = Floor.new(level: 2).save!

#Zones
zoneA = Zone.new(name: "A", floor_id: 1).save!
zoneB = Zone.new(name: "B", floor_id: 1).save!
zoneC = Zone.new(name: "C", floor_id: 1).save!
zoneD = Zone.new(name: "D", floor_id: 2).save!
zoneE = Zone.new(name: "E", floor_id: 2).save!
zoneF = Zone.new(name: "F", floor_id: 2).save!
zoneG = Zone.new(name: "G", floor_id: 3).save!
zoneH = Zone.new(name: "H", floor_id: 3).save!
zoneI = Zone.new(name: "I", floor_id: 3).save!