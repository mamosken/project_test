# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category.destroy_all
# Coordinate.destroy_all
# Price.destroy_all


p "building prices, coordinates, and categories."

pri1 = Price.create(range: '$500 to $750')
pri2 = Price.create(range: '$750 to $1,000')
pri3 = Price.create(range: '$1,000 to $1,250')
pri4 = Price.create(range: '$1,250 to $1,500')
pri5 = Price.create(range: '$1,750 to $2,000')

p "building prices, coordinates, and categories."

cat1 = Category.create(name: 'UWS', url_name: 'uws', postal_code: '10024')
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
		{latitude: 40.806036, longitude: -73.971286, category: cat1},
		{latitude: 40.773090, longitude: -73.994031, category: cat1},
		{latitude: 40.767824, longitude: -73.982187, category: cat1},
		{latitude: 40.800546, longitude: -73.958487, category: cat1},
		{latitude: 40.806036, longitude: -73.971286, category: cat1}
	])
Coordinate.create([
  		{latitude: 40.752190, longitude: -73.993337, category: cat2},
		{latitude: 40.757391, longitude: -74.004666, category: cat2},
		{latitude: 40.773058, longitude: -73.994195, category: cat2},
		{latitude: 40.767663, longitude: -73.982608, category: cat2},
		{latitude: 40.752190, longitude: -73.993337, category: cat2}
 	])
Coordinate.create([
  		{latitude: 40.764229, longitude: -73.985023, category: cat3},
		{latitude: 40.756102, longitude: -73.990859, category: cat3},
		{latitude: 40.753696, longitude: -73.985280, category: cat3},
		{latitude: 40.761888, longitude: -73.979186, category: cat3},
		{latitude: 40.764229, longitude: -73.985023, category: cat3}
	 ])
Coordinate.create([
  		{latitude: 40.753401, longitude: -73.996301, category: cat4},
		{latitude: 40.749809, longitude: -73.987782, category: cat4},
		{latitude: 40.753515, longitude: -73.985100, category: cat4},
		{latitude: 40.755978, longitude: -73.990743, category: cat4},
		{latitude: 40.757197, longitude: -73.989789, category: cat4},
		{latitude: 40.758427, longitude: -73.992653, category: cat4},
		{latitude: 40.753401, longitude: -73.996301, category: cat4}
	 ])
Coordinate.create([
  		{latitude: 40.757000, longitude: -74.005022, category: cat5}, 
		{latitude: 40.749588, longitude: -74.009056, category: cat5}, 
		{latitude: 40.742207, longitude: -74.008927, category: cat5}, 
		{latitude: 40.737297, longitude: -73.996482, category: cat5}, 
   		{latitude: 40.749718, longitude: -73.987470, category: cat5},
   		{latitude: 40.757000, longitude: -74.005022, category: cat5}

	 ])
Coordinate.create([
  		{latitude: 40.742293, longitude: -74.008713, category: cat6},
		{latitude: 40.739411, longitude: -74.009700, category: cat6},
		{latitude: 40.739403, longitude: -74.005408, category: cat6},
		{latitude: 40.740833, longitude: -74.005151, category: cat6},
  		{latitude: 40.742293, longitude: -74.008713, category: cat6}
	 ]) 
Coordinate.create([
  		{latitude: 40.742432, longitude: -74.008152, category: cat7},
		{latitude: 40.729165, longitude: -74.010813, category: cat7},
		{latitude: 40.728257, longitude: -74.002951, category: cat7},
		{latitude: 40.737266, longitude: -73.996571, category: cat7},
  		{latitude: 40.742432, longitude: -74.008152, category: cat7}
	])
Coordinate.create([
  		{latitude: 40.728247, longitude: -74.002868, category: cat8},
		{latitude: 40.721962, longitude: -74.005529, category: cat8},
		{latitude: 40.719002, longitude: -74.001259, category: cat8},
		{latitude: 40.725198, longitude: -73.995851, category: cat8},
  		{latitude: 40.728247, longitude: -74.002868, category: cat8}
 	])
