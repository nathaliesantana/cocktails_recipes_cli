class CocktailsRecipesCli::Recipes
  attr_accessor :name, :ingredients, :instructions , :url

  @@all = []

  def initialize(hash)
   hash.each do |key, value|
     self.send("#{key}=",value)
    end
    @ingredients = []
    @instructions = instructions
  end


end
