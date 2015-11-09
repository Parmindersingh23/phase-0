
# Your Names
# 1) Michael Jasinski
# 2) Parminder Singh

# We spent [2.5] hours on this challenge.

# Bakery Serving Size portion calculator.

# The method serving size is cal how many units of desert to make an order
# The method hash
#Loop: Element-food is itrating over the hash. it is asking if the food is not equal to the amount to make decrease the error by -1

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  def serving_size(serving_size, serving_size_mod)
    serving_size = menu.values_at(item_to_make)[0]
    serving_size_mod = order_quantity % serving_size
    if serving_size_mod == 0
     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    else
    #leftover_item = serving_size/order_quantity will give us how much we have leftover_item and then we can use that value to calulate what item we can serve.
     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
   end
 end
# end

  #menu.each do |food|
  #if menu[food] != menu[item_to_make]
     # p error_counter += -1
    #end
#   end

  #Asking if the error counter is less than zero raise arg mesg

  #if error_counter > 0
  #  raise ArgumentError.new("#{item_to_make} is not a valid input")
  #end

  #serving size is equal to the values in the hash above
  #size mod order quant is being modulas by the serving size
#   serving_size = menu.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size

  # when serving size mod is 0 it returns  the number of item to make
  # else of the item to make you have left overs and should make that many leftovers.
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

#tests
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
#Did you learn any new methods? What did you learn about them?
#What did you learn about accessing data in hashes?
#What concepts were solidified when working through this challenge?

##My Second time doing this : A different Solution!



# Your Names
# 1)
# 2)

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

#Method is taking in two arguments
#Hash labeled library
#setting a variable counter to 3


# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3
#   #each.do is iterating over the hash
#   #If item is not in the library it subtracts 1 from the error counter
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end
#   #if error counter is greater than 0 raises an error
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   #variables are checking the hash, for the arguments passed in the method
#   #variable order quantity modulous serving size
#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size
#   #if serving size mod is 0 then we make that item else you have leftover items
#   #change case to if
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

$left_over = {
  "cookie" => 0,
  "cake" => 0,
  "pie" => 0
  }

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3
  #each.do is iterating over the hash
  #If item is not in the library it subtracts 1 from the error counter
  #library.each do |food|
    #if library[food] != library[item_to_make]
  if !menu.has_key?(item_to_make)
      #p error_counter += -1
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  #variables are checking the hash, for the arguments passed in the method
  #variable order quantity modulous serving size
  count = order_quantity
  serving_size = menu.values_at(item_to_make)[0]
  bake_count = order_quantity % serving_size
  #if serving size mod is 0 then we make that item else you have leftover items
  #change case to if
  if $left_over.values_at(item_to_make)[0] > count
     $left_over[item_to_make] -= count
  elsif $left_over[item_to_make][0] < count
    while $left_over[item_to_make][0] > 0
      count -= $left_over[item_to_make][0]
    end
    return "Calculations complete, make #{count/serving_size} more items"
  elsif bake_count == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{bake_count} leftover ingredients. Suggested baking items: #{order_quantity / serving_size + 1}"
    #if modulo > 0, make 1 additional item
  end

#identify & track the leftover slices from line 73, if a new customer, and has order_quantity <= leftover, bake_count = 0
end

p serving_size_calc("pie", 8)
p serving_size_calc("pie", 4)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)



=begin
#  Reflection

#What did you learn about making code readable by working on this challenge?
Sometimes the code that you are presented with is really bad in readablity. We changed the variable names so it is easier to follow and made it easier to understand what exactly the program is running.


#Did you learn any new methods? What did you learn about them?

Learned how to use has_key? and how that can check values in the hash. Also !menu to set a not equal to menu.
I also havent used global variabes until now which was interesting to use across the whole snippet of code.

#What did you learn about accessing data in hashes?
Theres certain ways you can access and manipulate hashes. arrays are accessed using indexes and hashes are accessed by keys and values.



#What concepts were solidified when working through this challenge?

Main concepts that stuck with me are how we can set differnt types of condtions to the hashes and check if the those conditions will come out true or not.


=end

