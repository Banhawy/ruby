#Defining the methods used to calculate Tips and Taxes
def calculate(base_price, percentage)
	return base_price * percentage/100
end

#Getting Meal, Tip, and Tax variables from the User
print "Enter the cost of your meal before tax: "
meal= Float(gets.chomp)  #Base-price of the meal
print "Enter the tax rate on your meal: "
tax= Float(gets.chomp)	  #Tax rate of the meal
print"What percentage would you like to tip: "
tip= Float(gets.chomp)  #Tip rate of the meal	

#Using these initial variables, the script assigns four additional variables:
tax_value= calculate(meal, tax)
meal_with_tax= meal + tax_value
tip_value= calculate(meal, tip)
total_cost= meal_with_tax + tip_value

#Outputting the subtotals and costs to screen
puts "The pre-tax cost of your meal was $%.2f." %meal
puts "The tax value is: $#{tax_value} "
puts "At %d%%, tax for this meal is $%.2f." %[tax,tax_value]
puts "At %d%% tip rate, the tip value for this meal is $%.2f." %[tip, tip_value]
puts "The grand total for this meal is then $%.2f." %total_cost
