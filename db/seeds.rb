# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

u = User.create(name: "Adell", email: "techsupport@dell.com", password: "dell")
u2 = User.create(name: "Jamal", email: "jmm@gmail.com", password: "moon")
u3 = User.create(name: 'Bono', email: 'bono@u2.com', password: 'wraparounds')

q = u.questions.create(title: "How many licks to the center of a penny?", content: "I really need to know, my little brother's tongue is getting tired.")
q.answers.create(user_id: u2.id, title: "Really??", content: "This is a bad idea, you should talk to your mother..")
q.answers.create(user_id: u3.id, title: "50", content: "First of all, this is a bad idea, but when I was younger I was able to do it in 49. For a chump like you, 50 should be attainable.")
q.categories << Category.create(title: "Life Hacks")


q = u2.questions.create(title: "What is the mass of the Sun?", content: "The title explains my question, essentially. I would like to know the mass of the Sun, preferrably in kilograms, because the metric system is godly.")
q.answers.create(user_id: u.id, title: "The Same Mass As Yo Momma", content: "Yo Momma So Fat, that even scientists couldn't distinguish the mass between her and the big Sun")
q.answers.create(user_id: u3.id, title: "~1.98x10^30 kg", content: "The mass of the Sun can be determined by the orbital motion of the planets, which depend on the gravity of the Sun, which is directly impacted by its mass. Thus, we estimate the Sun's mass to be approximately 1.98x10^30 kg")
q.categories << Category.create(title: "Solar System")
q.categories << Category.create(title: "Yo Momma Jokes")






