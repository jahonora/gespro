# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
	Employe.create({name: "Employe #{i}"})
	Project.create({name: "Project #{i}"})
end

Employe.first.projects << Project.first
Employe.first.projects << Project.last
Employe.last.projects << Project.first
Employe.last.projects << Project.last
