# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tenant.create([{
  tenant_name: 'Water Tracker',
  subdomain: 'app',
  desktop: 'desktop.jpg',
  login: 'login.png',
  logo: 'logo.png'
}]);

User.create( [{
	user_id: 'F01235D0287011E6AEA7123HEF2B3BD8',
	email: 'aaron@buildit.io',
	password: 'pass',
	first_name: 'Aaron',
	last_name: 'Henderson',
	gender: 'male',
	confirmed_at: DateTime.now,
	is_admin: true,
	subdomain: 'app'
},{
	user_id: 'F02755D384123E6AEA7ATOHEF2B3BD83',
	email: 'mascottsd@gmail.com',
	password: "pass",
	first_name: 'Mark',
	last_name: 'Scott',
	gender: 'male',
	confirmed_at: DateTime.now,
	is_admin: true,
	subdomain: 'app'
}]);

Admin.create([{
  admin_id: "F99345D0287011E6AEA7A8667F2B3BC9",
	email: 'mascottsd@gmail.com',
	password: "pass",
  first_name: "Mark",
  last_name: "Scott",
  confirmed_at: DateTime.now
}]);
