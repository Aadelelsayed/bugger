# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Users = User.create(
	[{ name: 'Developer', email: 'd@bugger.com', password: 'foobar', user_type: 1 },
	 { name: 'QA', email: 'qa@bugger.com', password: 'foobar', user_type: 2 },
	 { name: 'Manager', email: 'm@bugger.com', password: 'foobar', user_type: 3 }
	])