require 'user'
class Launch
	def initialize (path=nil)
		user.filepath = path
		if user.file_exists?
			puts "found user file"
		elsif user.create_file
			puts "created user file"
		else
			puts "exiting.\n\n"
			exit!
		end
	end
	def begin
		introduction
		#puts "If you would like to sign in submit '1' /n If you would like to creat a new account submit 2 /n to quit press q: "
		#command= gets.chomp
		#if command == 1
		#User.login
		#elif command == 2
		#	user.create_login
		#elif command == 'q'
	 	#quit command
		#else 
		#	puts "you have submitted an invalid response, "
		#end
		conclusion
	end
	def introduction 
		puts "welcome to the new JMA app, this is an exiting Methodist adventure"
	end 
	def conclusion 
		puts "/n Thanks for visting the app, hope you come back "
	end
end
