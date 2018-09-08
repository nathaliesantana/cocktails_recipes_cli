class  CocktailsRecipesCli::Cli

  def welcome
    CocktailRecipesCli::Scraper.new("https://www.foodandwine.com/cocktail-recipes").scrape
    puts "Hi, Welcome to Reinvented Classic Cocktails"
    list_menu
  end

  def list_menu
    puts "Here is a list of all of our cocktails:"
    display_cocktails_list
    puts "Type the number of the cocktail you would like to learn."
    input = gets.strip.to_i
    if (1..CocktailRecipes::Recipes.all.length).include?(input)
      puts CocktailRecipes::Recipes.all[input-1].name.upcase
      puts ""
      puts "Ingredients"
      puts CocktailRecipes::Recipes.all[input-1].ingredients
      puts ""
      puts "Instructions"
      puts CocktailRecipes::Recipes.all[input-1].instructions
      puts ""
      menu_options
    else
      invalid
      list_menu
    end

  end

  def another_recipe_menu
    puts "Would you like to see another recipe?"
    puts "Type (Y or N) "
    input = gets.strip.downcase

  end


end
