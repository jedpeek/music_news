
class MusicNews::Stories
  attr_accessor :headline, :author, :url, :synopsis

    def self.scrape_stories
      stories = []
      doc = Nokogiri::HTML(open("https://www.npr.org/sections/music-news/"))
      i = 0

      while i < 10
      story = self.new

      story.headline = doc.css(".item .item-info h2.title")[i].text.strip #headline
      #story.author = doc.css("ol").css(".story-meta .byline")[i].text.strip.gsub("By ", '') #author
      story.url = doc.css(".item .item-info .teaser a")[i]['href'] #url to article
      story.synopsis = doc.css(".item .item-info .teaser")[i].text.strip #summary/synopsis

      stories << story
      i += 1
        end
      stories
    end
end
