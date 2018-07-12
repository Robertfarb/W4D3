# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Cat.destroy_all
  User.destroy_all

  a = User.create(user_name: 'nadav', password: "123456")
  b = User.create(user_name: 'liz', password: "123456")
  c = User.create(user_name: 'rob', password: "123456")

  Cat.create(birth_date: '2015/01/20', color: 'orange', name: 'n4d4v', sex: 'M', description: 'C00l CAT!', user_id: a.id)
  Cat.create(birth_date: '1994/01/20', color: 'white', name: 'rob', sex: 'M', description: 'mean cat', user_id: b.id)
  Cat.create(birth_date: '1990/01/20', color: 'black', name: 'rich', sex: 'F', description: 'tabby cat', user_id: c.id)
end