# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Neighborhood.destroy_all
Post.destroy_all
User.destroy_all

meg = User.create(email: "meg@email.com", password: "meg1234")
tom = User.create(email: "tom@email.com", password: "tom1234")
rebecca = User.create(email: "rebecca@email.com", password: "rebecca1234")
curt = User.create(email: "curt@email.com", password: "curt124")

neighborhoods = Neighborhood.create([
  {name: "Adams Morgan", quadrant: "NW", photo_url: "https://washington-org.s3.amazonaws.com/s3fs-public/admo-18th-st-rows-of-stores-credit-ted-eytan_flickr-user-taedc.jpg"},
  {name: "Anacostia", quadrant: "SE", photo_url: "https://hd1n2hd4y-res.cloudinary.com/image/upload/c_scale,w_800/post-148011.png"},
  {name: "Brookland", quadrant: "NE", photo_url: "https://ggwash.org/images/posts/201309-060134.jpg"},
  {name: "Capitol Hill", quadrant: "Central", photo_url: "https://a1.muscache.com/locations/uploads/photo/image/6823/75_4125_0_2538_two_USA_WashingtonDC_CapitolHill_CKW-6.jpg"},
  {name: "Navy Yard", quadrant: "SE", photo_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiDneqln-LXAhVD52MKHeEkC1MQjRwIBw&url=https%3A%2F%2Fwww.airbnb.com%2Flocations%2Fwashington-dc%2Fnavy-yard&psig=AOvVaw1KbYjXh6mXk7-WwZPsF6nS&ust=1511992003441515"},
  {name: "Columbia Heights", quadrant: "NW", photo_url: "https://a2.muscache.com/locations/uploads/photo/image/7934/0_4200_0_2800_one_USA_WashingtonDC_ColumbiaHeights_CKW-16.jpg"},
  {name: "Downtown", quadrant: "NW", photo_url: "http://cache.marriott.com/propertyimages/w/wasdc/wasdc_main01_r.jpg?resize=0.5x:0.5x"},
  {name: "Dupont Circle", quadrant: "NW", photo_url: "http://www.hotelpalomar-dc.com/images/1700-960/img-4621v2-3-0c37c2ad.jpg"},
  {name: "Foggy Bottom", quadrant: "NW", photo_url: "https://a0.muscache.com/locations/uploads/photo/image/6956/0_4200_0_2800_one_USA_WashingtonDC_FoggyBottom_WestEnd_CKW-29.jpg"},
  {name: "Georgetown", quadrant: "NW", photo_url: "https://static1.squarespace.com/static/58efabe6d482e960c0e68f8f/58f61046579fb37c1caf2694/58f6104920099ed0c8f2b0b2/1492521202704/georgetown-waterfront-with-boats-visitors_credit-washington-harbour.jpg"},
  {name: "H Street", quadrant: "NE", photo_url: "http://www.elevationdcmedia.com/galleries/Neighborhoods/HStreet/hstreet-5.jpg"},
  {name: "Logan Circle", quadrant: "NW", photo_url: "https://washington-org.s3.amazonaws.com/s3fs-public/styles/listicle_image/public/people-enjoying-logan-circle-on-a-spring-evening_ddc-photo.jpg?itok=0y9gY85F"},
  {name: "National Mall", quadrant: "Central", photo_url: "https://ridb.recreation.gov/images/81894.jpg"},
  {name: "NoMa", quadrant: "NE", photo_url: "https://cdn.vox-cdn.com/uploads/chorus_image/image/50407079/20489737062_d7b3650a4f_o.0.0.jpg"},
  {name: "Penn Quarter & Chinatown", quadrant: "NW", photo_url: "http://www.longandfoster.com/images/uploads/recos/35009/community/washington/penn-quarter/01.jpg"},
  {name: "Petworth", quadrant: "NW", photo_url: "http://msqrealty.com/wp-content/sv-galleries/pic8.png"},
  {name: "Shaw", quadrant: "NW", photo_url: "https://a2.muscache.com/locations/uploads/photo/image/7218/0_4200_0_2800_one_USA_WashingtonDC_Shaw_CKW-17.jpg"},
  {name: "SW Waterfront", quadrant: "SW", photo_url: "https://a0.muscache.com/locations/uploads/photo/image/13143/0_4200_0_2800_one_USA_WashingtonDC_SouthwestWaterfront_CKW-40.jpg"},
  {name: "Upper Northwest", quadrant: "NW", photo_url: "https://assets.fodors.com/destinations/4728/national-cathedral-washington-dc-usa-north-america_main.jpg"},
  {name: "Woodley Park", quadrant: "NW", photo_url: "https://images1.apartments.com/i2/pkC33nq7NL392gbIiHRJuhw1GYyQe5htuwAhSs7JmXY/110/woodley-park-washington-dc-neighborhood-photo.jpg"},
  {name: "Other NW", quadrant: "NW", photo_url: ""},
  {name: "Other SW", quadrant: "SW", photo_url: ""},
  {name: "Other NE", quadrant: "NE", photo_url: ""},
  {name: "Other SE", quadrant: "SE", photo_url: ""}
])

meg.posts.create(author: "Meg", title: "Community Garden at 13th & Irving", content: "There isi interest from the community to install a community garden in the dilapidated parking lot at 13th & I", inquiry_type: "public health", location: "13th St NW & Irving St NW", neighborhood_id: 6)
Post.create(author: "Curt", title: "Install Accessible Ramp on Waterfront Walk", content: "The waterfront boardwalk area should really have a ramp to make it accessible to all citizens!", inquiry_type: "accessibility", location: "600 Water St SW", neighborhood_id: neighborhoods[17])
Post.create(author: "Tom", title: "More Street Lights Needed", content: "The streets are very dark in this area. New streetlights would greatly improve public safety and overall neighborhood satisfaction.", inquiry_type: "public safety", location: "20 M St SE", neighborhood_id: neighborhoods[4])
Post.create(author: "Rebecca", title: "New Paint on Playground", content: "The playground at Joseph H. Cole Recreation is looking rather dilapidated and could use another coat of paint!", inquiry_type: "aesthetics", location: "1299 Neal Street, NE", neighborhood_id: neighborhoods[10])
