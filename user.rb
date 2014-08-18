

class User 
	def self.filepath=(path=nil)
		@@filepath- File.join(APP_ROOT, path)
	end
	require 'csv'
	def account_launch #setting up user acount
		puts "please enter a username:"
		username= gets.chomp
		return create_password_clearance
	
	end
	def create_password_clearance #setting up password confirmation
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
			print "please resubmit passwords"
			return create_password_clearance
		end
	end
	def login #standard login section
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
			return login
		end
	end

end

mencey=user.new
mencey.create_password_clearance