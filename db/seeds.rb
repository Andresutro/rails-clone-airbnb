# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings"q }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'open-uri'
puts "creating users"

# Crear 10 housings falsos
user_1 = User.create!(email:'andres@gmail.com', password:'123456',first_name:'Andres',last_name:'Marchant',phone_number:'123456789')
user_2 = User.create!(email:'felipe@gmail.com', password:'123456',first_name:'Felipe',last_name:'Mandiola',phone_number:'123456789')
user_3 = User.create!(email:'rodrigo@gmail.com', password:'123456',first_name:'Rodrigo',last_name:'Von',phone_number:'123456789')

# # Seed de Users profesional 1
# pablo = User.create!(
#   email: 'pablo@gmail.com',
#   password: '123456',
#   first_name: 'Pablo',
#   last_name: 'Gutierrez',
#   phone_number:'+56 9 4488 9900'
# )

# # Divider

# # Seed de Users profesional 2
# lupe = User.create!(
#   email: 'lupe@gmail.com',
#   password: '123456',
#   first_name: 'Lupe',
#   last_name: 'Lopez',
#   phone_number:'+56 9 2432 1212'
# )

# Divider

puts "finished users"

# Seed de Housings profesional 1
file_1 = URI.open("https://a0.muscache.com/im/pictures/miso/Hosting-688547562940962585/original/e9e0fde5-9dcb-4ce4-b226-1292833b98ed.png?im_w=1200")

housing_1 = Housing.create!(
  name: 'Paihuen Mountain Resort',
  user_id: user_2.id,
  price: '200',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '64',
  city: 'Neuquén',
  state: 'Argentina',
  address: 'San Martin de los Andes',
  description: 'Come discover the best of The 7 Lakes at this heavenly cabin. Lake view cabin or forest view apartment. It has a bedroom with double sommier, one bathroom, fully equipped full kitchen, dining room and living area with two single beds. It has a TV with premium Direct TV + football pack, microwave, electric coffee maker, electric toaster and hairdryer.'
)
housing_1.image.attach(io: file_1, filename: "sanmartin.png", content_type: "image/png")

# Divider

# Seed de Housings profesional 2
file_2 = URI.open("https://a0.muscache.com/im/pictures/miso/Hosting-46338360/original/ae64bc50-0180-4c55-bd57-6c642343e4ba.jpeg?im_w=1200")

housing_2 = Housing.create!(
  name: 'Cabin in Corralco with native forest and hot-tub',
  user_id: user_3.id,
  price: '230',
  amount_bathrooms: '2',
  amount_rooms: '3',
  msquare: '48',
  city: 'Malalcahuello',
  state: 'Chile',
  address: 'Corralco',
  description: 'Cozy new mountain retreat. In the middle of a native forest of oaks, coigües and raulies in a land with many spots to enjoy. Designed for relaxing with a great view of the mountains and a strategic location 7 km from Corralco (ski center), 4 km from the town and steps from the Cautin river. The sun covers the residence to you all the day when you need it. Fantastic terrace with a great wood stove and hot tub.
  The space
  The mountain residence is designed to be connected with a native forest that surrounds it. The light and green of the forest is captured by the house to have a real connection with nature. The land and sorroundings has several spots for adults and children to explore. The bedrooms are in a module isolated from the common areas and in turn are connected through a glass bridge generating privacy when sleeping and connection with environment and nature. It has a large partially covered terrace to ensure relaxation during different weather conditions. There is also a wood stove to relax in the afternoon with a glass of wine and a hot tub in the middle of the forest.
  Guest access
  You can access the entire mountain residence and its lands of approximately 5000 sqmt with native forests and a hot tub. The house includes 3 bedrooms and 2 bathrooms, as well as a living, dining room and kitchen connected to a partly covered and partly roofed terrace to ensure that you can re-energize in sunny, rainy and snowy times.
  The area is close to hot springs such as the Malalcahuello, Manzanar and Tolhuaca.
  Other things to note
  This brand new residence has a wooden hottube and an outdoor stove. The thermal insulation allows to maintain optimal temperatures, it also has central heating with a very easy-to-use pellet boiler. We will leave you pellets available for use.'
)
housing_2.image.attach(io: file_2, filename: "corralco.jpeg", content_type: "image/jpeg")

# Divider

