# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


parka = Park.create(
    name: "Art Eggleton Park",
    address: "323 Harbord St, Toronto, ON M6G 1G9",
    image: "art_eggleton_main.jpg"

 )

parkb =  Park.create(
    name: "Healy Willan",
    address: "504 Euclid Ave, Toronto, ON M6G 2T2",
    image: "healy_willan_playground.jpg"
  )

parkc = Park.create(
    name: "Christie Pits",
    address: "750 Bloor St W, Toronto, ON M6G 3K4",
    image: "christie_pits_main.jpg"
 )

parkd =  Park.create(
    name: "Fred Hamilton Park",
    address: "155 Roxton Rd, Toronto, ON M6J 2Y4",
    image: "fred_hamilton_main.jpg"
  )


parke = Park.create(
    name: "Dufferin Grove",
    address: "875 Dufferin Park Ave, Toronto, ON M6H 4B2",
    image: "dufferin_grove_playground.jpg"

 )

parkf =  Park.create(
    name: "Trinity Bellwoods Park",
    address: "790 Queen St W, Toronto, ON M6J 1G3",
    image: "trinity-bellwoods-park-main.jpg"
  )

parkg =  Park.create(
    name: "Grange Park",
    address: "26 Grange Rd West, Toronto, ON M5T 1C3",
    image: "grange_park_main.jpg"
  )

parkh =  Park.create(
    name: "Alexandra Park",
    address: "275 Bathurst St, Toronto, ON M5T 2W6",
    image: "alexandra_park_main.jpg"
  )


parki =  Park.create(
    name: "Clarence Square Park",
    address: "25 Clarence Square, Toronto, ON M5V 1H1",
    image: "clarence_square_main_dog.jpg"
  )

parkj =  Park.create(
    name: "Bellevue Square",
    address: "5 Bellevue Ave, Toronto, ON M5T 2N4",
    image: "bellvue_square_main.jpg"
  )

parkk =  Park.create(
    name: "Margaret Fairley Park",
    address: "100 Brunswick Ave, Toronto, ON M5S 2M2",
    image: "margaret_fairley_park_main.jpg"
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

ParkActivity.create(park_id: parka.id, activity_id: splashpad.id, image: 'art_eggleton_wading_pool.jpg')
ParkActivity.create(park_id: parka.id, activity_id: playground.id, image:'art_eggleton_playground.jpg')
ParkActivity.create(park_id: parka.id, activity_id: ping_pong.id, image: 'art_eggleton_ping_pong.jpg')


ParkActivity.create(park_id: parkb.id, activity_id: splashpad.id, image: 'healy_willan_wading_pool.jpg')
ParkActivity.create(park_id: parkb.id, activity_id: playground.id, image: 'healy_willan_playground.jpg')


ParkActivity.create(park_id: parkc.id, activity_id: basketball.id, image:'christie_pits_basketball.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: splashpad.id, image:'christie_pits_wading_pool.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: playground.id, image:'christie_pits_playground.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: soccer.id, image:'christie_pits_soccer.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: hockey.id, image:'christie_pits_hockey.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: baseball.id, image:'christie_pits_baseball.jpg')
ParkActivity.create(park_id: parkc.id, activity_id: ping_pong.id, image: 'christie_pits_ping_pong.jpg')

ParkActivity.create(park_id: parkd.id, activity_id: playground.id, image:'fred_hamilton_playground_wading.jpg')
ParkActivity.create(park_id: parkd.id, activity_id: dog_park.id, image:'dog_park.jpg')
ParkActivity.create(park_id: parkd.id, activity_id: bocce.id, image:'fred_hamilton_bocce.jpg')
ParkActivity.create(park_id: parkd.id, activity_id: splashpad.id, image:'fred_hamilton_playground_wading.jpg')


ParkActivity.create(park_id: parke.id, activity_id: basketball.id, image: 'dufferin_grove_basketball.jpg')
ParkActivity.create(park_id: parke.id, activity_id: hockey.id, image: 'dufferin_grove_hockey.jpg')
ParkActivity.create(park_id: parke.id, activity_id: baseball.id, image: 'dufferin_grove_baseball.jpg')
ParkActivity.create(park_id: parke.id, activity_id: soccer.id, image: 'dufferin_grove_soccer.jpg')
ParkActivity.create(park_id: parke.id, activity_id: playground.id, image: 'dufferin_grove_playground.jpg')
ParkActivity.create(park_id: parke.id, activity_id: splashpad.id, image: 'dufferin_grove_playground.jpg')

ParkActivity.create(park_id: parkf.id, activity_id: playground.id, image: 'trinity_bellwoods_playground.jpg')
ParkActivity.create(park_id: parkf.id, activity_id: splashpad.id, image: 'trinity_bellwoods_wading_pool.jpg')
ParkActivity.create(park_id: parkf.id, activity_id: dog_park.id, image: 'trinity_bellwoods_dog_park.jpg')
ParkActivity.create(park_id: parkf.id, activity_id: baseball.id, image: 'trinity_bellwoods_baseball.jpg')
ParkActivity.create(park_id: parkf.id, activity_id: tennis.id, image: 'trinity_bellwoods_tennis_court.jpg')

ParkActivity.create(park_id: parkg.id, activity_id: playground.id, image: 'grange_park_playground.jpg')
ParkActivity.create(park_id: parkg.id, activity_id: splashpad.id, image: 'grange_park_wading_pool.jpg')
ParkActivity.create(park_id: parkg.id, activity_id: dog_park.id, image: 'grange_park_main.jpg')

ParkActivity.create(park_id: parkh.id, activity_id: playground.id, image: 'alexandra_park_playground.jpg')
ParkActivity.create(park_id: parkh.id, activity_id: baseball.id, image: 'alexandra_park_baseball.jpg')
ParkActivity.create(park_id: parkh.id, activity_id: skateboarding.id, image: 'alexandra_skatepark.jpg')
ParkActivity.create(park_id: parkh.id, activity_id: hockey.id, image: 'alexandra_park_hockey.jpg')

ParkActivity.create(park_id: parki.id, activity_id: playground.id, image: 'clarence_square_main_dog.jpg')
ParkActivity.create(park_id: parki.id, activity_id: dog_park.id, image: 'clarence_square_main_dog.jpg')

ParkActivity.create(park_id: parkj.id, activity_id: playground.id, image:'bellvue_square_playground.jpg')
ParkActivity.create(park_id: parkj.id, activity_id: splashpad.id, image: 'bellvue_square_wading_pool.jpg')
ParkActivity.create(park_id: parkj.id, activity_id: dog_park.id, image: 'bellvue_square_main.jpg')

ParkActivity.create(park_id: parkk.id, activity_id: playground.id, image:'margaret_fairley_park_playground.jpg')
ParkActivity.create(park_id: parkk.id, activity_id: splashpad.id, image: 'Margaret_fairley_wading_pool.jpg')
ParkActivity.create(park_id: parkk.id, activity_id: dog_park.id, image: 'margaret_fairley_park_main.jpg')



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
