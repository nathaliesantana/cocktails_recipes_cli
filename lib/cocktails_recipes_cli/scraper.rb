class CocktailsRecipesCli::Scraper
  attr_accessor :cocktails_page

  def initialize(url)
   self.cocktails_page = url
  end
end

def scrape_homepage
  recipes = []
  site= Nokogiri::HTML(open(self.cocktails_page))
  site.css("li.rsw-teaser").each do |li|
    recipe_hash = {}
    recipe_hash[:name]= li.css("h3").text
    recipe_hash[:url]= "https://www.foodandwine.com#{li.css("a").attribute('href').text}"
    recipes.push(recipe_hash)
  end
  CocktailRecipes::Recipes.create_from_array(recipes)

end
