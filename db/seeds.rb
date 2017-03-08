# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Estado.exists?
	Estado.create(nombre: "Pendiente de ejecucion", color: "#0066CC")
	Estado.create(nombre: "Ejecutado", color: "#008000")
	Estado.create(nombre: "Observado", color: "#990000")
	Estado.create(nombre: "No ejecutado", color: "#663399")
end