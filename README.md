# Community Improvement App

This app, called Citizen Driven, is designed to help community members voice their ideas for improvements that could/should be made to their community. By allowing users to see others' posts, it is a way to engage the community and bring them together around community pride. For this project, the seed data reflects communities within DC, but it could also be extrapolated to other cities.

## List of Features
* On every page, there are a few key features:
- the app header, Citizen Driven, which links back to the neighborhood index page, and the tagline underneath
- top left: links for user to sign in and sign up (if not logged in), or log out (if currently logged in)
- bottom: links to home page
* On the home page, there is a little bit of info about the purpose of the app with a link to enter to the next page.
* The next page shows a list of DC neighborhoods. When you click one, it takes you to a show page for that individual neighborhood.
* Each neighborhood page shows the name of the neighborhood, the quadrant of the city that it is located in, a link to post your input, a list of others' input, a map of DC, and a link back to the post displaying all the neighborhoods.
- If you click to post your input, you are taken to a form. (In order to post your input, you must be logged in.)
- If you click on another's post, you are taken to that post show page.
* Each post show page shows:
- The post title, content, author, associated neighborhood, type of inquiry, a map, created on/updated on dates, and a link back to the neighborhood show page.
- If you are logged in and you are the author of the post, there will be links visible to edit or delete the post.

## Getting Started

These instructions will get this project up and running on your local system.

## Prerequisites

To run this program on your local system, you will need to have Ruby and Rails installed.

## Installing the App

Clone this repository to a local repository. Next you will need to install gem files by running:
```
bundle install
```
Next you will need to create the database (drop first to be sure), migrate the data structure, and load your seed data. To do this, run:
```
rails db:drop db:create db:migrate db:seed
```
Then you can run the project on rails:
```
rails s
```
And type http://localhost:3000/ into your browser.

## Deployment

To access Citizen Driven on a live system, visit _____________________.

## Built With

To build this app, I used HTML, CSS, JavaScript, Ruby, Ruby on Rails, and a PostgreSQL database.

## Contributions

To contribute, fork and clone the repository, and submit a pull request with your proposed changes.

## Unsolved Problems

There are quite a few additional features that I am interested in adding in the future. You can find a breakdown of completed and incomplete tasks in the 'projects' section of this repository. To summarize, I envision adding:

* better map functionality - e.g. pins of the locations of existing posts, shadow area of neighborhood boundaries
* use JavaScript to implement text color changes when you hover
* allow users to click a button to "support" others posts/ideas
* track the User's geolocation, so that they can only post if they have been near the location in the past day
* clean up overall design & make 'post your idea' link on the neighborhood show pages more visible to the user


## Author

Meg MacIver
