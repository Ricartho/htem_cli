require "./lib/htem_cli_relatives"
class HtemCli::Article
attr_accessor :name, :infos, :url_article, :description, :location, :price, :owner
#article class

def self.all
  HtemCli::Scraper.scrape_index_page
end



end
