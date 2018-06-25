require 'nokogiri'
require 'open-uri'
require 'pry'
class MusicNews::Stories
  attr_accessor :headline, :author, :url, :synopsis

    def self.scrape_top_3
    stories = []
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/arts/music"))
    i = 0
    while i < 3
    story = self.new

    story.headline = doc.css("ol").css(".story-body .headline")[i].text.strip #headline
    story.author = doc.css("ol").css(".story-body .author")[i].text.strip.gsub("By ", '') #author
    story.url = doc.css("ol").css(".story-body .headline a")[i]['href'] #url to article
    story.synopsis = doc.css("ol").css(".story-body p")[i].text.strip #summary/synopsis
    stories << story
    i += 1
    end
  stories
  end
end
