require 'nokogiri'
require 'open-uri'
require 'pry'

class MusicNews::Scraper
    def scrape
    stories = []
    doc = Nokogiri::HTML(open("https://www.nytimes.com/section/arts/music"))

    stories << doc.css("ol").css(".story-body .headline")[1].text.strip #headline
    stories << doc.css("ol").css(".story-body .author")[1].text.strip.gsub("By ", '') #author
    stories << doc.css("ol").css(".story-body .headline a")[1]['href'] #url to article
    stories << doc.css("ol").css(".story-body p")[1].text.strip #summary/synopsis
    stories
    end
end
