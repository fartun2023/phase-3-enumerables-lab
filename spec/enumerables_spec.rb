# enumerables.rb

def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food| food[:heat_level] }
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods(spicy_foods).each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end