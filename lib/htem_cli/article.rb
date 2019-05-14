require "./lib/htem_cli_relatives"
class HtemCli::Article
attr_accessor :name, :infos, :url_article, :description, :location, :price, :owner
#article class

def self.all

  puts "Welcome to Htem"
  puts "Here's the list of our available articles : "
   HtemCli::Scraper.scrape_index_page.each.with_index(1) do |el,index|
    puts "#{index} - #{el.name} - #{el.infos}"
  end
  return 
end



end
