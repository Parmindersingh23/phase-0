#Pseudocode
#1. Need to make 5 people go into each array.
#2. Make sure the array has room for enough people.
#3. If there is no room, make sure there is in a different array.
#4. Also need to randomize the arrays


#Code

def accounts(group)
  if group.length % 5 == 0
    return group.shuffle.each_slice(5).to_a
  end
end

Copperheads =

["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum","Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan","Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do","Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs","Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang","Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim","James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark","Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill","Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage","Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe","Daniel Woznicki","Jay Yee", "Nicole Yee","Bruno Zatta"]


p accounts(Copperheads)


#Reflection

#What was the most interesting and most difficult part of this challenge? The most difficult part of this challenge was how do divide each array into separate groups.
#Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I think I am getting better at making it simpler and easier to go step by step. However, this also depends on the problem presented and the knowledge I have.
#Was your approach for automating this task a good solution? What could have made it even better?
#I think it was but I dont know enough about coding yet to know if it can be better or not. Im sure I can get rid of some of the duplicate code, but I think that might also break my code, so I am not sure.
#What data structure did you decide to store the accountability groups in and why? I converted everything to an array and then just shuffled them. We are using a non-destructive method so we dont want to rewrite the data everytime so arrays work well for this.
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? I learned .shuffle and each_slice. which helped and made things easier after looking at some examples online and getting help online. Also I only have one if statment because we have 55 people in our group so there is no people left over!










