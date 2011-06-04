def do_this_n_times(n)
  x = 0
  while x < n
    yield x
    x = x + 1
  end
end

puts "Custom loop"
do_this_n_times(6) do |number|
  puts "Line #{number}: Hello World"
end

puts "\n\n"  # blank line

puts "Ruby built-in loop"
10.times do 
  puts "Hello World"
end

puts "\nRuby built-in loop with incrementer"
10.times do |number|
  puts "Line #{number + 1}: Hello World"
end
