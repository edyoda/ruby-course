On board devise to rails app
1 - Add gem to devise
2 - bundle install
3 - rails g devise table_name
4 - rails g devise:views

# How to add a new column to sign u page
 - add the field name at the registration page
 - Add column to respected table
 - rake db:migrate
 - create controller
    rails generate devise:controllers users
 - follow the changes in routes as suggested by above command  
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }

 - enable respected filter from the  'users/sessions' controller and make the appropriate call
   Session - return flash message if user data is not valid , pending
