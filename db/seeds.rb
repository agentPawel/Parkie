# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


parka = Park.create(
    name: "Art Eggleton Park",
    address: "323 Harbord St, Toronto, ON M6G 1G9"

 )

parkb =  Park.create(
    name: "Healy Willan",
    address: "504 Euclid Ave, Toronto, ON M6G 2T2"
  )

parkc = Park.create(
    name: "Christie Pits",
    address: "750 Bloor St W, Toronto, ON M6G 3K4"

 )

parkd =  Park.create(
    name: "Fred Hamilton Park",
    address: "155 Roxton Rd, Toronto, ON M6J 2Y4"
  )


parke = Park.create(
    name: "Dufferin Grove",
    address: "875 Dufferin Park Ave, Toronto, ON M6H 4B2"

 )

parkf =  Park.create(
    name: "Trinity Bellwoods Park",
    address: "790 Queen St W, Toronto, ON M6J 1G3"
  )

parkg =  Park.create(
    name: "Grange Park",
    address: "26 Grange Rd West, Toronto, ON M5T 1C3"
  )

parkh =  Park.create(
    name: "Alexandra Park",
    address: "275 Bathurst St, Toronto, ON M5T 2W6"
  )


parkh =  Park.create(
    name: "Clarence Square Park",
    address: "25 Clarence Square, Toronto, ON M5V 1H1"
  )

parki =  Park.create(
    name: "Bellevue Square",
    address: "5 Bellevue Ave, Toronto, ON M5T 2N4"
  )

parkj =  Park.create(
    name: "Margaret Fairley Park",
    address: "100 Brunswick Ave, Toronto, ON M5S 2M2"
  )

  basketball = Activity.create(
          name: "Basketball",
          image: 'basketball.png'
        )

  tennis = Activity.create(
          name: "Tennis",
          image: 'tennis.png'
        )

  splashpad = Activity.create(
          name: "Splashpad",
          image: 'wading_pool.png'
  )

  dog_park = Activity.create(
          name: "Dog Park",
          image: 'dog.png'
  )

  playground = Activity.create(
          name: "Playground",
          image: 'playground.png'

  )
  #
  soccer = Activity.create(
          name: "Soccer",
            image: 'soccer.png'
  )

  hockey = Activity.create(
          name: "Hockey",
          image: 'hockey.png'
  )

  baseball = Activity.create(
          name: "Baseball",
          image: 'baseball.png'
  )

  bocce = Activity.create(
          name: "Bocce Ball",
          image: 'bocce.png'
  )

  ping_pong = Activity.create(
          name: "Ping Pong",
          image: 'ping_pong.png'
  )

  skateboarding = Activity.create(
          name: "Skateboarding",
          image: 'skateboarding.png'
  )

ParkActivity.create(park_id: parka.id, activity_id: basketball.id)
ParkActivity.create(park_id: parka.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parka.id, activity_id: playground.id)
ParkActivity.create(park_id: parka.id, activity_id: ping_pong.id)


ParkActivity.create(park_id: parkb.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkb.id, activity_id: playground.id)


ParkActivity.create(park_id: parkc.id, activity_id: basketball.id)
ParkActivity.create(park_id: parkc.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkc.id, activity_id: playground.id)
ParkActivity.create(park_id: parkc.id, activity_id: soccer.id)
ParkActivity.create(park_id: parkc.id, activity_id: hockey.id)
ParkActivity.create(park_id: parkc.id, activity_id: baseball.id)
ParkActivity.create(park_id: parkc.id, activity_id: ping_pong.id)

ParkActivity.create(park_id: parkd.id, activity_id: playground.id)
ParkActivity.create(park_id: parkd.id, activity_id: dog_park.id)
ParkActivity.create(park_id: parkd.id, activity_id: bocce.id)

ParkActivity.create(park_id: parke.id, activity_id: basketball.id)
ParkActivity.create(park_id: parke.id, activity_id: hockey.id)
ParkActivity.create(park_id: parke.id, activity_id: baseball.id)
ParkActivity.create(park_id: parke.id, activity_id: soccer.id)
ParkActivity.create(park_id: parke.id, activity_id: playground.id)
ParkActivity.create(park_id: parke.id, activity_id: splashpad.id)

ParkActivity.create(park_id: parkf.id, activity_id: playground.id)
ParkActivity.create(park_id: parkf.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkf.id, activity_id: dog_park.id)
ParkActivity.create(park_id: parkf.id, activity_id: baseball.id)
ParkActivity.create(park_id: parkf.id, activity_id: tennis.id)

ParkActivity.create(park_id: parkg.id, activity_id: playground.id)
ParkActivity.create(park_id: parkg.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkg.id, activity_id: dog_park.id)

ParkActivity.create(park_id: parkh.id, activity_id: playground.id)
ParkActivity.create(park_id: parkh.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkh.id, activity_id: dog_park.id)
ParkActivity.create(park_id: parkh.id, activity_id: baseball.id)
ParkActivity.create(park_id: parkh.id, activity_id: skateboarding.id)
ParkActivity.create(park_id: parkh.id, activity_id: hockey.id)

ParkActivity.create(park_id: parki.id, activity_id: playground.id)
ParkActivity.create(park_id: parki.id, activity_id: dog_park.id)

ParkActivity.create(park_id: parkj.id, activity_id: playground.id)
ParkActivity.create(park_id: parkj.id, activity_id: splashpad.id)
ParkActivity.create(park_id: parkj.id, activity_id: dog_park.id)


User.create(username: 'gmehra', email: "gmehra@gmail.com",
first_name: 'G', last_name: 'M',
password: "bitmaker", password_confirmation: "bitmaker")

User.create(username: 'frank', email: "frank.burke@gmail.com",
first_name: 'Frank', last_name: 'B',
password: "bitmaker", password_confirmation: "bitmaker")

User.create(username: 'pawel', email: "pawelp@gmail.com",
first_name: 'Pawel', last_name: 'P',
password: "bitmaker", password_confirmation: "bitmaker")

User.create(username: 'val', email: "veejboem@gmail.com",
first_name: 'Val', last_name: 'B',
password: "bitmaker", password_confirmation: "bitmaker")
