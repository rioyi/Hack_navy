# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Navieras
Company.create([
	{ name: 'Maersk Line', kind: 0 },
	{ name: 'Cosco Shipping', kind: 0 },
	{ name: 'Hapag-Lloyd', kind: 0 },
	{ name: 'Mediterranean Shipping Company', kind: 0 },
	{ name: 'CMA CGM', kind: 0 },
	{ name: 'Evergreen Line', kind: 0 },
	{ name: 'China Shipping Container Lines', kind: 0 },
	{ name: 'Hanjin Shipping Company', kind: 0 }
	])

puts "Carga Exitosa de Company Navieras"

# Carga de NVOCC
Company.create([
	{ name: 'Veconinter', kind: 1 },
	{ name: 'MSL', kind: 1 },
	{ name: 'CARGO LOGISTICS', kind: 1 },
	{ name: 'AIECA', kind: 1 },
	{ name: 'CMA CGM', kind: 1 }
	])

puts 'Carga Exitosa de Company NVOCC'

# Cargar Clientes Final
Company.create([
	{ name: 'Pepsi', kind: 2 },
	{ name: 'FarmaTodo', kind: 2 },
	{ name: 'Locatel', kind: 2 },
	{ name: 'Churro Mania', kind: 2 },
	{ name: 'Alimentos Polar', kind: 2 }
	])

	puts 'Carga Exitosa de Company Clientes Finales'

# Cargar Barcos Hapag-Lloyd
Ship.create([
	{ name: 'Adrian Maersk', company_id: 1 },
	{ name: 'Albert Maersk', company_id: 1 },
	{ name: 'Alexander Maersk', company_id: 1 },
	{ name: 'Anna Maersk', company_id: 1 },
	{ name: 'A.P. Moller', company_id: 1 },
	{ name: 'Arnold Maersk', company_id: 1 },
	{ name: 'Arthur Maersk', company_id: 1 },
	{ name: 'Axel Maersk', company_id: 1 }
	])

puts 'Carga Exitosa de Barcos Maersk'

# Cargar Barcos Hapag-Lloyd
Ship.create([
	{ name: 'Basle Express', company_id: 3 },
	{ name: 'Hong Kong Express', company_id: 3 },
	{ name: 'Tempanos', company_id: 3 },
	{ name: 'Tucapel', company_id: 3 },
	{ name: 'Charleston Express', company_id: 3 },
	{ name: 'Washington Express', company_id: 3 },
	{ name: 'Yorktown Express', company_id: 3 },
	{ name: 'Mapocho', company_id: 3 }
	])

puts 'Carga Exitosa de Barcos Hapag-Lloyd'

ContainerType.create(name: 'Standard')
ContainerType.create(name: 'HIGH-CUBE')

puts 'Carga Exitosa de Tipo de Contenedor'

# Carga de paises
Country.create([
	{ name: 'Venezuela' },
	{ name: 'China' },
	{ name: 'Japon' },
	{ name: 'Alemania' },
	{ name: 'Italia' },
	{ name: 'Colombia' },
	{ name: 'Argentina' }
	])

puts 'Carga Exitosa de Paises'

# Carga de Puertos de China
Port.create ([
	{ name: 'Buji', country_id: 2 },
	{ name: 'Fujin', country_id: 2 },
	{ name: 'Dalian', country_id: 2 },
	{ name: 'Haian', country_id: 2 },
	{ name: 'Huaibei', country_id: 2 },
	{ name: 'Bohe', country_id: 2 },
	{ name: 'Beijiao', country_id: 2 }
	])

puts 'Carga Exitosa de Puertos en China'

# Carga de Puertos Venezuela
Port.create ([
	{ name: 'La Guaira', country_id: 1 },
	{ name: 'Maracibo', country_id: 1 },
	{ name: 'Puerto Cabello', country_id: 1 },
	{ name: 'Puerto La Cruz', country_id: 1 }
	])

puts 'Carga Exitosa de Puertos en Venezuela'

# Carga puertos de Japon
Port.create ([
	{ name: 'Osaka', country_id: 2 },
	{ name: 'Kobe', country_id: 3 },
	{ name: 'Tokio', country_id: 3 },
	{ name: 'Shimizu', country_id: 3 }
	])

puts 'Carga Exitosa de Puertos en Japon'

# Data de viajes
Travel.create([
	{ cod: 'VELGA/231', ship_id: 1, docking_date: Time.now },
	{ cod: 'VELGA/232', ship_id: 2, docking_date: Time.now },
	{ cod: 'VELGA/233', ship_id: 3, docking_date: Time.now },
	{ cod: 'VELGA/234', ship_id: 4, docking_date: Time.now },
	{ cod: 'VELGA/235', ship_id: 1, docking_date: Time.now }
	])

puts 'Carga Exitosa de Viajes'

# Data de prueba para Bls
Bl.create([
	{ cod:'sudu-345781', travel_id: 1, shipper_id: 1, consignee_id: 2, port_shipment_id: 3, port_landing_id: 10 },
	{ cod:'sudu-345782', travel_id: 1, shipper_id: 1, consignee_id: 2, port_shipment_id: 1, port_landing_id: 2 },
	{ cod:'sudu-345783', travel_id: 2, shipper_id: 3, consignee_id: 2, port_shipment_id: 1, port_landing_id: 2 },
	{ cod:'sudu-345784', travel_id: 2, shipper_id: 4, consignee_id: 2, port_shipment_id: 1, port_landing_id: 2 },
	{ cod:'sudu-345785', travel_id: 3, shipper_id: 4, consignee_id: 2, port_shipment_id: 1, port_landing_id: 2 }
	])

puts 'Carga Exitosa de Bls'
