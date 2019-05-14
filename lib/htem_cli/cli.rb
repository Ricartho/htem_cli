require "./lib/htem_cli_relatives"
class HtemCli::Cli
  #class responsible for action of the users
  def run
    #create_article #create articles using article class
    list #list all the articles
    #menu #show the menu
 end

 def list
   puts "Welcome to Htem"
   puts "Here's the list of our available articles : "
   article =  HtemCli::Article.all
   article.each.with_index(1) do |article,index|
    puts "#{index} - #{article.name} - #{article.infos}"
    end
  end

end
