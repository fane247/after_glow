# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

      t.string :name
      t.string :description
      t.string :address
      t.integer :rating
      t.string :image_url



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







