require 'users'
class Launch
	def begin
		introduction
		loginmenu
		conclusion
	end
	def loginmenu
	puts "\n -If you would like to sign in submit '1' \n -If you would like to creat a new account submit '2' \n -to quit press 'q': "
	command= gets.chomp
		if command == '1'
		User.login
		elsif command == '2'
		User.account_launch 
		elsif command == 'q'
	 	puts "you have decided to quit, exiting!"
		else 
		puts"You have submitted an invalid response! "
		end
	end
	def introduction 
		puts "Welcome to the new JMA app, this is an exiting Methodist adventure"
	end 
	def conclusion 
		puts "\nThanks for visting the app, hope you come back "
	end
end
