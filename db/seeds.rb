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
zoneG = Zone.create!(name: "G", floor_id: lvl3.id, coordinates: '138,368,151,344,135,339,252,183,511,209,840,230,795,392,702,389,700,378,511,357,461,397,236,381,172,373')
zoneH = Zone.create!(name: "H", floor_id: lvl3.id, coordinates: '851,230,806,394,981,363,986,373,1413,413,1606,384,1627,265,1179,246')
zoneI = Zone.create!(name: "I", floor_id: lvl3.id, coordinates: '1951,458,2112,503,2258,490,2266,513,2308,445,2295,439,2303,421,2239,384,2247,376,2767,453,2870,310,2846,310,2865,283,2253,275,1638,267,1617,381,1821,368,1847,386,1932,336,2027,402')

#Exhibits

feelyBox = Exhibit.create(name: "Feely Box", zone_id: zoneA.id, coordinates: '1561,636,40')

howTall = Exhibit.create(name: "How Tall Are You?", zone_id: zoneG.id, coordinates: '1538,549,42')
howSprint = Exhibit.create(name: "How Fast Can You Sprint?", zone_id: zoneG.id, coordinates: '1561,636,40')
howStrong = Exhibit.create(name: "How Strong Is Your Grip?", zone_id: zoneG.id, coordinates: '1219,545,32')
howJump = Exhibit.create(name: "How High Can You Jump?", zone_id: zoneG.id, coordinates: '1219,545,32')
howReact = Exhibit.create(name: "How fast are your reactions?", zone_id: zoneG.id, coordinates: '1290,545,35')

smokingBody = Exhibit.create(name: "What Does Smoking Do To Your Body?", zone_id: zoneH.id, coordinates: '1561,636,40')
smokingLungs = Exhibit.create(name: "How Does Smoking Damage Your Lungs?", zone_id: zoneH.id, coordinates: '1408,457,39')
affectsBreathing = Exhibit.create(name: "What Affects Your Breathing?", zone_id: zoneH.id, coordinates: '950,460,37')
heartECG = Exhibit.create(name: "Heart ECG: What Does Your Heart Trace Look Like?", zone_id: zoneH.id, coordinates: '993,654,37')
veins = Exhibit.create(name: "Where Are Your Veins?", zone_id: zoneH.id, coordinates: '1200,440,24')

antiViral = Exhibit.create(name: "Antiviral Hero", zone_id: zoneI.id, coordinates: '843,642,40')
goingViral = Exhibit.create(name: "Going Viral", zone_id: zoneI.id, coordinates: '1838,441,37')
holophonic = Exhibit.create(name: "Holophonic Macrophage Journey", zone_id: zoneI.id, coordinates: '1820,340,24')
mucusNinjas = Exhibit.create(name: "Mucus Ninjas", zone_id: zoneI.id, coordinates: '970,320,24')
bendyMicro = Exhibit.create(name: "Bendy Microscope", zone_id: zoneI.id, coordinates: '843,450,40')

#Descriptions

desc_howTall = Description.create(text: "A free-standing exhibit that allows visitors to measure their height before adding their result to a graph of height versus age. The exhibit features an ultrasound height device, touchscreen and barcode scanner. Results are added to the graph using blue or pink sticker dots, which are available in a recess under the screen.", exhibit_id: howTall.id)
desc_howSprint = Description.create(text: "A sprint track that visitors use to measure the time it takes them to travel the 5-metre distance between the start and finish line. It consists of one lane of athletics-grade matting, a vertical crash mat at the end, a barrier along the side, touchscreen at start, display screen above crash mat, results touchscreen beside crash mat, speaker and two barcode scanners. The results are taken by two light gates and a video camera above the sprint track.", exhibit_id: howSprint.id)
desc_howStrong = Description.create(text: "A table-top exhibit that allow visitors to carry out a grip strength experiment. It consists of a metal handle, touchscreen, barcode scanner and moveable stool.", exhibit_id: howStrong.id)
desc_howJump = Description.create(text: "A free-standing exhibit that allows visitors to measure how high they can jump. It consists of a floor pad with light gates, touchscreen and barcode scanner, all on a raised platform.", exhibit_id: howJump.id)
desc_howReact = Description.create(text: "An exhibit that allows visitors to test their coordination and reaction times. It consists of an array of buttons that can light up, a touchscreen and a barcode scanner. The challenge of the game is to turn off illuminated buttons as quickly as possible. Only one button will light up at a time and the game ends after 15 buttons have been pressed. The buttons are arranged into two playing areas. The small playing area features ten buttons on a purple background. The big playing area features all twenty-three buttons.", exhibit_id: howReact.id)

