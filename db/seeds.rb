# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'User1', email: 'user1@gmail.com', password: '123456')
user2 = User.create(name: 'User2', email: 'user2@gmail.com', password: '123456')
user3 = User.create(name: 'User3', email: 'user3@gmail.com', password: '123456')

Book.create(title: 'Title1', author: 'Author1')
Book.create(title: 'Title2', author: 'Author2')
Book.create(title: 'Title3', author: 'Author3')
Book.create(title: 'Title4', author: 'Author4')
Book.create(title: 'Title5', author: 'Author5')
Book.create(title: 'Title6', author: 'Author6')
Book.create(title: 'Title7', author: 'Author7')

