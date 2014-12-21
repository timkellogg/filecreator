# This a small ruby script to take user info and write out a file 

def store_user_input 
	puts "What do you want to call your file?"
	
	file_name = gets.chomp 
	
	# Code to create write file 
	puts "Ok, what would you like to input?"
	print "> "
	
	input_to_write_file = gets.chomp
	
	created_write_file = File.open(file_name, "w")
	created_write_file.puts input_to_write_file
	
	# Code to open file now 
	puts "Do you wish to view the file now (y or n)?" 
	print "> "
	
	view_now = gets.chomp
	
	if view_now == 'y'
		`notepad #{file_name}`
	else 
		puts "Ok, well your file called #{filename} has been created." 
	end
		
end	

store_user_input
