# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Coordinate.destroy_all

p "deleting categories and coordinates"

cat1 = Category.create(name: 'UWS', url_name: '_uws', postal_code: '')
cat2 = Category.create(name: 'Midtown West/ Hell’s Kitchen', url_name: 'midtown_west_hells_kitchen', postal_code: '')
cat3 = Category.create(name: 'Times Square/Broadway', url_name: 'times_square_broadway', postal_code: '')
cat4 = Category.create(name: 'Fashion/Garment District', url_name: 'fashion_garment_district', postal_code: '')
cat5 = Category.create(name: 'Chelsea', url_name: '_chelsea', postal_code: '')
cat6 = Category.create(name: 'Meatpacking District', url_name: 'meatpacking', postal_code: '')
cat7 = Category.create(name: 'West Village', url_name: 'west_village', postal_code: '')
cat8 = Category.create(name: 'SoHo', url_name: 'soho', postal_code: '')
cat9 = Category.create(name: 'Tribeca/Battery Park City', url_name: 'tribeca_battery_park', postal_code: '')
cat10 = Category.create(name: 'Financial District/ Wall Street', url_name: 'financial_district', postal_code: '')
cat11 = Category.create(name: 'Chinatown', url_name: 'chinatown', postal_code: '')
cat12 = Category.create(name: 'Little Italy', url_name: 'little_italy', postal_code: '')
cat13 = Category.create(name: 'Lower East Side', url_name: 'les', postal_code: '')
cat14 = Category.create(name: 'Greenwich Village', url_name: 'greenwich_village', postal_code: '')
cat15 = Category.create(name: 'NoHo', url_name: 'noho', postal_code: '')
cat16 = Category.create(name: 'East Village', url_name: 'east_village', postal_code: '')
cat17 = Category.create(name: 'Union Square/ Flatiron District', url_name: '_union_square_flatiron', postal_code: '')
cat18 = Category.create(name: 'Midtown East', url_name: 'midtown_east', postal_code: '')
cat19 = Category.create(name: 'Upper East Side', url_name: 'ues', postal_code: '10001')
cat20 = Category.create(name: 'Harlem', url_name: 'harlem', postal_code: '10026')
cat21 = Category.create(name: 'East Harlem', url_name: 'east_harlem', postal_code: '10029')
cat22 = Category.create(name: 'Morningside Heights', url_name: 'morningside_heights', postal_code: '')
cat23 = Category.create(name: 'Washington Heights', url_name: 'washington_heights', postal_code: '')
cat24 = Category.create(name: 'Yorkville', url_name: 'yorkville', postal_code: '')
cat25 = Category.create(name: 'Roosevelt Island', url_name: 'roosevelt_island', postal_code: '10044')


Coordinate.create([
		{latitude: 40.71460639867943, longitude: -74.01733875274658, category: cat10},
		{latitude: 40.70484714530104, longitude: -74.01939868927002, category: cat10},
		{latitude: 40.70055262070329, longitude: -74.01347637176514, category: cat10},
		{latitude: 40.70790519856078, longitude: -73.99982929229736, category: cat10},
		{latitude: 40.71232936749063, longitude: -74.00506496429443, category: cat10},
		{latitude: 40.71154865315637, longitude: -74.00824069976807, category: cat10},
		{latitude: 40.71460639867943, longitude: -74.01733875274658, category: cat10}
	])

p "building coordinates and categories. all done"