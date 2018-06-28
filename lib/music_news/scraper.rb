class MusicNews::Scraper

  def self.scrape
    Nokogiri::HTML(open("https://www.npr.org/sections/music-news/"))
  end
end
