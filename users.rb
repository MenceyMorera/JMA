class User 
	require 'csv'
	def self.account_launch #setting up user acount
		puts "please enter a username:"
		username= gets.chomp
		return self.create_password_clearance
	
	end
	def self.create_password_clearance #setting up password confirmation
		puts "please enter a password:"
		password= gets.chomp
		puts "please confirm password:"
		passwordconfirm= gets.chomp
		if password == passwordconfirm
			print "your passwords match,thank you"
			login= {username=>password}
			CSV.open("money.csv", "ab"){|csv| login.to_a.each {|x| csv << x}}
			@@file=File.open("money.txt", 'a+')
			@@file.write(login)
		else
			print "Passwords did not match, let's try again...\n\n"
			return self.create_password_clearance
		end
	end
	def self.login #standard login section
		puts "please enter a username:"
		usernamec= gets.chomp
		puts "please confirm password:"
		passwordc= gets.chomp
		clogin= {usernamec=> passwordc}
		user =CSV.foreach("money.csv"){|row| row.inspect}
		if clogin === user
			puts "welcome my dear friend"
		else 
			puts "Password or Username is incorrect please try again."
			return self.login
		end
	end

end


