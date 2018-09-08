class CocktailsRecipesCli::Scraper
  attr_accessor :cocktails_page

  def initialize(url)
   self.cocktails_page = url
  end
end

def scrape_homepage
  recipes = []
  site= Nokogiri::HTML(open(self.cocktails_page))

end
