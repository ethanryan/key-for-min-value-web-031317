# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def select_winner(passengers)
  # add the code snippet here!
  winner = "" #empty string to hold winner variable
  passengers.each do |suite, name| #loop through the key, value pairs of the passengers hash...
    if suite == :suite_a && name.start_with?("A") #and if the suite key equals suite_a and the name value starts with "A"...
      winner = name #assign that name as the winner
    end #end if statement
  end #end for each loop
  winner #return winner
end #end method


### got this from here: http://stackoverflow.com/questions/33905056/ruby-iterate-through-hash-and-compare-value-pairs
def key_for_min_value(name_hash)
  name_array = name_hash.to_a # convert hash to array and assign to name_array
  default_key = 0   # default key value set at 0
  default_value = 1000 # default value set at 1,000
  smallest_key = [] #create another array, an empty array to hold our smallest_key (the key corresponding to the smallest value)

  name_array.each do |element|   # loop through name_array
      if element[1] < default_value # if current value is less than default_value...
        default_key = element[0] #...change key, and...
        default_value = element[1]  #...change value...
        smallest_key << element[0] ### and store smallest key in our smallest_key array
      end #end if statement
   end #end for each loop
   #default_key #return default_key
   smallest_key.last #return the last element stored in the smallest_key array (should be the smallest key of all the keys stored there! ...and will return nil for an empty hash)
end #end method




##### ------>>>> my best attempt, but it's still returning smallest key (adam) instead of smallest value (blake) in example 2 (and in example 1, but it's also getting the right answer by accident)
# def key_for_min_value(name_hash)
#   name_array = name_hash.to_a #assign the name_hash to an array, name_array
#   min_key = [] #create another array, an empty array to hold our min_key (the key corresponding to the smallest value)
#
#   name_array.each do |key, value|  ###do i want to use collect instead of each??
#     smallest_value = 1000
#     if value < smallest_value
#       min_key << key  ##don't want to push key into min_key, want to replace whatever is in min_key with smallest key
#       #min_key.replace(key) ### also doesn't work
#       #min_key[0, length] = key ### this doesn't work
#       #use rocketship to determine what is smallest
#     end #end if statement
#     # compare values, find lowest value, store its key in min_key and return min_key
#   end #end for loop
#   #name_array.last #return last (smallest) element of min_key array outside of loop
#   min_key.last
#   #name_array
# end #end of method




### my way i'm trying::::

#### Hash[h.sort_by { |_, v| -v }] ###<<<-- didn't say i can't use sort_by...

  # hash.each do |name, values|
  #   values.each do |value|
  #     # ...
  #   end
  # end

# def key_for_min_value(name_hash)
#   name_array = name_hash.to_a #assign the name_hash to an array, name_array
#   min_key = [] #create another array, an empty array to hold our min_key
#
# #want to use collect instead of each??
#   name_array.each do |name, values|
#     values.each do |value|
#       a = 0
#       b = 1
#       a <=> value #use rocketship to determine what is smallest
#       min_key << value
#     end #end for loop
#     # compare values, find lowest value, store its key in min_key and return min_key
#   end #end for loop
#   #name_array.last #return last (smallest) element of min_key array outside of loop
#   min_key
# end #end of method





### this almost get it, but it's sorting by name instead of value....
# def key_for_min_value(name_hash)
#   name_array = name_hash.to_a #assign the name_hash to an array, name_array
#   min_key = [] #create another array, an empty array to hold our min_key
#
# #want to use collect instead of each??
#   name_array.each do |a, b|
#       min_key << a <=> b #use rocketship to determine what is smallest
#     # compare values, find lowest value, store its key in min_key and return min_key
#   end #end for loop
#   #name_array.last #return last (smallest) element of min_key array outside of loop
#   min_key.last
# end #end of method

#### below method is sorting by key names (returning "Adam" in example 2 instead of "Blake"), not key values
# def key_for_min_value(name_hash)
#   min_key = [] #empty array to hold minimum key value (or array of hash elements sorted by key/value from biggest to smallest, then returning last, AKA smallest)
#
# #want to use collect instead of each??
#   name_hash.each do |a, b|
#
#     min_key << a <=> b
#     # compare values, find lowest value, store its key in min_key and return min_key
#   end #end for loop
#   min_key.last #return last (smallest) element of min_key array outside of loop
# end #end of method
