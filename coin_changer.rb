
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
		change << " " + value.to_s + " " + key.to_s + ","
	end
	change
end