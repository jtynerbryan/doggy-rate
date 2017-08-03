# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

avi = User.create(name: "Avi", email: "avi@avi.com", password: "avi")
meryl = User.create(name: "Meryl", email: "meryl@meryl.com", password: "meryl")
alex = User.create(name: "Alex", email: "alex@alex.com", password: "alex")
johann = User.create(name: "Johann", email: "johann@johann.com", password: "johann")
joe = User.create(name: "Joe", email: "joe@joe.com", password: "joe")
tim = User.create(name: "Tim", email: "tim@tim.com", password: "tim")

rev1 = UserReview.create(content: "hello hello", mean: true, reviewer_id: meryl.id, reviewee_id: avi.id)
rev2 = UserReview.create(content: "yellowwww", mean: true, reviewer_id: alex.id, reviewee_id: avi.id)
rev3 = UserReview.create(content: "boo boo", mean: true, reviewer_id: johann.id, reviewee_id: avi.id)
rev4 = UserReview.create(content: "knock knock", mean: true, reviewer_id: joe.id, reviewee_id: avi.id)
rev5 = UserReview.create(content: "doggy dog dog", mean: true, reviewer_id: tim.id, reviewee_id: avi.id)
