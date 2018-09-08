class CocktailsRecipesCli::Scraper
  attr_accessor :cocktails_page

  def initialize(url)
   self.cocktails_page = url
  end
end
