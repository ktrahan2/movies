# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Actor.destroy_all
Director.destroy_all

kyle = Actor.create(name: "Kyle" )
nate = Actor.create(name: "Nate" )
audie = Actor.create(name: "Audie" )

chris = Director.create(name: "Chris" )
parker = Director.create(name: "Parker" )
killian = Director.create(name: "Killian" )

Movie.create(actor_id: kyle.id, director_id: chris.id, title: "Kyle Does Hollywood")
Movie.create(actor_id: kyle.id, director_id: parker.id, title: "Kyle Did Hollywood")
Movie.create(actor_id: nate.id, director_id: parker.id, title: "Kyle Did Hollywood")
Movie.create(actor_id: audie.id, director_id: killian.id, title: "Kyle Remade Hollywood")