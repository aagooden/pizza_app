def convert_input(params) #converts the meats input into a usable array.
	converted = []
	params.each do |item|
		conv = item.split('!!')
		# conv[1] = conv[1].to_i
		converted.push conv
	end
	return converted
end

def size
	{"small crust" => 2, "medium crust" => 3, "large crust" => 4, "XL crust" => 5}
end

def crust
	{"Pan crust" => 0, "Stuffed crust" => 2, "Bacon stuffed crust" => 3}
end

def meats
	{"none" => 0, "Chicken" => 2, "Pepperoni" => 1, "Sausage" => 1, "Bacon" => 2}
end

def veggies
	{"none" => 0, "Tomato" => 1, "Pineapple" => 2, "Spinach" => 1}
end

def special_toppings
	{"none" => 0, "Bbq sauce" => 2, "Buffalo sauce" => 2}
end

def sauces
	{"none" => 0, "Alfredo sauce" => 0, "Bbq sauce" => 0, "Tomato sauce" => 0, "Marinara sauce" => 0}
end

def extra_toppings
	{"none" => 0, "Double pepperoni" => 1, "Extra cheese" => 1, "Double chicken" => 3,}
end

def salad
	{"none" => 0, "Caesar" => 10, "Veggie" => 10}
end

def wings
	{"none" => 0, "Kentucky bourbon" => 2, "Garlic" => 2, "Buffalo" => 3}
end

def drinks
	{"none" => 0, "Water" => 1, "Coca-Cola" => 2, "Powerade" => 2, "Tea" => 2, "Sprite" => 2}
end

def pasta
	{"none" => 0, "Chicken alfredo" => 8, "Lasagne" => 8}
end
