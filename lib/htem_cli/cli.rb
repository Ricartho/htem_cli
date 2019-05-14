require "./lib/htem_cli_relatives"
class HtemCli::Cli
  #class responsible for action of the users
  def run
    list #list all the articles
    menu #show the menu
 end

 def list
   puts "Welcome to Htem"
   puts "Here's the list of our available articles : "
   @article =  HtemCli::Article.all
   @article.each.with_index(1) do |article,index|
    puts "#{index} - #{article.name} - #{article.infos}"
    end
  end

  def menu
      choice = nil
      while choice != "exit"
      puts"Select a article by his number for more details,type List to see the list again or type Exit"
      choice = gets.strip.downcase

         if choice.to_i > 0 && choice.to_i <= @article.length
             resultat = @article[choice.to_i - 1]
             article_specific = HtemCli::Scraper.scrape_specific_article(resultat.url_article)
             sleep 1
             puts "Title : #{article_specific.name}"
             puts "Description : #{article_specific.description}"
             puts "Available at : #{article_specific.location}"
             puts "Price : #{article_specific.price}"
             puts "Seller infos : #{article_specific.owner}"

         elsif choice == "list"
           list
         elsif choice == "exit"
           exitApp
         else
            puts "Wrong option,Select a article by his number for more details,type List to see the list again or type Exit"
         end
      end
  end


    def exitApp
     puts "Loading..."
     sleep 2
     puts "CLI application closed"
    end
end
