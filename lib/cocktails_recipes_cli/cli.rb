class  CocktailsRecipesCli::Cli

  def welcome
    CocktailRecipesCli::Scraper.new("https://www.foodandwine.com/cocktail-recipes").scrape
    puts "Hi, Welcome to Reinvented Classic Cocktails"
    main_menu
  end

  def main_menu
    puts "Here is a list of all of our cocktails:"
    display_cocktails_list
    puts "Type the number of the cocktail you would like to learn."
    input = gets.strip.to_i
  end



end
