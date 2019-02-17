require 'faker'

Room.destroy_all
Building.destroy_all
BuildingType.destroy_all
User.destroy_all
UserRole.destroy_all
VentilationType.destroy_all
ClimateLog.destroy_all

user_role_list = ["admin", "manager", "coordinator", "viewer"]

user_role_list.each do |role|
    UserRole.create!(name: role)
end


User.create!(email: "demo@demo.com",
             password: "demo",
             first_name: "john",
             mobile_number: "+46 734 33 32 32",
             last_name: "doe",
             job_title: "facilities manager",
             user_role: UserRole.find_by_name("manager"))

building_type_list = ["office", "residence", "factory", "storage", "multi-residence", "commercial", "restaurant"]

building_type_list.each do |type|
    BuildingType.create!(name: type)
end

venvilation_type_list = ["active", "passive"]

venvilation_type_list.each do |type|
    VentilationType.create!(name: type)
end

def float_generator_outside(base)
  return (base + ((rand * (7 - (-7)) + (-7)).round(1)))
end

def float_generator_inside(base)
  return (base + ((rand * (2.5 - (-2.5)) + (-2.5)).round(1)))
end

def sqm_generator(factor)
  return ((factor + ((rand * (20 - (10)) + (10)).round(1))).to_i) * factor
end


bulding_name_list = ["taipei fabrication", "my house", "fulfillment hub", "headquarters", "regional sales southwest"]

1.times do |x|
  Building.create!(
    user: User.find_by_email('demo@demo.com'),
    building_type: BuildingType.find_by_name("factory"),
    name: bulding_name_list[0],
    city: "taipei",
    country: "taiwan",
    street: Faker::Address.street_address,
    post_code: Faker::Address.zip,
    outside_temp: float_generator_outside(25),
    outside_humidity: float_generator_outside(78)
    )
end

1.times do |x|
  Building.create!(
    user: User.find_by_email('demo@demo.com'),
    building_type: BuildingType.find_by_name("residence"),
    name: bulding_name_list[1],
    city: "downers grove",
    country: "united states",
    street: Faker::Address.street_address,
    post_code: Faker::Address.zip,
    outside_temp: float_generator_outside(15),
    outside_humidity: float_generator_outside(70)
    )
end

1.times do |x|
  Building.create!(
    user: User.find_by_email('demo@demo.com'),
    building_type: BuildingType.find_by_name("storage"),
    name: bulding_name_list[2],
    city: "kansas city",
    country: "united states",
    street: Faker::Address.street_address,
    post_code: Faker::Address.zip,
    outside_temp: float_generator_outside(19),
    outside_humidity: float_generator_outside(66)
    )
end

1.times do |x|
  Building.create!(
    user: User.find_by_email('demo@demo.com'),
    building_type: BuildingType.find_by_name("office"),
    name: bulding_name_list[3],
    city: "chicago",
    country: "united states",
    street: Faker::Address.street_address,
    post_code: Faker::Address.zip,
    outside_temp: float_generator_outside(15),
    outside_humidity: float_generator_outside(70)
    )
end

1.times do |x|
  Building.create!(
    user: User.find_by_email('demo@demo.com'),
    building_type: BuildingType.find_by_name("office"),
    name: bulding_name_list[4],
    city: "phoenix",
    country: "united states",
    street: Faker::Address.street_address,
    post_code: Faker::Address.zip,
    outside_temp: float_generator_outside(31),
    outside_humidity: float_generator_outside(35)
    )
end


factory_room_name_list = ["material storage", "fabrication west", "assembly", "prep area", "waste handling", "fabrication east", "packing"]
residence_room_name_list = ["entry", "kitchen", "common room", "bedroom 1", "bedroom 2", "bathroom", "laundry"]
storage_room_name_list = ["receiving", "outbound", "bulk storage", "sorting"]
office_room_name_list = ["reception", "executive offices", "development dept", "finance dept", "product dept", "customer service", "lunchroom", "bathroom 1", "bathroom 2", "server room"]
sales_room_name_list = ["reception", "manager's office", "sales dept", "marketing dept", "bathroom"]


factory_room_name_list.each_with_index do |room, index|
  Room.create!(
    name: room,
    sqm: sqm_generator(24),
    outside_air_access: false,
    temp: float_generator_inside(25) + 2,
    humidity: float_generator_inside(78) + 5,
    building: Building.find_by_name("taipei fabrication"),
    ventilation_type: VentilationType.find_by_name('active')
    )
end

residence_room_name_list.each_with_index do |room, index|
  Room.create!(
    name: room,
    sqm: sqm_generator(1),
    outside_air_access: true,
    temp: float_generator_inside(15) + 8.5,
    humidity: float_generator_inside(70) + 1,
    building: Building.find_by_name("my house"),
    ventilation_type: VentilationType.find_by_name('passive')
    )
end

storage_room_name_list.each_with_index do |room, index|
  Room.create!(
    name: room,
    sqm: sqm_generator(16),
    outside_air_access: false,
    temp: float_generator_inside(19),
    humidity: float_generator_inside(66) - 10,
    building: Building.find_by_name("fulfillment hub"),
    ventilation_type: VentilationType.find_by_name('active')
    )
end

office_room_name_list.each_with_index do |room, index|
  Room.create!(
    name: room,
    sqm: sqm_generator(2),
    outside_air_access: true,
    temp: float_generator_inside(15) + 9.5,
    humidity: float_generator_inside(70) + 5,
    building: Building.find_by_name("headquarters"),
    ventilation_type: VentilationType.find_by_name('active')
    )
end

sales_room_name_list.each_with_index do |room, index|
  Room.create!(
    name: room,
    sqm: sqm_generator(1),
    outside_air_access: true,
    temp: float_generator_inside(31) - 11,
    humidity: float_generator_inside(35) + 5,
    building: Building.find_by_name("regional sales southwest"),
    ventilation_type: VentilationType.find_by_name('active')
    )
end


30.times.with_index do |x,i|
  j = i + 1

  Building.all.each do |building|
    out_temp_gen = float_generator_outside(building.outside_temp.to_i)
    out_hum_gen = float_generator_outside(building.outside_humidity.to_i)

    Room.where(building: building).each do |room|
      in_temp_gen = float_generator_inside(room.temp)
      in_hum_gen = float_generator_inside(room.humidity)
      n = ClimateLog.new(
        room: room,
        building: room.building,
        outside_temp: out_temp_gen,
        outside_humidity: out_hum_gen,
        room_temp: in_temp_gen,
        room_humidity: in_hum_gen
        )
      n.save!
      n.created_at = (n.created_at - (j * 86400))
      n.save!
      puts "#{n.created_at}§#{building.name}§#{room.name}§#{out_temp_gen}§#{in_temp_gen}"
    end

  end

end















