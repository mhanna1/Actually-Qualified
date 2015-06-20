# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

Site Mission Statement
The purpose of this site is to demonstrate my proficiency with Ruby on Rails and cloud administration. In this case the cloud is Amazon Web Services.

Web Site Features

The site has been designed with a user database.

The main reason for employers to login is to demonstrate the user login features.

The web site has the ability for new users to create an account.

The new user is sent an email to verify that they have access to the email address.

The email has a user account activation link.

The new user is authenticated only after they click on the activation link.

The web site has page by page access control, some pages like the home page can be viewed by anyone, where as only logged in users wll be able to view the link to my resume page.

The user information is stored in a "mySQL database".

Technologies used in building this application were, Ruby, Ruby on Rails and a RDS hosted "mySQL database". This means your development system and your production system databases can be served from a common cloud location.
The gems used in this Ruby on Rails application are ... aws-sdk, aws-ses, bcrypt, bootstrap-sass, bootstrap-will_paginate, coffee-rails, faker, figaro, guard-minitest, jbuilder, jquery-rails, json, mini_backtrace, minitest-reporters, mysql3, rails, rspec, sass-rails, sdoc, spring, turbolinks, uglifier, web-consol, and will_paginate
This web site is hosted on a Ubuntu EC2 instance. The native AWS instance domain name is http://ec2-52-7-56-224.compute-1.amazonaws.com. The http://actually-qualified.com domain name is routed using AWS "Route 53" service. Being able to click on a link whose top level domain is amazonaws.com proves that the site is hosted on the Amazon AWS cloud service.
Phusion Passenger is a robust module for Apache and Nginx servers, and is preferred by many over any other module for deploying web apps developed using the Rails framework. Apache and Nginx are widely adopted web servers. Although Apache is the best known process based web server, Nginx is most suited if you’re in need of a fast, and responsive server. It performs miracles when the server is under heavy load. This web site is using Phusion Passenger in front of the Nginx server.
Google Analytics is a freemium web analytics service offered by Google that tracks and reports website traffic. Google launched the service in November 2005 after acquiring Urchin. Google Analytics is now the most widely used web analytics service on the Internet. Google Analytics is used to track traffic on this site.


### How do I get set up? ###

* Summary of set up

    Create a directory i.e. ~/actually-qualified on your local machine
    Download the repository into the directory

* Configuration

    In the directory ~/actually-qualified/Actually-Qualified-master/config  there will be a file called RENAME_THIS_AS_application.yml

    This file needs to be renamed application.yml  ...  contained in this file are parameters hich have accounts locations email accounts passwords and more. These will need to be customized for your application.

* Dependencies

    bundle install

    should load the gems required ...


    The project is running Rails version 4.2 and ruby version 1.9.3

    Start a local server using the command

    >>  >    rails server

>    => Booting WEBrick
>    => Rails 4.2.0 application starting in development on http://localhost:3000
>    => Run `rails server -h` for more startup options
>    => Ctrl-C to shutdown server
>    [date] INFO  WEBrick 1.3.1
>    [date] INFO  ruby 1.9.3 (2014-11-13) [x86_64-darwin14.3.0]
>    [date] INFO  WEBrick::HTTPServer#start: pid=15046 port=3000


* Database configuration

    The database that was used is a MySQL db hosted on an RDS instance with Amazon Web Services.  You can basically use whatever type of database you wish.

* How to run tests

    on the command line you can execute the following command
    >> bundle exec rake test

* Deployment instructions

    To be honest ... At this time, I have only positioned this repository so that a potential employer can look at the structure of the site.

    I have not actually used this repository for a new installation.

### Contribution guidelines ###

* Tthis site is an Employer Introduction web site produced to validate my understanding of Rails. No contribution is expected.

### Who do I talk to? ###

* Repo owner or admin .. questions should be directed to mhanna500@gmail.com
