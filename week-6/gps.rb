
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