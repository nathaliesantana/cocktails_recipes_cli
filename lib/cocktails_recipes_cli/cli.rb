class  CocktailsRecipesCli::Cli

  def welcome
    CocktailRecipesCli::Scraper.new("https://www.foodandwine.com/cocktail-recipes").scrape
    puts "Hi, Welcome to Reinvented Classic Cocktails"
    main_menu
  end


end