desc_smokingBody = Description.create(text: "A life-size sculpture of a person with a range of smoking-related health conditions. Part realistic, part abstract, the sculpture visually illustrates around 20 side effects of smoking. It is mounted beside a display case of real cigarette butts. This exhibit has a 4-layer flapper label next to the sculpture. Further information on each condition is available on an interactive webpage, which can be accessed via the QR code or through the GSC website.", exhibit_id: smokingBody.id)
desc_smokingLungs = Description.create(text: "A table-top exhibit featuring two pairs of lungs that visitors can inflate. The lungs are housed in separate clear plastic cylinders. One pair of lungs is a healthy pink colour and the other is blackened from tobacco smoke. The lungs are inflated by soft plastic bags (which are taken from Ambu bags, the mask device used by paramedics to assist with a patient’s breathing). The exhibit features a 3-layer flapper label and a moveable stool.", exhibit_id: smokingLungs.id)
desc_affectsBreathing = Description.create(text: "A table-top exhibit featuring a human torso model with a stethoscope device. When the diaphragm part of the stethoscope makes contact with one of the six markers on the torso, breathing sounds are played through a speaker. The sounds are real recordings and demonstrate what doctors can hear for different lung conditions. The exhibit features a 3-layer flapper label, a wall-graphic showing microscopic images of lungs, and a moveable stool.", exhibit_id: affectsBreathing.id)
desc_heartECG = Description.create(text: "A table-top exhibit with seat that allows visitors to measure and record the electricity of their heart. It consists of an armchair, touchscreen, barcode scanner, and a wall-graphic about the heart. The armchair has three metal sensors: a flat sensor where the visitor sits and a ‘dome’ sensor on each armrest.", exhibit_id: heartECG.id)
desc_veins = Description.create(text: "A table-top exhibit that allows visitors to explore the pattern of their veins using a medical vein illumination device. It consists of a vein illumination device (housed within a box), an ‘on’ button, a 3-layer flapper label and a moveable stool.", exhibit_id: veins.id)

desc_antiViral = Description.create(text: "An IT game that allows visitors to battle with viruses. It consists of a wall-mounted touchscreen and four arcade buttons.", exhibit_id: antiViral.id)
desc_goingViral = Description.create(text: "An IT game that allows visitors to take on the role of the human immune system in a battle against the influenza virus. It consists of two wall-mounted touchscreens and two moveable stools. The visitor has the option of a single- or two-player game.", exhibit_id: goingViral.id)
desc_holophonic = Description.create(text: "A wall-mounted exhibit that allows visitors to listen to a 3D audio story which features personified cells of the immune system. It consists of 2 pairs of headphones, 2 audio control panels (with start and volume buttons), 2 moveable stools and a wall graphic featuring cartoon illustrations of the story. When not in use, the headphones sit on a hook. The audio story lasts 6 minutes and takes advantage of binaural recording to create a 3D audio experience.", exhibit_id: holophonic.id)
desc_mucusNinjas = Description.create(text: "A motion-sensing exhibit that allows visitors to act as a piece of nasal mucus by defending the body from incoming viruses. It consists of a projected screen, Microsoft Kinect sensor and speakers. The playing area is located within a walled zone and marked on the floor. Note, it is a one-player game; the presence of other visitors in the playing area interferes with the motion sensors.", exhibit_id: mucusNinjas.id)
desc_bendyMicro = Description.create(text: "A wall-mounted exhibit that allows visitors to view and record images of their skin from a hand-held microscope. It consists of a video microscope, touchscreen and barcode scanner. The microscope is attached to the wall by flexible tubing and sits in a cradle when not in use.", exhibit_id: bendyMicro.id)


fact_smokingBody = Fact.create(text: "Smoking has a negative effect on your health", exhibit_id: smokingBody.id)
fact_smokingLungs = Fact.create(text: "Second hand smoke is almost as harmful to others as it is to you", exhibit_id: smokingLungs.id)
fact_affectsBreathing = Fact.create(text: "This is a fact!", exhibit_id: affectsBreathing.id)
fact_heartECG = Fact.create(text: "You have a heart. Fact!", exhibit_id: heartECG.id)
fact_veins = Fact.create(text: "You have veins. Fact!", exhibit_id: veins.id)

#Tags

tags_howTall = Tag.create(physical: 1, exhibit_id: howTall.id)
tags_howSprint = Tag.create(physical: 1, exhibit_id: howSprint.id)
tags_howStrong = Tag.create(physical: 1, exhibit_id: howStrong.id)
tags_howJump = Tag.create(physical: 1, exhibit_id: howJump.id)
tags_howReact = Tag.create(physical: 1, exhibit_id: howReact.id)

tags_smokingBody = Tag.create(visual_impairment: 1, exhibit_id: smokingBody.id)
tags_holophonic = Tag.create(hearing_impairment: 1, exhibit_id: holophonic.id)

tags_antiViral = Tag.create(autism: 1, epilepsy: 1, exhibit_id: antiViral.id)
tags_goingViral = Tag.create(autism: 1, dementia: 1, exhibit_id: goingViral.id)