Coordinate.create([
  		{latitude: 40.725913, longitude: -74.010787, category: cat9},
		{latitude: 40.713553, longitude: -74.013834, category: cat9},
		{latitude: 40.719002, longitude: -74.008642, category: cat9},
		{latitude: 40.719246, longitude: -74.002119, category: cat9},
  		{latitude: 40.725913, longitude: -74.010787, category: cat9}
 	])
Coordinate.create([
		{latitude: 40.71460639867943, longitude: -74.01733875274658, category: cat10},
		{latitude: 40.70484714530104, longitude: -74.01939868927002, category: cat10},
		{latitude: 40.70055262070329, longitude: -74.01347637176514, category: cat10},
		{latitude: 40.70790519856078, longitude: -73.99982929229736, category: cat10},
		{latitude: 40.71232936749063, longitude: -74.00506496429443, category: cat10},
		{latitude: 40.71154865315637, longitude: -74.00824069976807, category: cat10},
		{latitude: 40.71460639867943, longitude: -74.01733875274658, category: cat10}
	])
Coordinate.create([
		{latitude: 40.708421, longitude: -73.999112, category: cat11},
		{latitude: 40.714211, longitude: -74.006236, category: cat11},
		{latitude: 40.719156, longitude: -74.001945, category: cat11},
		{latitude: 40.716895, longitude: -73.997825, category: cat11},
		{latitude: 40.719058, longitude: -73.996666, category: cat11},
		{latitude: 40.718456, longitude: -73.994757, category: cat11},
		{latitude: 40.717301, longitude: -73.995293, category: cat11},
		{latitude: 40.715854, longitude: -73.989800, category: cat11},
		{latitude: 40.710161, longitude: -73.989886, category: cat11},
		{latitude: 40.708421, longitude: -73.999112, category: cat11}
	])
Coordinate.create([
		{latitude: 40.721038, longitude: -73.998262, category: cat12},
		{latitude: 40.718468, longitude: -74.000580, category: cat12},
		{latitude: 40.716842, longitude: -73.997790, category: cat12},
		{latitude: 40.718989, longitude: -73.996460, category: cat12},
		{latitude: 40.718452, longitude: -73.994840, category: cat12},
		{latitude: 40.719485, longitude: -73.994432, category: cat12},
		{latitude: 40.721038, longitude: -73.998262, category: cat12}
	])
Coordinate.create([
		{latitude: 40.722855, longitude: -73.988694, category: cat13},
		{latitude: 40.714041, longitude: -73.994058, category: cat13},
		{latitude: 40.709551, longitude: -73.991870, category: cat13},
		{latitude: 40.711015, longitude: -73.977150, category: cat13},
		{latitude: 40.718757, longitude: -73.973502, category: cat13},
		{latitude: 40.722855, longitude: -73.988694, category: cat13}
	])
Coordinate.create([
		{latitude: 40.742119, longitude: -74.009174, category: cat14},
		{latitude: 40.729112, longitude: -74.010934, category: cat14},
		{latitude: 40.725632, longitude: -73.996986, category: cat14},
		{latitude: 40.734445, longitude: -73.990377, category: cat14},
		{latitude: 40.742119, longitude: -74.009174, category: cat14}
	])
Coordinate.create([
		{latitude: 40.730033, longitude: -73.992877, category: cat15},
		{latitude: 40.725399, longitude: -73.996782, category: cat15},
		{latitude: 40.724139, longitude: -73.992641, category: cat15},
		{latitude: 40.729789, longitude: -73.990763, category: cat15},
		{latitude: 40.730033, longitude: -73.992877, category: cat15}
	])
Coordinate.create([
		{latitude: 40.734307, longitude: -73.989750, category: cat16},
		{latitude: 40.724193, longitude: -73.992582, category: cat16},
		{latitude: 40.718729, longitude: -73.973613, category: cat16},
		{latitude: 40.726600, longitude: -73.971639, category: cat16},
		{latitude: 40.734307, longitude: -73.989750, category: cat16}
	])	
