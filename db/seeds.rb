# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Landmark.destroy_all
Post.destroy_all

Landmark.create([
  {name: "The Mall", photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/04/0d/57/da/national-mall.jpg", location:"downtown", agency: "Department of Public Works"},
  {name: "Meridian Hill Park", photo_url: "https://d1fii7kpq2y7pu.cloudfront.net/photos/428681534/original/Meridian_Hill_Park_-_fountain.jpg?1486423997", location: "NW", agency: "Department of Public Works"},
  {name: "Rock Creek Park", photo_url: "https://npca.s3.amazonaws.com/images/9216/bdb45704-5a6c-413f-96de-00816ddd863c-banner.jpg?1446236516", location: "NW", agency: "National Park Service"},
  {name: "Theodore Roosevelt Island", photo_url: "https://www.findyourchesapeake.com/public/nps_global/images/places_large/theodorerooseveltisland.jpg", location: "Potomac River", agency: "National Park Service"},
  {name:, photo_url:, location:, agency: "Department of Public Works"},
  {name:, photo_url:, location:, agency: "Department of Public Works"},
  {name:, photo_url:, location:, agency: "Department of Public Works"},
  {name: "Miscellaneous", photo_url: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Flag_Map_of_Washington_DC.png", location: "Elsewhere in DC", agency: "Department of Public Works"}
])
