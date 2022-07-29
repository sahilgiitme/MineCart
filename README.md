## Installing code 
Clone this repository >> cd into the directory

## Running the app
1. change the ```config/database.yml``` file to your database credentials
2. run ```bundle install```
3. run ```rails db:create```
4. run ```rails db:migrate db:seed```
5. then compile the assets by running ```rails assets:precompile```
6. the start the server by runnung ```rails s```

## Pre-populate credentials 
for Admin :
email: ```admin@gmail.com```
pass: ```admin123```
for User :
email: ```user@gmail.com```
pass: ```user123```

Several products has already been added to ```seed``` file 

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary commands from the shell without stopping the server.

## Gems used for development of this app
1. ```devise``` for login and signin authentication
2. ```devise-tailwinded``` to support devise views
3. ```tailwindcss-rails``` that also support scaffold 
4. ```pry``` for debugging
