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

howTall = Exhibit.create(name: "How Tall Are You?", zone_id: zoneG.id)
howSprint = Exhibit.create(name: "How Fast Can You Sprint?", zone_id: zoneG.id)
howStrong = Exhibit.create(name: "How Strong Is Your Grip?", zone_id: zoneG.id)
howJump = Exhibit.create(name: "How High Can You Jump?", zone_id: zoneG.id)
howReact = Exhibit.create(name: "How fast are your reactions?", zone_id: zoneG.id)

antiViral = Exhibit.create(name: "Antiviral Hero", zone_id: zoneI.id)
goingViral = Exhibit.create(name: "Going Viral", zone_id: zoneI.id)
holophonic = Exhibit.create(name: "Holophonic Macrophage Journey", zone_id: zoneI.id)
mucusNinjas = Exhibit.create(name: "Mucus Ninjas", zone_id: zoneI.id)
bendyMicro = Exhibit.create(name: "Bendy Microscope", zone_id: zoneI.id)