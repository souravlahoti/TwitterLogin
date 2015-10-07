## Synopsis

Twitter Login is an app in Ruby on Rails. The app has the following features :-

1. The app let the user login with Twitter. (https://dev.twitter.com/docs/auth/oauth/faq )

2. Once authenticated, the app pulls just the tweet's that contain URLs from a users stream (friends + users post) for the past 7 days

3. Persist the tweets in the database

4. Once stored, the application should then compute and display

a. Actual Tweets containing links

b. Which user has shared the most links

c. List of Top Domains that have been shared so far

## Code Example

Twitter Login uses Omniauth gem for authentication with Twitter.
Sqlite is used to persist the tweets.

## Motivation

It was a part of an interview process where I was asked to build the web app.

## Installation

Steps to install the app.
1. Firstly clone my project.<br>
2. To install the specfic gems'bundle install'<br>
3. Start the server 'rails server'<br>
4. Goto 'localhost:5000/login' and click sign in using Twitter

## API Reference

You can read more about Twitter omniauth at [click here](https://github.com/arunagw/omniauth-twitter)
