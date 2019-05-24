# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all

Project.create!(name: "Expo2020", stage:"Design", description:"Innovative project for the expo")
Project.create!(name: "JBR Gate", stage:"Construction", description:"Partitions between balconies")
Project.create!(name: "Atlantis", stage:"Finished", description:"Soffits and parapets")
