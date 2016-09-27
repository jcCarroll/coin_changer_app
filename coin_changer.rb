
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

def jake(coins)
	change = ""
	coins.each do |key, value|
		key = key.to_s
		if value > 1 && key == "penny"
			key = "pennies"
		elsif
			value > 1
			key = key + "s"
		else
			key
		end
		change << ", " + value.to_s + " " + key
	end
	change
end