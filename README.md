# Community Improvement App

This app, called Citizen Driven, is designed to help community members voice their ideas for improvements that could/should be made to their community. By allowing users to see others' posts, it is a way to engage the community and bring them together around community pride. For this project, the seed data reflects communities within DC, but it could also be extrapolated to other cities.

## Getting Started

These instructions will get this project up and running on your local system.

## Prerequisites

To run this program on your local system, you will need to use Ruby, Rails, and PostgreSQL.

## Installing

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

## Author

Meg MacIver
