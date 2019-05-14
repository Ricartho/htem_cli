require 'open-uri'
require 'nokogiri'
class HtemCli::Scraper

 def self.scrape_index_page
  doc = Nokogiri::HTML(open("http://htem.000webhostapp.com/index.php"))
  articles_list = []

  doc.css(".portfolio").each do |el|
    article = HtemCli::Article.new
    article.name = el.css(".title-wrap h5").text
    article.infos = el.css(".subtitle-wrap p").text
    article.url_article = el.css("a").attribute("href").value

    articles_list.push(article)

  end
      articles_list
end
end
