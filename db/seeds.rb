# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


club_fabric = Club.create({

	name: "Fabric",
	description: "3 massive spaces host resident and guest DJs playing drum and bass, dubstep, house and techno.",
	address: "77A Charterhouse St, Clerkenwell, London EC1M 6HJ",
	rating: 4,
	image_url: "https://www.residentadvisor.net/images/clubs/uk-fabric.jpg"
})

club_electric = Club.create({

	name: "Brixton Electric",
	description: "Leading nightclub venue hosting weekly club nights, dance DJ sets and eclectic live music programme.",
	address: "Town Hall Parade, Brixton, London SW2 1RJ",
	rating: 5,
	image_url: "https://pbs.twimg.com/profile_images/443347958784737280/23E69vJ0.png"
})

club_mangle = Club.create({

	name: "Mangle",
	description: "Intimate great value for money venue ",
	address: "13-18 Sidworth Street Hackney, London E8 3SD",
	rating: 4,
	image_url: "https://www.residentadvisor.net/images/clubs/manglelogomaster.jpg"
})

club_nest = Club.create({

	name: "The Nest",
	description: "Small club, big line-up",
	address: "36 Stoke Newington Rd, Dalston, London N16 7XJ",
	rating: 4,
	image_url: "https://www.residentadvisor.net/images/clubs/uk-l-the-nest.jpg"
})

club_oval_space = Club.create({

	name: "Oval Space",
	description: "Oval Space is a multi-use arts space in Bethnal Green that has become synonymous with the capital’s most forward-thinking and exciting programme of music events. In the three short years since it's been open, the 5,000 square foot space has hosted club nights, live shows, experimental classical concerts and much more, becoming one of the most sought after venues in London. From an unassuming entrance, the club opens up into a cavernous warehouse loft with a state of the art d&b audiotechnik sound system and two outdoor terraces. With floor to ceiling glass windows along one side and an uninterrupted view looking out onto the behemoth decommissioned gas works, watching the sun rise over the industrial landscape in East London has become an iconic clubbing experience.",
	address: "29-32 The Oval, London E2 9DT",
	rating: 4,
	image_url: "https://www.residentadvisor.net/images/clubs/uk-london-ovalspace.jpg"
})

club_fire = Club.create({

	name: "Fire",
	description: "Now upgraded as one of London's leading nightclub's offering a multi roomed quality programme of local and international bespoke events covering cutting edge house, techno, bass and more. Out-door terrace and bars, covered queuing, late licenses all powered by Funktion-One Sound. The party never stops. Join us on Facebook or check the website for full info. www.firelondon.net",
	address: "39 Parry St, London SW8 1RT",
	rating: 3,
	image_url: "https://dhzjvxyl79yzn.cloudfront.net/7/2997_4_club-fire.jpg"
})


      t.string :name
      t.string :description
      t.string :line_up
      t.float :price
      t.datetime :time_start
      t.datetime :time_end
      t.string :image_url


event_shogun_audio = Event.create({

	name: "Shogun Audio 13th Birthday",
	description: "We are delighted to announce that on Saturday 13th May, Shogun Audio returns to celebrate their 13th Birthday and new London residency at MangleE8. Expect nothing short of an all-star lineup...",
	line_up: "Friction (13 Years of Shogun Audio Set), Icicle, Technimatic, Rockwell b2b Was A Be, Fourward b2b Joe Ford, Pola & Bryson, Deadline, SP:MC, Linguistics, MC AD",
	price: 10,
	time_start: DateTime.new(2017,5,13,20,0,0),
	time_end: DateTime.new(2017,5,14,3,0,0),
	image_url: "https://www.residentadvisor.net/images/events/flyer/2017/5/uk-0513-935875-938111-front.jpg"

})

event_blackout = Event.create({

	name: "BlackOut",
	description: "Black Sun Empire bring the finest in dark and tech fuelled Drum & Bass to The Nest’s Dalston basement on Friday 14th July for their revered Black Out party. They bring Shogun Audio staple Icicle along for the party as well as German DNB duo Neon Light…",
	line_up: "Black Sun Empire, Icicle, Neonlight",
	price: 15,
	time_start: DateTime.new(2017,7,22,22,0,0),
	time_end: DateTime.new(2017,7,23,4,0,0),
	image_url: "https://www.residentadvisor.net/images/events/flyer/2017/7/uk-0714-978638-956322-front.jpg"

})

event_fabriclive = Event.create({

	name: "FabricLive",
	description: "FABRICLIVE awaits a very special appearance from one of drum & bass’s most influential acts this summer as Bad Company UK play Room One. One of the most highly-coveted groups in drum & bass. Also joining them is TC, who lands following the release of his debut ‘Unleash the Wolves’ LP last year. One of the pioneers of techstep is also locked in as Ed Rush lands, while Dispatch Recordings key player Xtrah returns following the drop of his ‘Disturbance EP’. Room One is rounded off by Insideinfo, Pola & Bryson and Kyrist, while MCs Carasel, AD, 2shy and Messy bring their lyrical wisdom to host the evening. In Room Two, we await a night with one of the UK’s key movements for bass culture as System:Sound take over hosting. They invite a slew of the best in up-front bass-weighted electronics as System's VIVEK lands. He plays alongside Deep Medi’s Commodo, as well as master in eclecticism Chimpo. Also slated is D&B stalwart Loxy, whose affiliation to labels like Exit and Samurai Music show his prowess in pushing 170BPM sounds. Room Two is finally rounded off with an appearance from System Roots. Hosting for the night comes courtesy of Dego Ranking, Donovan Kingjay and Crazy D.",
	line_up: "
		ROOM ONE:
		Bad Company UK
		TC
		Ed Rush
		Xtrah b2b Insideinfo
		Pola & Bryson
		Kyrist
		MCs: Messy, 2SHY, Carasel, AD

		ROOM TWO: 
		SYSTEM:SOUND
		Vivek
		Commodo
		Chimpo
		Loxy
		System Roots
		MCs: Crazy D, Donovan Kingjay, Dego Ranking",
	price: 22,
	time_start: DateTime.new(2017,7,28,23,0,0),
	time_end: DateTime.new(2017,7,29,7,0,0),
	image_url: "https://www.residentadvisor.net/images/events/flyer/2017/7/uk-0728-968566-944683-front.jpg"

})


