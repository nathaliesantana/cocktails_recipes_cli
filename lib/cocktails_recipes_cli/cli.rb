class  CocktailsRecipesCli::Cli

  def welcome
    CocktailsRecipesCli::Scraper.new("https://www.foodandwine.com/cocktail-recipes").scrape
    puts "Hi, Welcome to Reinvented Classic Cocktails"
    list_menu
  end

  def list_menu
    puts "Here is a list of all of our cocktails:"
    display_cocktails_list
    puts "Type the number of the cocktail you would like to learn."
    input = gets.strip.to_i
    if (1..CocktailsRecipesCli::Recipes.all.length).include?(input)
      puts CocktailsRecipesCli::Recipes.all[input-1].name.upcase
      puts ""
      puts "Ingredients"
      puts CocktailsRecipesCli::Recipes.all[input-1].ingredients
      puts ""
      puts "Instructions"
      puts CocktailsRecipesCli::Recipes.all[input-1].instructions
      puts ""
      another_recipe_menu
    else
      invalid
      list_menu
    end

  end

  def another_recipe_menu
    puts "Would you like to see another recipe?"
    puts "Type (Y or N) "
    input = gets.strip.downcase
    if input == "y"
      list_menu
    elsif input == "n"
      good_bye
    else
      invalid
      another_recipe_menu
    end
  end

  def good_bye
    puts ""
    puts "Thank you for your visit."
    puts "You're welcome to come back anytime!"
  end

  def invalid
    puts ""
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    puts "Im sorry. This is not an option."
    puts "Please try againg."
    puts ""
  end

  def display_cocktails_list
    CocktailsRecipesCli::Recipes.all.each.with_index do |c, i|
      puts "#{i+1}. #{c.name}"
    end
  end

end
