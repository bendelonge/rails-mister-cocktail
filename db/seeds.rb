require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = open(url).read
ingredients = JSON.parse(drinks)
allingredients = ingredients['drinks']

allingredients.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end


Cocktail.create(name: "my_cocktail")
Dose.create(description: "6cl", cocktail_id: 1, ingredient_id: 1)
