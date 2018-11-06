[![Build Status](https://travis-ci.com/LucasAlderfer/news-time.svg?branch=master)](https://travis-ci.com/LucasAlderfer/news-time)
# News Time
---

## This project is deployed on heroku and deployed at https://murmuring-retreat-19285.herokuapp.com/
---



## Purpose
---
**This project was designed to be an exercise in consuming an API and making a very basic Web App with Google OAuth**
  ### Stack
  - This project consumes NewsApi, for more information please visit their site at https://newsapi.org/
  - This project is built on Rails 5.1.6 with Ruby 2.4.1
  - Login is handled with Google OAuth 2.0
  - This project is tested with RSpec

## Running Locally
---
**To run this project locally you will need your own Google_Client_ID, Google_Client_Secret, and News_API_KEY as Environment Variables**
  ### Setup
  - Git Clone this project into any folder you would like to work in and then change directories into that folder
  - Then: `bundle install` and `bundle update`
  - Then: `rake db:{create,migrate}`
  - Then: `figaro install`
  - Then: place your GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET, and NEWS_API_KEY in your application.yml file.  For more information on how to use Figaro, please visit: https://github.com/laserlemon/figaro
  - You should then be able to run this application locally running `rails s` in the terminal and visiting `http://localhost:3000` in your browser
  
