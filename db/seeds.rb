# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



parka = Park.create(
    name: "Park A",
    address: "142 Bloor Street West, Toronto, ON"
  )

parkb =  Park.create(
      name: "Park B",
      address: "85 Queens Wharf, Toronto, ON"
    )

basketball = Activity.create(
        name: "Baksetball"
      )

tennis = Activity.create(
        name: "Tennis"
      )

ParkActivity.create(
  park_id: 1,
  activity_id: 1
)

ParkActivity.create(
  park_id: 2,
  activity_id: 1
)

ParkActivity.create(
  park_id: 2,
  activity_id: 2
)

User.create(username: 'gmehra', email: "g@tt.com",
first_name: 'G', last_name: 'M',
password: "hello123", password_confirmation: "hello123")

User.create(username: 'frank', email: "frank@tt.com",
first_name: 'Frank', last_name: 'B',
password: "hello123", password_confirmation: "hello123")
