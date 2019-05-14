require "./lib/htem_cli_relatives"
class HtemCli::Cli
  #class responsible for action of the users
  def run
    #create_article #create articles using article class
    list #list all the articles
    #menu #show the menu
 end

 def list
    HtemCli::Article.all
  end

end
