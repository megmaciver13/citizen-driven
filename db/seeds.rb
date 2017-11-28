# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Landmark.destroy_all
Post.destroy_all

Neighborhood.create([
  {name: "Adams Morgan", quadrant: "NW", photo_url: ""}
  {name: "Anacostia", quadrant: "SE", photo_url: ""}
  {name: "Brookland", quadrant: "NE", photo_url: ""}
  {name: "Capitol Hill", quadrant: "Central", photo_url: ""}
  {name: "Navy Yard", quadrant: "SE", photo_url: ""}
  {name: "Columbia Heights", quadrant: "NW", photo_url: ""}
  {name: "Downtown", quadrant: "NW", photo_url: ""}
  {name: "Dupont Circle", quadrant: "NW", photo_url: ""}
  {name: "Foggy Bottom", quadrant: "NW", photo_url: ""}
  {name: "Georgetown", quadrant: "NW", photo_url: ""}
  {name: "H Street", quadrant: "NE", photo_url: ""}
  {name: "Logan Circle", quadrant: "NW", photo_url: ""}
  {name: "National Mall", quadrant: "Central", photo_url: ""}
  {name: "NoMa", quadrant: "NE", photo_url: ""}
  {name: "Penn Quarter & Chinatown", quadrant: "NW", photo_url: ""}
  {name: "Petworth", quadrant: "NW", photo_url: ""}
  {name: "Shaw", quadrant: "NW", photo_url: ""}
  {name: "SW Waterfront", quadrant: "SW", photo_url: ""}
  {name: "Upper Northwest", quadrant: "NW", photo_url: ""}
  {name: "Woodley Park", quadrant: "NW", photo_url: ""}
  {name: "Other NW", quadrant: "NW", photo_url: ""}
  {name: "Other SW", quadrant: "SW", photo_url: ""}
  {name: "Other NE", quadrant: "NE", photo_url: ""}
  {name: "Other SE", quadrant: "SE", photo_url: ""}
  ])

Landmark.create([
  {name: "The Mall", photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/04/0d/57/da/national-mall.jpg", location:"Central DC", agency: "National Park Service"},
  {name: "Meridian Hill Park", photo_url: "https://d1fii7kpq2y7pu.cloudfront.net/photos/428681534/original/Meridian_Hill_Park_-_fountain.jpg?1486423997", location: "NW", agency: "National Park Service"},
  {name: "Rock Creek Park", photo_url: "https://npca.s3.amazonaws.com/images/9216/bdb45704-5a6c-413f-96de-00816ddd863c-banner.jpg?1446236516", location: "NW", agency: "National Park Service"},
  {name: "Theodore Roosevelt Island", photo_url: "https://www.findyourchesapeake.com/public/nps_global/images/places_large/theodorerooseveltisland.jpg", location: "Potomac River", agency: "National Park Service"},
  {name: "Anacostia Park", photo_url: "https://www.findyourchesapeake.com/public/nps_global/images/places_large/anacostia2.jpg", location: "SE", agency: "National Park Service"},
  {name: "Kingman Island", photo_url: "https://static1.squarespace.com/static/5666fd6b1c12104ed9dc343d/t/569516fb0e4c11c98e31322a/1468361910316/Kingman+11.6.08+019.jpg", location: "Anacostia River", agency: "Living Classrooms National Capital Region"},
  {name: "National Arboretum", photo_url: "http://packedsuitcase.com/wp-content/uploads/2014/04/National-Arboretum-Capitol-Columns-from-afar-2.jpg", location: "NE", agency: "USDA"},
  {name: "Miscellaneous", photo_url: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Flag_Map_of_Washington_DC.png", location: "Elsewhere in DC", agency: "various"}
])

Post.create(author: "Meg", title: "Water Fountain Interest", content: "Please include a water fountain", inquiry_type: "public safety", landmark_id: 1)
