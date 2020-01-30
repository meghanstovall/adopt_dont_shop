# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mikes_shelter = Shelter.create(name: "Mike's Shelter", address: '1331 17th Street', city: 'Denver', state: 'CO', zip: '80202')
megs_shelter = Shelter.create(name: "Meg's Shelter", address: '150 Main Street', city: 'Hershey', state: 'PA', zip: '17033')

athena = Pet.create(image: "blank", name: "Athena", approximate_age: "1 year old", sex: "Female", name_of_shelter: mikes_shelter.name)
odell = Pet.create(image: "blank", name: "Odell", approximate_age: "4 years old", sex: "Male", name_of_shelter: megs_shelter.name)
