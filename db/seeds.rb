# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all


User.create!(email: "chand@chand.com", password: "123456", admin?: false)

User.create!(email: "ilya@ilya.com", password: "123456", admin?: false)

User.create!(email: "calvin@calvin.com", password: "123456", admin?: false)

User.create!(email: "alice@alice.com", password: "123456", admin?: false)

User.create!(email: "joe@joe.com", password: "123456", admin?: false)




User.create!(email: "chandadmin@chand.com", password: "123456", admin?: true)

User.create!(email: "ilyaadmin@ilya.com", password: "123456", admin?: true)

User.create!(email: "calvinadmin@calvin.com", password: "123456", admin?: true)

User.create!(email: "aliceadmin@alice.com", password: "123456", admin?: true)

User.create!(email: "joeadmin@joe.com", password: "123456", admin?: true)
