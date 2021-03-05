# Write your code here.

require 'pry' 

katz_deli = []

# describe "#line"  + there is nobody in line" do AND "should say the line is empty"
def line(katz_deli)
  queue = []
  # creates a empty array named queue 
  if katz_deli.length == 0
    puts "The line is currently empty."   
    # when the line is empty its responds
  else 
    katz_deli.each_with_index do |customer, index|
      # we are taking this array and iterating inside it and putting 2 arguments inside it
    queue << "#{index + 1}. #{customer}"
    # we want it to be a string and we want to put a variable inside a string. we have to add this or else the starting number begins at 0. We are shovelling this into the empty array
  end
  queue.join(" ") 
  # after all iterating is done, we can access it and join it all together. (" ") is how we put spaces inbetween
  puts "The line is currently: " << queue.join(" ") 
  # This puts out the statement and we shovel what is in the queue after 
end

# #take_a_number + "there is nobody in line" + "should add a person to the line use << method
def take_a_number(katz_deli, customer)
  katz_deli << customer
  puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
  #katz_deli.push.each(customer)
  #puts "Welcome, #{customer}. You are number #{index} in line."
  # if katz_deli.length == 0
  #   puts "there is nobody in line." 
  # end
end

# describe "#now_serving" do + context "there are no people in line" do + "should say that the line is empty" do
def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
end

