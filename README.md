# GuideLines
Controllers should be plural and first letter Capital. EX : Items, Missions, Posts
Model should be singler. ex: item, mission, post

# App creation
rails new exeltise
cd exeltise

# Add gems to Gemfile
gem 'jquery-rails'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'devise'
gem 'activeadmin'

# Declare JS dependencies
//Configuration in the application.js
//=require jquery
//=require jquery_ujs
//=require bootstrap-sprockets

# Add CSS dependencies
//Configuration in the application.scss
@import "bootstrap-sprockets";
@import "bootstrap";

bundle install

# create home page controller
rails g controller Welcome index

# Add & install devise 
rails g devise:install
rails g devise User
rake db:migrate
rails g devise:views

# Install active admin / sould stop spring server ./bin/spring Stop the ./bin/spring server
rails g active_admin:install

# add migration
# rails g migration add_user_id_to_missions user_id:integer
# rake db:migrate
 
# simple form installation
rails g simple_form:install --bootstrap

# Build the data model

rails g controller Missions index
rails g model mission title:string description:text startdate:datetime location:text user:references
rails g model subscription user:references mission:references
rails g model comment description:text user:references mission:references 

rails g active_admin:resource User
rails g active_admin:resource Mission
rails g active_admin:resource Comment
rake db:migrate

# connect to admin-active
rake db:seed

# in config/routes  root :to => 'mission#index'
resources :mission
root 'mission#index

git init
git add .
git commit  -m "first commmit"