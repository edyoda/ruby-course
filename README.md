rails new sample_name  # this line will create a rails app inside the sample_name
cd sample_name
# to start the server use below command
rails s/server
Go to browser and hit localhost:3000 , you will see a page returning from rails page
# To create a controller
rails g/generate controller controller_name(s)  action_name1 action_name2 action_name3 action_name4
# To create a model
rails g model model_name column_name1 column_name2 column_name3 column_name4
Note:
	along with model one more file gets created inside db/migrate folder
        which will be responsile to create the respoective table inside database
        use below command to creat the table
        rake db:migrate or rails db:migrate # this command will update your schema.rb file with a new version

        If you are not passing anything with the column_name1 name then by default it will treated as String type



 # adding data to table from console
 user = User.new({name: 'Second try', email: 'try@gmail.com', password: 'hello123', confirm_password: 'hello123'})
 user.save # if this return true means row got added to user table

 user = User.new
 user.name  = 'No PWD'
 user.email = 'nopwd@gmail.com'
 user.save # true if commit is Successful


 # create command

  user = User.create({name: 'Second try', email: 'try@gmail.com', password: 'hello123', confirm_password: 'hello123'})





	ActiveRecord -
		1. Base  # takes care of all your business logics , works as data layer
		2. Migrate # helps you to do add table , remove table and modify the column names of the table


		Note : Model class name will the table name where as tables column names will the object of
		Model class . As shown in above examples at line 24 to 29.


		# to check the connection use below command  from rails console
		ActiveRecord::Base.connection
		# to check the tables count use below command
		ActiveRecord::Base.connection.tables
    # to add a table with model file
		rails g migration create_article title content


		To add a column in existing table
		rails g migration add_column_to_table_article photo:boolean

    To remove a column from existing table
		rails g migration remove_column_table_article photo

		Filirb(main):001:0> File.read("user_data.txt")
		=> "Rails  HSR\nHSR  JAVAS\n"
		irb(main):002:0> File.open("user_data.txt", "r")
		=> #<File:user_data.txt>
		irb(main):003:0> File.open("user_data.txt", "r").read()
		=> "Rails  HSR\nHSR  JAVAS\n"
		irb(main):004:0> File.read("user_data.txt")
		=> "Rails  HSR\nHSR  JAVAS\n"
		irb(main):005:0> File.read("user_data.txt").split("\n")
		=> ["Rails  HSR", "HSR  JAVAS"]
		irb(main):006:0> File.read("user_data.txt").split("\n").map {|a| a.split(" ")}
		=> [["Rails", "HSR"], ["HSR", "JAVAS"]]
		irb(main):007:0> exit



Call back --

 -- Creating

 -- Updating
 -- Deleting 	


# Mailer

1 ) add a mailer class using below commands
rails g mailer send_email welcome # it will add class named as SendEmailMailer in app/mailer folder alongs with templates in the views folder whcih will noting but the body of the email


2 ) Update you welcome method mail function.
  mail(to: user.email, subject: "Welcome to weInvest")

3)  user1 = User.find(12)
		SendEmailMailer.welcome(user1).deliver_now!


		Association in rails


On boarding image to the app

1) add paperclip image to the gem
2) bundle install
	rails g model image
	rails g paperclip image photo #( photo will be an reference object to image)
	# to build association
	rails g migration add_column_to_image user:belongs_to
3) add builder
4) upload image and
5) access it via user object
@user = User.last
@user.image
@user.image.photo
@user.image.photo.path
@user.image.photo.path(:small)
@user.image.photo.path(:thumb)
@user.image.photo
