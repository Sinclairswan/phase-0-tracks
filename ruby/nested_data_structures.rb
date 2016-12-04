thanksgiving = { 
	meals: {
		main_courses: {
			sinclair: 'turkey',
			cookie: 'stuffing',
			gwen: 'greens',
			tiara: 'sweet_potatoes'
		},
		desserts: {
			brittney: 'cheesecake',
			chris: 'chocolate_cake',
			taylor: 'pecan_pie'

		},
		drinks: [ 
			[
			'coffee',
			'tea',
			'soda'
			],
				[
					'burbon',
					'wine',
					'beer',
					'gin',
					'vodka'
				]
			]		
	}
}

puts thanksgiving[:meals][:drinks][1][0]