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

Company.create ([{name: 'Veconinter', kind: 1},
	{name: 'MSL', kind: 1},
	{name: 'CARGO LOGISTICS', kind: 1},
	{name: 'AIECA', kind: 1},
	{name: 'CMA CGM', kind: 1}])



Ship.create ([{name: 'Adrian Maersk', company_id: 1},
	{name: 'Albert Maersk', company_id: 1},
	{name: 'Alexander Maersk', company_id: 1},
	{name: 'Anna Maersk', company_id: 1},
	{name: 'A.P. Møller', company_id: 1},
	{name: 'Arnold Maersk', company_id: 1},
	{name: 'Arthur Maersk', company_id: 1},
	{name: 'Axel Maersk', company_id: 1}])

puts "Carga Exitosa de Barcos Maersk"

Ship.create ([{name: 'Basle Express', company_id: 3},
	{name: 'Hong Kong Express', company_id: 3},
	{name: 'Tempanos', company_id: 3},
	{name: 'Tucapel', company_id: 3},
	{name: 'Charleston Express', company_id: 3},
	{name: 'Washington Express', company_id: 3},
	{name: 'Yorktown Express', company_id: 3},
	{name: 'Mapocho', company_id: 3}])

puts "Carga Exitosa de Barcos Hapag-Lloyd"

ContainerType.create(name: 'Standard')
ContainerType.create(name: 'HIGH-CUBE')

puts "Carga Exitosa de Tipo de Contenedor"

Country.create ([{name: 'Venezuela'},
	{name: 'China'},
	{name: 'Japon'},
	{name: 'Alemania'},
	{name: 'Italia'},
	{name: 'Colombia'},
	{name: 'Argentina'}])

puts "Carga Exitosa de Paises"

Port.create ([{name: 'Buji', country_id: 2},
	{name: 'Fujin', country_id: 2},
	{name: 'Dalian', country_id: 2},
	{name: 'Haian', country_id: 2},
	{name: 'Huaibei', country_id: 2},
	{name: 'Bohe', country_id: 2},
	{name: 'Beijiao', country_id: 2}])

puts "Carga Exitosa de Puertos en China"

Port.create ([{name: 'La Guaira', country_id: 1},
	{name: 'Maracibo', country_id: 1},
	{name: 'Puerto Cabello', country_id: 1},
	{name: 'Puerto La Cruz', country_id: 1}])

puts "Carga Exitosa de Puertos en Venezuela"

Port.create ([{name: 'Osaka', country_id: 2},
	{name: 'Kobe', country_id: 3},
	{name: 'Tokio', country_id: 3},
	{name: 'Shimizu', country_id: 3}])

puts "Carga Exitosa de Puertos en Japon"



