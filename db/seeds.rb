# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Room.destroy_all
Building.destroy_all
User.destroy_all


User.create!(email: "demo@demo.com",
             password: "demo")


building_list = [
  {
    name: "factory",
    outside_temp: 27.4,
    outside_humidity: 93.44
  },{
    name: "home",
    outside_temp: 19.3,
    outside_humidity: 78.3
  },{
    name: "office",
    outside_temp: 18.48,
    outside_humidity: 74.13
  },{
    name: "warehouse",
    outside_temp: 10.4,
    outside_humidity: 58.63
  }
]

building_list.each do |building|
  Building.create!(
    name: building[:name],
    outside_temp: building[:outside_temp],
    outside_humidity: building[:outside_humidity],
    user: User.find_by_email('demo@demo.com')
    )
end

room_list = [
  {
    building: Building.find_by_name("factory"),
    name: "reception",
    sqm: 100,
    humidity: 75.0,
    temp: 22.4
  },  {
    building: Building.find_by_name("factory"),
    name: "dining area",
    sqm: 300,
    humidity: 79.65,
    temp: 26.14
  },  {
    building: Building.find_by_name("factory"),
    name: "workfloor - zone 1",
    sqm: 4500,
    humidity: 98.40,
    temp: 29.84
  },  {
    building: Building.find_by_name("factory"),
    name: "workfloor - zone 2",
    sqm: 75600,
    humidity: 95.07,
    temp: 28.55
  },  {
    building: Building.find_by_name("home"),
    name: "kitchen",
    sqm: 25,
    humidity: 82.30,
    temp: 24.94
  },  {
    building: Building.find_by_name("home"),
    name: "bedroom",
    sqm: 17,
    humidity: 77.51,
    temp: 22.14
  },  {
    building: Building.find_by_name("home"),
    name: "entry",
    sqm: 8,
    humidity: 78.40,
    temp: 21.92
  },  {
    building: Building.find_by_name("home"),
    name: "bathroom",
    sqm: 9,
    humidity: 82.74,
    temp: 25.99
  },  {
    building: Building.find_by_name("home"),
    name: "dining room",
    sqm: 20,
    humidity: 78.07,
    temp: 22.43
  },  {
    building: Building.find_by_name("office"),
    name: "reception",
    sqm: 35,
    humidity: 72.40,
    temp: 25.2
  },  {
    building: Building.find_by_name("office"),
    name: "conference room",
    sqm: 65,
    humidity: 77.74,
    temp: 27.29
  },  {
    building: Building.find_by_name("office"),
    name: "office 1",
    sqm: 12,
    humidity: 75.07,
    temp: 26.63
  },  {
    building: Building.find_by_name("office"),
    name: "office 2",
    sqm: 20,
    humidity: 73.61,
    temp: 24.43
  },  {
    building: Building.find_by_name("warehouse"),
    name: "receiving",
    sqm: 650,
    humidity: 58.74,
    temp: 18.29
  },  {
    building: Building.find_by_name("warehouse"),
    name: "storage room 1",
    sqm: 4500,
    humidity: 59.07,
    temp: 21.63
  },  {
    building: Building.find_by_name("warehouse"),
    name: "storage room 2",
    sqm: 2000,
    humidity: 63.10,
    temp: 30.22
  },  {
    building: Building.find_by_name("warehouse"),
    name: "outbound",
    sqm: 20,
    humidity: 61.83,
    temp: 21.06
  }
]

room_list.each do |room|
  Room.create!(
    name: room[:name],
    sqm: room[:sqm],
    humidity: room[:humidity],
    temp: room[:temp],
    building: room[:building]
    )
end