Coordinate.create([
		{latitude: 40.744782, longitude: -73.991300, category: cat17},
		{latitude: 40.737628, longitude: -73.996664, category: cat17},
		{latitude: 40.734019, longitude: -73.988854, category: cat17},
		{latitude: 40.741400, longitude: -73.983446, category: cat17},
		{latitude: 40.744782, longitude: -73.991300, category: cat17}
	])
Coordinate.create([
		{latitude: 40.764149, longitude: -73.973080, category: cat18},
		{latitude: 40.753454, longitude: -73.980805, category: cat18},
		{latitude: 40.748220, longitude: -73.968102, category: cat18},
		{latitude: 40.758410, longitude: -73.959064, category: cat18},
		{latitude: 40.764149, longitude: -73.973080, category: cat18}
	])
Coordinate.create([
		{latitude: 40.787785, longitude: -73.955674, category: cat19},
		{latitude: 40.764321, longitude: -73.973184, category: cat19},
		{latitude: 40.758535, longitude: -73.958764, category: cat19},
		{latitude: 40.775242, longitude: -73.942370, category: cat19},
		{latitude: 40.782846, longitude: -73.943572, category: cat19},
		{latitude: 40.787785, longitude: -73.955674, category: cat19}
	])
Coordinate.create([
		{latitude: 40.834403, longitude: -73.950492, category: cat20},
		{latitude: 40.818880, longitude: -73.961478, category: cat20},
		{latitude: 40.801145, longitude: -73.959590, category: cat20},
		{latitude: 40.797052, longitude: -73.949204, category: cat20},
		{latitude: 40.817841, longitude: -73.934012, category: cat20},
		{latitude: 40.828233, longitude: -73.934356, category: cat20},
		{latitude: 40.834403, longitude: -73.950492, category: cat20}
	])
Coordinate.create([
		{latitude: 40.817943, longitude: -73.934095, category: cat21},
		{latitude: 40.788057, longitude: -73.955724, category: cat21},
		{latitude: 40.782793, longitude: -73.943622, category: cat21},
		{latitude: 40.798194, longitude: -73.929117, category: cat21},
		{latitude: 40.808524, longitude: -73.934610, category: cat21},
		{latitude: 40.817684, longitude: -73.933923, category: cat21},
		{latitude: 40.817943, longitude: -73.934095, category: cat21}
	])
Coordinate.create([
		{latitude: 40.818028, longitude: -73.962164, category: cat22},
		{latitude: 40.806140, longitude: -73.971262, category: cat22},
		{latitude: 40.801917, longitude: -73.960962, category: cat22},
		{latitude: 40.811857, longitude: -73.955126, category: cat22},
		{latitude: 40.818028, longitude: -73.962164, category: cat22}
	])
Coordinate.create([
		{latitude: 40.877258, longitude: -73.926897, category: cat23},
		{latitude: 40.834412, longitude: -73.950415, category: cat23},
		{latitude: 40.828177, longitude: -73.934622, category: cat23},
		{latitude: 40.839217, longitude: -73.933077, category: cat23},
		{latitude: 40.872261, longitude: -73.910589, category: cat23},
		{latitude: 40.877258, longitude: -73.926897, category: cat23}
	])
Coordinate.create([
		{latitude: 40.785256, longitude: -73.949404, category: cat24},
		{latitude: 40.774337, longitude: -73.957472, category: cat24},
		{latitude: 40.770242, longitude: -73.947601, category: cat24},
		{latitude: 40.775539, longitude: -73.942537, category: cat24},
		{latitude: 40.782786, longitude: -73.943782, category: cat24},
		{latitude: 40.785256, longitude: -73.949404, category: cat24}
	])
Coordinate.create([
		{latitude: 40.769894, longitude: -73.944461, category: cat25},
		{latitude: 40.753576, longitude: -73.958880, category: cat25},
		{latitude: 40.752861, longitude: -73.957164, category: cat25},
		{latitude: 40.768594, longitude: -73.942744, category: cat25},
		{latitude: 40.769894, longitude: -73.944461, category: cat25}
])
p "building prices, coordinates, and categories."
