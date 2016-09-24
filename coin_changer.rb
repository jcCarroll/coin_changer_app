 # Coin changer kata

# Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

# eg. if you have 11 cents you should return {:dime => 1, :penny => 1}; if you have 31 cents you should return {:quarter => 1, :nickle => 1, :penny => 1}.


###### jon ######

# if cents >= 10
# 	num_coins = cents / 10
# 	coins[:dime] = num_coins
# 	cents = cents - (num_coins * 10)
# end

############

# def coin_changer(cents)
# 	coins = {}
# 	if cents >= 25
# 		coins[:quarter] = cents / 25
# 		cents = cents % 25
# 	end

# 	if cents >= 10
# 		coins[:dime] = cents / 10
# 		cents = cents % 10
# 	end

# 	if cents >= 5
# 		coins[:nickle] = cents / 5
# 		cents = cents % 5
# 	end 
	
# 	if cents >= 1
# 		coins[:penny] = cents
# 	end
# 	coins
# end

def coin_changer(cents)
	coins = {}
	sorter = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}
		sorter.each do |key, value|
			if cents >= value
				coins[key] = cents / value
			end
			cents = cents % value
		end
	coins
end

# def bill_changer(dollars)
# 	bills = {}
# 	changer = {:hundred => 100, :fifty => 50, :twenty => 20, :ten => 10, :five => 5, :one => 1}
# 		changer.each do |key, value|
# 			if dollars >= value
# 				bills[key] = dollars / value
# 			end
# 			dollars = dollars % value
# 		end
# 	bills
# end

# def money_changer(cash)
# 	monies = {}
	
# 	cash.to_s.split(".")
		
	
	
# end





###### Cyndi ######

# def coinchanger(coins)

# moolah = {}

# num = 100
#  money = {:dollar => num/1, :half_dollar => num/2, :quarter => num/4, :dime => num/10, :nickle => num/20, :penny => num/100}

# money.each do |coin, till|
# 	  		if coins >= till
# 	  			moolah[coin] = coins / till  #coins received divided by the amount defined in the hash
# 	  		end
# 	  		coins = coins % till			# coins received divided by the amount defined in the hash with remainder
# 	  										# need this for penny/nickle to work properly
# 	  	end
	  		
# 	moolah
# end