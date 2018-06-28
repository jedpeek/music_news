
class MusicNews::Story
  attr_accessor :headline, :author, :url, :synopsis
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.construct_stories
  doc = MusicNews::Scraper.scrape
    i = 0

    while i < 10
    story = self.new
    story.headline = doc.css(".item .item-info h2.title")[i].text.strip #headline
    story.url = doc.css(".item .item-info .teaser a")[i]['href'] #url to article
    story.synopsis = doc.css(".item .item-info .teaser")[i].text.strip #summary/synopsis
    story.save
    i += 1
      end
    @@all
  end
end
