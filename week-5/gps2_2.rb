def new_list
  {}
end

def add_item(shopping_list,item, qty)
  shopping_list[item] = qty
end
def remove_item(shopping_list, item)
  shopping_list.delete(item)
end

# def update_item(shopping_list,item, qty)
#   shopping_list[item] = qty
# end

alias :update_item :add_item


#add_item(shopping_list, "Apples", 5)
#add_item(shopping_list, "Peach", 2)
#puts "Shopping list will contain apples and peaches"
#p shopping_list

#remove_item(shopping_list, "Apples")
#puts "removed apples"
#p shopping_list
#puts "Update qty of an item"
#update_item(shopping_list, "Peach", 10)

#p shopping_list

def print_list(shopping_list)
  puts "This is your shopping list"
  shopping_list.each{|k,v| puts "Item: #{k}    Quantity: #{v}" }
end


shopping_list = new_list
add_item(shopping_list, "Lemonade", 2)
add_item(shopping_list, "Tomotoes", 3)
add_item(shopping_list, "Onions", 1)
add_item(shopping_list, "Ice Cream", 4)
print_list(shopping_list)
remove_item(shopping_list, "Lemonade")
update_item(shopping_list, "Ice Cream", 1)
print_list(shopping_list)

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#Hashes are much better to use beacuse they are much easier to manipulate the data with. Arrays are fine for simple lists but hashes have more functionality.

#What does a method return?
#A method usually returns a single value or an object.

#What kind of things can you pass into methods as arguments?
#You can pass hashes, strings, and integers. Atleast that is what we have learned so far. But I'm sure as long as you define your methods theres alot more you can do.

#How can you pass information between methods?
#You can use variables for this.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#Im still having trouble with how exaclty how to tackle each problems. There are many ways to solve them. Its hard to see if you are going in the right direction.
