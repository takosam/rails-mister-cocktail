puts 'Destroying ...'
Ingredient.destroy_all if Rails.env.development?

puts 'Creating Ingredients....'
ingredient = Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
puts "Created #{Ingredient.count} ingredients...."

puts "#{ingredient.name}"