#brixton electric
event_dimensions = Event.create({

	name: "DIMENSIONS: SUNFALL NIGHT SESSION",
	description: "
		Playing live in London for the first time in years, Larry Heard aka MR Fingers, one of the most prominent figures in the history of underground electronic music, will play a very special full live show. 

		Also on the lineup is Berlin producer and DJ Palms Trax, whose melodic synths and smooth, undulating drum patterns have become his calling card. Dimensions very own Dimensions Soundsystem will also be digging deep into their collections alongside Phonox resident HAAi-. 

		A billing with names exclusive to this night party, don't miss joint day and night joint tickets... 

		18+ Photo ID Required",
	line_up: "
		LARRY HEARD aka MR FINGERS 
		AMP FIDDLER (live) 
		PALM TRAX 
		HAAi 
		DIMENSIONS SOUNDSYSTEM",
	price: 15,
	time_start: DateTime.new(2017,8,12,22,0,0),
	time_end: DateTime.new(2017,8,13,4,0,0),
	image_url: "http://electricbrixton.uk.com/imagesEvents/sunfall%20web%20listing.jpg"

})

#oval_space
event_disco_special = Event.create({

	name: "East London Summer Terrace Party - Funk, Soul & Disco Special",
	description: "
		Following the huge success of last summers East London Funk, Soul & Disco All Dayer, we're back this summer bigger and better, returning to the scenic canalside venue which ticks all of the party boxes - Oval Space alongside our friends Dope Disco.

		We'll be raising the bar on last years festivities, which saw festival style production and world class DJ & Live sets from the likes of Joey Negro, Renegade Brass Band, Henry Wu and more!",
	line_up: "
		Very Special Guest TBA

		Thris Tian

		Love Ssega

		Get Down Edits (Defected Records)

		Wah Wah 45s

		South Beach Recycling

		Gypsy Disco DJs

		DJ Shaun Samuel

		Love Kulture Project Soundsystem",
	price: 12,
	time_start: DateTime.new(2017,7,29,14,0,0),
	time_end: DateTime.new(2017,7,30,5,0,0),
	image_url: "http://www.ovalspace.co.uk/media/original/59677e5a2fa8a/500x9999.jpg"

})

#Fire
event_planet_angel = Event.create({

	name: "PLANET ANGEL SUMMER SHOWCASE",
	description: "
		We feel like the world is too full of hate these days, a few too many walls being built and not enough bridges.
		Here at Planet Angel we love love. And there’s nothing we love more than bringing like-minded people together to share a magical night of friendship, family, love and fantastic music!

		Planet Angel invites you to join us at our indoor festival for our Summer of Love, where Love Trumps Hate!

		What to expect:

		Fantastic soul uplifting music to get you moving and a grooving. Spanning from Trance, Psy Trance, Techno, Drum & Bass, House and Jungle.

		As always there will be our interactive Games and Art that you all know and love! Giant Jenga, Magnetic Poetry, UV Canvas Wall, Space Hoppers, Connect 4, Plasticene, Face Painters, Lego and our famous Sticker Matching Game! Find your matching sticker partner and head to the shop to collect your prize!

		Whether you're a Planet Angel Virgin or a Hard Core Planeteer, looking to make new friends or connect with old ones, there's something for everyone at our party.

		So come to the friendliest party in London and join the Planet Angel Family!

		We can’t wait to see you all there!
		Big Love Xx",
	line_up: "
		MELTDOWN ROOM:

		DJAIDED (Debut)
		For Planet Angel’s Summer of Love, Djaided will be opening the Meltdown room with her hypnotic Techno grooves, warming us up for what’s set to be a scorcher!

		LOKI (Resident)
		Taking us to the next level, he will turn us up a notch with a fusion of progressive, tech and uplifting trance for a journey of euphoric beats and sounds.

		MELODIC NOISE (Debut)
		Now on the Enterrec label and aiming for the European scene, this is one guy to make sure you’re on the dance floor for. We can’t wait for his psychedelic performance in the Meltdown room to entice us all into the rhythm!

		RYD3R
		Now working for Biopulse Records as a label Dj and producer Ryd3r intends to impress on his return to Planet Angel and bring us a unique blend of Tech and PsyTrance to take you on a journey of the senses.",
	price: 16,
	time_start: DateTime.new(2017,8,11,22,0,0),
	time_end: DateTime.new(2017,8,12,6,0,0),
	image_url: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/19989316_10155683813325572_5736536305109830377_n.jpg?oh=ff3b3c3e9fbe4d6b7a62197d2e6556ae&oe=5A0580AF"

})







