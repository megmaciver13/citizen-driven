# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Neighborhood.destroy_all
Landmark.destroy_all
Post.destroy_all

Neighborhood.create([
  {name: "Adams Morgan", quadrant: "NW", photo_url: "https://washington-org.s3.amazonaws.com/s3fs-public/admo-18th-st-rows-of-stores-credit-ted-eytan_flickr-user-taedc.jpg"}
  {name: "Anacostia", quadrant: "SE", photo_url: "https://hd1n2hd4y-res.cloudinary.com/image/upload/c_scale,w_800/post-148011.png"}
  {name: "Brookland", quadrant: "NE", photo_url: "https://ggwash.org/images/posts/201309-060134.jpg"}
  {name: "Capitol Hill", quadrant: "Central", photo_url: "https://a1.muscache.com/locations/uploads/photo/image/6823/75_4125_0_2538_two_USA_WashingtonDC_CapitolHill_CKW-6.jpg"}
  {name: "Navy Yard", quadrant: "SE", photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiDneqln-LXAhVD52MKHeEkC1MQjRwIBw&url=https%3A%2F%2Fwww.airbnb.com%2Flocations%2Fwashington-dc%2Fnavy-yard&psig=AOvVaw1KbYjXh6mXk7-WwZPsF6nS&ust=1511992003441515"}
  {name: "Columbia Heights", quadrant: "NW", photo_url: "https://a2.muscache.com/locations/uploads/photo/image/7934/0_4200_0_2800_one_USA_WashingtonDC_ColumbiaHeights_CKW-16.jpg"}
  {name: "Downtown", quadrant: "NW", photo_url: "http://cache.marriott.com/propertyimages/w/wasdc/wasdc_main01_r.jpg?resize=0.5x:0.5x"}
  {name: "Dupont Circle", quadrant: "NW", photo_url: "http://www.hotelpalomar-dc.com/images/1700-960/img-4621v2-3-0c37c2ad.jpg"}
  {name: "Foggy Bottom", quadrant: "NW", photo_url: "https://a0.muscache.com/locations/uploads/photo/image/6956/0_4200_0_2800_one_USA_WashingtonDC_FoggyBottom_WestEnd_CKW-29.jpg"}
  {name: "Georgetown", quadrant: "NW", photo_url: "https://static1.squarespace.com/static/58efabe6d482e960c0e68f8f/58f61046579fb37c1caf2694/58f6104920099ed0c8f2b0b2/1492521202704/georgetown-waterfront-with-boats-visitors_credit-washington-harbour.jpg"}
  {name: "H Street", quadrant: "NE", photo_url: "http://www.elevationdcmedia.com/galleries/Neighborhoods/HStreet/hstreet-5.jpg"}
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
  {name: "parking lot", photo_url: "", location: "NW", agency: "National Park Service"},
  {name: "Rock Creek Park", photo_url: "https://npca.s3.amazonaws.com/images/9216/bdb45704-5a6c-413f-96de-00816ddd863c-banner.jpg?1446236516", location: "NW", agency: "National Park Service"},
  {name: "Theodore Roosevelt Island", photo_url: "https://www.findyourchesapeake.com/public/nps_global/images/places_large/theodorerooseveltisland.jpg", location: "Potomac River", agency: "National Park Service"},
  {name: "Anacostia Park", photo_url: "https://www.findyourchesapeake.com/public/nps_global/images/places_large/anacostia2.jpg", location: "SE", agency: "National Park Service"},
  {name: "Kingman Island", photo_url: "https://static1.squarespace.com/static/5666fd6b1c12104ed9dc343d/t/569516fb0e4c11c98e31322a/1468361910316/Kingman+11.6.08+019.jpg", location: "Anacostia River", agency: "Living Classrooms National Capital Region"},
  {name: "National Arboretum", photo_url: "http://packedsuitcase.com/wp-content/uploads/2014/04/National-Arboretum-Capitol-Columns-from-afar-2.jpg", location: "NE", agency: "USDA"},
  {name: "Miscellaneous", photo_url: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Flag_Map_of_Washington_DC.png", location: "Elsewhere in DC", agency: "various"}
])

Post.create(author: "Meg", title: "Water Fountain Interest", content: "Please include a water fountain", inquiry_type: "public safety", landmark_id: 1)
