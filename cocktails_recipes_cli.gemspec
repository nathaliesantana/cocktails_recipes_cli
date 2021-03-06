require_relative './lib/cocktails_recipes_cli/version'

Gem::Specification.new do |s|
  s.name        = 'CocktailsRecipes'
  s.version     = CocktailsRecipesCli::VERSION
  s.date        = '2018-09-05'
  s.summary     = "Reinvented Classic Cocktails"
  s.description = "Displays a list of Classic cocktails recipes with a twist"
  s.authors     = ["Nathalie Santana"]
  s.email       = 'nathalie.scruz@gmail.com'
  s.files       = ["lib/cocktails_recipes_cli.rb", "lib/cocktails_recipes_cli/cli.rb", "lib/cocktails_recipes_cli/scraper.rb", "lib/cocktails_recipes_cli/recipes.rb",  "lib/cocktails_recipes_cli/version.rb"]

  s.license     = 'MIT'
  s.executables << 'CocktailsRecipes'

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 0"
  s.add_development_dependency "nokogiri", "~>1.8", ">= 1.8.2"
  s.add_development_dependency "pry", "~> 0"
end
