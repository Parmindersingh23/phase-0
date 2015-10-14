# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][1][2][0]
def array(arr)
  arr.flatten.each do |element|
    if element == "FORE"
      p element
    end
  end
end
array(array)


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][:inner]["almost"][3]

def find_element(h)
  h.each do |key, value|
    if value.is_a? Hash
      find_element(h[key])
    else
      puts value
    end
  end
end
find_element(hash)

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][:hash]
def find_element(h)
  h.each do |key, value|
    if value.is_a? Array
      p value[1][:hash]
    end
  end
end
find_element(nested_data)


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def array(arr)
  #arr = arr.flat_map { |x| x }
    arr.flat_map {|x| x}.collect! { |x| x + 5 }
end
p array(number_array)


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
def string(arr)
  arr.flatten.each {|x| x << "ly"}
end
p string(startup_names)

#Reflection

#What are some general rules you can apply to nested arrays?
#You need to make sure you are pulling the data from the right array or hash. Some of it can be few layers deep and you can easily get lost in how many loops you need to access that one value.
#Go from the inside out

#What are some ways you can iterate over nested arrays?
#You can use .each and if/else statements to get what you want.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#Mostly we used .each and then we also learned about flatten which was super helpful.