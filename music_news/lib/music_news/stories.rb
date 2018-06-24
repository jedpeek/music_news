class MusicNews::Stories
  attr_accessor :headline, :author, :url, :synopsis

  def self.story
    #puts "1. Vinnie Paul, Pantera Drummer and Heavy Metal Innovator, Is Dead at 54"
    #puts "2. XXXTentacion’s Killers Tracked Him as He Entered Motorcycle Dealership"
    #puts "3. Rebecca Parris, Jazz Singer, Is Dead at 66"
    stories = []
    story_1 = self.new
    story_1.headline = "Vinnie Paul, Pantera Drummer and Heavy Metal Innovator, Is Dead at 54"
    story_1.author = "Mihiri Zaveri"
    story_1.synopsis = ""
    story_1.url = "https://www.nytimes.com/2018/06/23/arts/music/vinnie-paul-dead.html?rref=collection%2Fsectioncollection%2Fmusic&action=click&contentCollection=music&region=stream&module=stream_unit&version=latest&contentPlacement=1&pgtype=sectionfront"
    stories << story_1

    story_2 = self.new
    story_2.headline = "XXXTentacion’s Killers Tracked Him as He Entered Motorcycle Dealership"
    story_2.author = "Ben Sisario"
    story_2.synopsis = ""
    story_2.url = "https://www.nytimes.com/2018/06/22/arts/music/xxxtentacions-killers-charged.html?rref=collection%2Fsectioncollection%2Fmusic&action=click&contentCollection=music&region=stream&module=stream_unit&version=latest&contentPlacement=2&pgtype=sectionfront"
    stories << story_2

    story_3 = self.new
    story_3.headline = "Rebecca Parris, Jazz Singer, Is Dead at 66"
    story_3.author = "Andrew R. Chow"
    story_3.synopsis = ""
    story_3.url = "https://www.nytimes.com/2018/06/22/obituaries/rebecca-parris-jazz-singer-is-dead-at-66.html?rref=collection%2Fsectioncollection%2Fmusic&action=click&contentCollection=music&region=stream&module=stream_unit&version=latest&contentPlacement=3&pgtype=sectionfront"
    stories << story_3

    stories
  end

end