# Seed de Housings profesional 3
file_3 = URI.open("https://a0.muscache.com/im/pictures/f671409c-6023-425f-bbaf-721a36c43c80.jpg?im_w=1200")

housing_3 = Housing.create!(
  name: 'Casa Loreto',
  user_id: user_1.id,
  price: '42',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '32',
  city: 'Mendoza',
  state: 'Argentina',
  address: 'Las Vegas',
  description: "Relax as a family surrounded by mountains with an incredible view and unique tranquility. Enjoy the Andes Mountains, breathe in the fresh air, turn on the salamander with its cozy heater, and have a barbecue in the deck looking at the silver cord. You are steps away from trekking and stunning hikes, you can also rent horses or rafting in the Mendoza River, hikes in uspallata or high mountain and kite surfing or kayaking or other water sports in the Poderillos Reservoir.
  The space
  Casa Loreto is located in Piedras Blancas, Potrerillos. As penitents, we are 2 hours away, 11 km from Route 7. Of which 2 kilometers are gravel in good condition and the rest is asphalt. From the city of Mendoza we are 1 hour 20 min.
  Two blocks from the house there's a pantry and many more within 10 blocks. Even complete supplies very close. Cafes, restaurants and the famous Hansel and Gretel chocolate shop.

  We offer linen, blankets and hotel quilting. The house has electric heating plates in the bedrooms, a gas stove and a salamander in the living/dining room.

  The house has initial cooking supplies (oil, spices), dry breakfasts (tea, coffee, milk powder, sugar, sweetener and cocoa) also with washing machines and cleaning products; and with a water bottle to drink and a complimentary initial firewood bag.
  It has a complete kitchen, with crockery for 6 people. Refrigerator, microwave, electric coffee maker, kettle and toaster. Full kitchen utensils and battery.
  The house is very nice, spacious, new, with double glass openings, porcelain floor, new mattresses and a dream view.

  In addition, it has a selection of wines in a small cellar so that they can buy with 30% discount and enjoy during their stay or order to go.
  On the other hand, as the hostess, Gabriela, is a sommelier, she can organize and book them if they want wine tours in the best wineries in Mendoza."
)
housing_3.image.attach(io: file_3, filename: "mendoza.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 4
file_4 = URI.open("https://a0.muscache.com/im/pictures/273b4988-48b9-412a-934c-7329e662f948.jpg?im_w=1200")

housing_4 = Housing.create!(
  name: 'Casa Don Arelauquen Nueva y Moderna',
  user_id: user_3.id,
  price: '257',
  amount_bathrooms: '3',
  amount_rooms: '3',
  msquare: '84',
  city: 'Provincia de Río Negro',
  state: 'Argentina',
  address: 'San Carlos de Bariloche',
  description: "Casa Don Arelauquen is a modern mountain house with a privileged location in the distinguished club Arelauquen. 20 minutes from Cerro Catedral and meters from the best golf course in Patagonia. Equipped 100%. Meters from Lake Gutiérrez.
  The space
  This is a new and modern house. It's spacious and functional. Up to 8 comfortable people can sleep. It's in a good location . In the winter near the entrance of the club that connects with the Cathedral Ski Center. In summer, very close to all the lakes. In the club area that is located there is no wind and it has a lot of sun all day. From the house you can see Lake Gutiérrrez and the snowy hills. It has a space that is the playroom with an additional bed with an additional bed. The house has two en-suite rooms for two weddings . The rooms have a Smart TV to watch Netflix (they don't have cable ). 3rd bedroom has 3 twin beds
  Guest access
  Golf Course ( Charged )
  Out heated pool (for a fee )
  Polo (for a fee )
  Caballerizas ( with a fee )
  Three restaurants within the
  Club ( check since there are restrictions for tenants on some dates)
  Summer activities for the kids (for a fee )

  Nautical Club with Private Beach ( no charge )
  Other things to note
  The Wi Fi is high speed.
  Very safe place.
  Very quiet area with a lake view.
  The house is equipped with 100 x 100
  Currently in the surrounding grounds they are finishing a house under construction"
)
housing_4.image.attach(io: file_4, filename: "rionegro.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 5
file_5 = URI.open("https://a0.muscache.com/im/pictures/5969db06-6cf1-4fef-b20f-87788c2254e7.jpg?im_w=1200")

housing_5 = Housing.create!(
  name: 'Tiny Home en los Altos de los Calabozos',
  user_id: user_2.id,
  price: '22',
  amount_bathrooms: '1',
  amount_rooms: '1',
  msquare: '24',
  city: 'Pucón',
  state: 'Chile',
  address: 'Saltos del Claro',
  description: "Our cozy recently built tiny home has amazing views of the pucon valley and is located only 7 mins by car or four miles from the city center. The last quater mile to the house is a gravel road with two steep hill and ends in a great view of the Pucon Valley. The tiny home is located near the famous waterfall Salto del Claro and is not more than a few minutes from the Rio Turbio which is great for hiking or in summertime taking a deep in the volcanic spring waters.
  The space
  The tiny home feels far from the downtown but but is actually very close. It is a great space to disconnect and enjoy nature, great view, and peaceful sunsets. The tiny home is located in the safe zone from the volcano. It is a unique inspired tiny home design.
  Guest access
  Access to the 'Asado area' (spanish for barbeque,) hammocks, and garden areas. Laundry service available upon request."
)
housing_5.image.attach(io: file_5, filename: "pucon.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 6
file_6 = URI.open("https://a0.muscache.com/im/pictures/miso/Hosting-617280435580804396/original/82e78518-937b-47e7-aebc-ec14428b6d95.jpeg?im_w=1200")

housing_6 = Housing.create!(
  name: 'Sky Cabin an experience to enjoy as a couple',
  user_id: user_1.id,
  price: '100',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '54',
  city: 'Curacautín',
  state: 'Chile',
  address: 'Sierra Nevada',
  description: "Sky cabin is a cozy mountain retreat for 3 people. Its avant-garde design offers all the necessary comforts. It has a king bed that is high up, so it is not suitable for people with reduced mobility.

  It has another 1.5-seater bed, which is located on a mezzanine that children 5 years old can access up.

  It is heated with electric air conditioning, has a gas cooktop, equipped kitchen, microwave, refrigerator, bathroom with shower and Hot Tub.
  The space
  Sky cabin is a cozy mountain retreat for 3 people, immersed in the tranquility of the Malalcahuello valley, just 9 km from the center of Ski Corralco and 2 km from the village of Malalcahuello.

  The retreat is located in a beautiful setting, surrounded by native vegetation and with an unparalleled view of the Sierra Nevada volcano. Its location allows you to take excursions to the hill that adjoins the plot, offering views of the valley just minutes away.

  Designed to be enjoyed as a couple, Sky Cabin offers a unique experience where you can enjoy a view of the sky from inside the retreat and the comfort of the bed and the warmth of a small Hot-Tub pool, which is heated by an immersive wood-burning boiler and accessed from inside the retreat, through a small hatch without having to pass through the cold outside.

  Its avant-garde design offers all the necessary comforts. It has a king size bed that is high, so it is not suitable for people with reduced mobility. It has another 1.5-seater bed, which is located on a mezzanine that children 5 years old can access up.

  It is heated with electric air conditioning, gas cooktop, kitchen equipped with everything you need, microwave, refrigerator, bathroom with shower.

  We provide sheets, 1 towel per person and basic food items for cooking.
  We also have a variety of teas from the Sensory store as a courtesy.
  Guest access
  You can enjoy the entire space described, in addition to having access to the hill that adjoins the plot which has some trails to access the reservation.
  Access in winter must be by 4x4 vehicle, as snow accumulates a lot in this area.
  Other things to note
  The Hot Tub is operated in 3 formats:

  1 - For $50,000 I can wait for you with the warm Hot Tub for you to use as soon as you arrive. You will have firewood to reheat it yourself the next day.

  2 - For $20,000 I can provide you with the wood to heat it yourself. You should consider that the heating time is 7-8 hours.

  3 - You can bring your own firewood and use it at no extra cost.

  Note: Hot Tub heating service is available"
)
housing_6.image.attach(io: file_6, filename: "curacautin.jpeg", content_type: "image/jpeg")

# Divider

# Seed de Housings profesional 7
file_7 = URI.open("https://a0.muscache.com/im/pictures/2f42ebc6-147c-4e63-ab6f-de94fccd8e3d.jpg?im_w=1200")

housing_7 = Housing.create!(
  name: 'Bungalow Oxapampa N2 with balcony, bathroom and friobar',
  user_id: user_2.id,
  price: '32',
  amount_bathrooms: '1',
  amount_rooms: '1',
  msquare: '32',
  city: 'Cantarizú',
  state: 'Perú',
  address: 'Avenida Pasco 45',
  description: "Room surrounded by screens that allows you to  appreciate the beautiful landscape that surrounds this place."
)
housing_7.image.attach(io: file_7, filename: "cantarizu.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 8
file_8 = URI.open("https://a0.muscache.com/im/pictures/103043747/1c2ac70a_original.jpg?im_w=1200")

housing_8 = Housing.create!(
  name: 'Quechua Family & Lake view',
  user_id: user_3.id,
  price: '47',
  amount_bathrooms: '1',
  amount_rooms: '1',
  msquare: '44',
  city: 'Capachica',
  state: 'Perú',
  address: 'Inti Wasi 34',
  description: "'Inti Wasi' is our home, meaning 'house of the sun' in Quechua. We are located on a hill overlooking Lake Titikaka, built with rustic material, comfortable rooms with private showers and hot water in the sun, kitchen, dining room overlooking the Lake and has two terraces with spectacular views, it is also possible to organize through the ASTURSPERU association, tour to the islands: (Tikonata, Amantani, Taquile and non-tourist Uros Floating Island)."
)
housing_8.image.attach(io: file_8, filename: "capachica.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 9
file_9 = URI.open("https://a0.muscache.com/im/pictures/3825a7f9-b9d8-440f-8db3-140d915c2fbf.jpg?im_w=1200")

housing_9 = Housing.create!(
  name: '100 m from the Teatro Colon. Parisian Architecture',
  user_id: user_1.id,
  price: '43',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '56',
  city: 'Buenos Aires',
  state: 'Argentina',
  address: 'Retiro 122',
  description: "Stately Apartment declared Historical Heritage of the City, recycled again respecting the original architecture (Paris 1920). Near Corrientes St, the Obelisco Florida St. Galerias Pacifico, Fine Arts Museum,CCK Cultural Center, Colón Theater Cervantes Theater, San Martín Theater, SanTelmo neighborhood, Puerto Madero, Avenida de Mayo, Casa Rosada, Cabildo, restaurants, bars, all very close. The city that never sleeps !
  The space
  Each bedroom has 2 new, antiallergic box springs, which can be together or separated, with 400 thread count sheets, pure Egyptian cotton, Led light tables.

  Kitchen equipped with refrigerator, microwave, electric kettle, toaster and coffee maker, walls covered with top quality porcelain.

  Complete bathroom with high-end monocommand faucets, lacquered wooden floating furniture with ceramic washbasin, natural light, swing tilt aluminum opening

  High-end Armored Front Door
  Other things to note
  Guests are provided with an airport shuttle service at a charge of us. 20,00.- Toll included. Up to 2 passengers"
)
housing_9.image.attach(io: file_9, filename: "buenosaires.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 10
file_10 = URI.open("https://a0.muscache.com/im/pictures/dc4a7e02-c662-450f-b56e-e273ad513216.jpg?im_w=1200")

housing_10 = Housing.create!(
  name: 'Cabaña Centro Rapa Nui "Haka Tere Hai Mahatu',
  user_id: user_2.id,
  price: '40',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '56',
  city: 'Hanga Roa',
  state: 'Chile',
  address: 'Avenida Moai 455',
  description: "We want our guests to have a unique experience with us enjoying the wonders of Rapa Nui, for that we offer tourist orientation of tours, boat rides, inclusive diving, jeep rental.

  Our service includes roundtrip airport transfer, with welcome, flower necklaces and city tour.

  If you are a lover of tranquility, animals and nature you can enjoy in addition to the interaction with our chickens.
  The space
  Our cottage has a privileged location in the center of Rapa Nui, 1 minute walk to the supermarkets and shops of the main avenue and 5 minutes from the beach el Pea. We have private parking and a beautiful garden of stones and succulents, plus a small crop of bananas.

  The cabin is fully equipped, has a kitchen, living room, a bathroom and a large bedroom, which can be enabled from 2 people in a double bed or up to 4 people in a double bed plus a cabin.

  Today we have free satellite internet for our guests.

  Considerations:

  The cottage is located in the center of Rapa Nui so you will have excellent access to shops, supermarket, rent a car and more.

  Guests will be taken care of by their own owners who will be available for their requirements.

  It is common to see insects, lizards, flies, cockroaches and at certain times of the year mosquitoes increase so our cabin is protected with musketeers in the windows and we regularly carry out fumigations. To prevent the arrival of these insects in the cabin, our guests must keep their food well kept and sealed while maintaining good hygiene in general.

  On the island there is a lot of dirt and mud when it rains, this is red and once stained the clothes are very difficult to clean, so it is suggested to our guests to remove their shoes every time they enter the cabin to maintain cleanliness.

  No papers should be thrown into the WC.

  To contribute to the environment and help the planet of pollution, we ask our tourists to recycle, separating from their garbage the cartons, glasses and beverage cans, which we will collect to take them to recycling.

  It is strictly forbidden for extra people to sleep in the cabin. If so, the same value of the cabin will be charged to the guest.
  Other things to note
  We have Satellite internet.
  It is strictly forbidden for extras to the reservation to sleep in the cabin. If so, the same value of the cabin will be charged to the guest."
)
housing_10.image.attach(io: file_10, filename: "rapanui.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 11
file_11 = URI.open("https://a0.muscache.com/im/pictures/f8530da3-d432-4351-8c70-c3b5ae919c4d.jpg?im_w=1200")

housing_11 = Housing.create!(
  name: 'Nest House',
  user_id: user_3.id,
  price: '100',
  amount_bathrooms: '2',
  amount_rooms: '3',
  msquare: '124',
  city: 'San Pedro de Atacama',
  state: 'Chile',
  address: 'Licancabur 244',
  description: "Inspired by the habitation of birds, Casa Nido offers you a unique moment in San Pedro de Atacama. Whether it is a family looking for a safe place to enjoy with their chicks; or a flock of travelers migrating to the northern sun; the truth is that this space overlooking the Licancabur Volcano will not leave any kind of visitor indifferent. Take the flight, we wait for you!
  The space
  Our NEST comprises a beautiful and cozy adobe building in the heart of the village.
  3 deluxe rooms (2 double beds, 1 single bed), 2 impeccable bathrooms, living room, 100% equipped kitchenette, parking, large land, terrace and green areas.
  Other things to note
  Sometimes the house is visited by a nice kitten. You can leave him out, as he feeds in another dwelling, or let him in if you don't mind."
)
housing_11.image.attach(io: file_11, filename: "sanpedro.jpg", content_type: "image/jpg")

# Divider

# Seed de Housings profesional 12
file_12 = URI.open("https://a0.muscache.com/im/pictures/d1ae497f-e790-4bb5-ac1b-e872a0a418f5.jpg?im_w=1200")

housing_12 = Housing.create!(
  name: 'Cabin with gardens, pool. Great location.',
  user_id: user_1.id,
  price: '32',
  amount_bathrooms: '1',
  amount_rooms: '2',
  msquare: '102',
  city: 'Puerto Iguazú',
  state: 'Argentina',
  address: 'Misiones 32',
  description: "Enjoy the simplicity of this quiet and central accommodation.
  Three blocks from the Three Border Milestone and a few blocks from the Omnibus Terminal."
)
housing_12.image.attach(io: file_12, filename: "iguazu.jpg", content_type: "image/jpg")

# Divider

puts "Finished housings"



housings = [housing_1, housing_2, housing_3, housing_4, housing_5, housing_6, housing_7, housing_8, housing_9, housing_10, housing_11, housing_12]
files = [file_1, file_2, file_3, file_4, file_5, file_6, file_7, file_8, file_9, file_10, file_11, file_12]
file = URI.open("https://res.cloudinary.com/dygidrhdn/image/upload/v1686697776/newalisa_snse01.webp")

# Crear 10 housings falsos

users.each do |user|
  4.times do
    Housing.create!(
      name: Faker::Company.name[0..20],
      user_id: user.id,
      price: Faker::Number.between(from: 100, to: 1000),
      amount_bathrooms: Faker::Number.between(from: 1, to: 5),
      amount_rooms: Faker::Number.between(from: 1, to: 5),
      msquare: Faker::Number.between(from: 50, to: 200),
      city: Faker::Address.city,
      state: Faker::Address.state,
      address: Faker::Address.full_address,
      description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
      images: 'https://res.cloudinary.com/dygidrhdn/image/upload/v1686697776/newalisa_snse01.webp'

    )
  end
end
puts "finished all seeds"
