puts "Exploring files in code"
puts "Looking at my directory"
Dir['*'] # look for anything

this_file = __FILE__
puts "The file I'm in is #{this_file}"

puts "Finding the directory a file is in"
puts File.dirname('password_generator.rb')

puts "Finding my directory"
puts File.dirname(__FILE__)

puts "Look for password_generator.rb WITH the directory"
file_with_path = File.dirname(__FILE__) + '/' + 'password_generator.rb' 
puts file_with_path

puts "Reading the contents of 'password_generator'"
puts File.readlines(file_with_path) # File object read the contents

