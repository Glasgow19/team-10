# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Floors
lvl1 = Floor.create!(level: 0)
lvl2 = Floor.create!(level: 1)
lvl3 = Floor.create!(level: 2)

#Zones
zoneA = Zone.create!(name: "A", floor_id: lvl1.id)
zoneB = Zone.create!(name: "B", floor_id: lvl1.id)
zoneC = Zone.create!(name: "C", floor_id: lvl1.id)
zoneD = Zone.create!(name: "D", floor_id: lvl2.id)
zoneE = Zone.create!(name: "E", floor_id: lvl2.id)
zoneF = Zone.create!(name: "F", floor_id: lvl2.id)
zoneG = Zone.create!(name: "G", floor_id: lvl3.id)
zoneH = Zone.create!(name: "H", floor_id: lvl3.id)
zoneI = Zone.create!(name: "I", floor_id: lvl3.id)

#Exhibits

FeelyBox = Exhibit.create(name: "Feely Box", zone_id: zoneA.id)


