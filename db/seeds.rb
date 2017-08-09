Actor.create(
  name: "Patrice",
  bio: "This guy can act."
)
Actor.create(
  name: "Kurt Russell",
  bio: "This guy can really act. Fer real."
)

Category.create(name: "action")
Category.create(name: "drama")
Category.create(name: "comedy")
Category.create(name: "documentary")

Movie.create(
  title: "My Life In Ruins",
  description: "About the Greek ruins...like the...what do you call it...yeah...the Greek ruins.",
  rating: "PG-13",
  duration: 1234567,
  user_rating: 3.5
)


Movie.create(
  title: "This is the End",
  description: "It's about the end...which is this.",
  rating: "R",
  duration: 9000,
  user_rating: 3
)

m = Movie.first
m2 = Movie.last

a = Actor.first
a2 = Actor.last

m.actors << a
m.actors << a2

a.movies << m
a.movies << m2

m.categories << Category.all[0]
m.categories << Category.all[1]

m2.categories << Category.all[2]
m2.categories << Category.all[3]

a.save
a2.save
m.save
m2.save
