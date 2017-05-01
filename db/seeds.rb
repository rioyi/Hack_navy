# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create ([{name: 'Maersk Line', kind: 0},
	{name: 'Cosco Shipping', kind: 0},
	{name: 'Hapag-Lloyd', kind: 0},
	{name: 'Mediterranean Shipping Company', kind: 0},
	{name: 'CMA CGM', kind: 0},
	{name: 'Evergreen Line', kind: 0},
	{name: 'China Shipping Container Lines', kind: 0},
	{name: 'Hanjin Shipping Company', kind: 0}])
puts "Carga Exitosa de Company Navieras"

Ship.create ([{name: 'Adrian Maersk', company_id: 1},
	{name: 'Albert Maersk', company_id: 1},
	{name: 'Alexander Maersk', company_id: 1},
	{name: 'Anna Maersk', company_id: 1},
	{name: 'A.P. Møller', company_id: 1},
	{name: 'Arnold Maersk', company_id: 1},
	{name: 'Arthur Maersk', company_id: 1},
	{name: 'Axel Maersk', company_id: 1}])
puts "Carga Exitosa de Ships"

ContainerType.create(name: 'Standard')
ContainerType.create(name: 'HIGH-CUBE')
