class MusicNews::CLI
  attr_accessor :stories

    def call
      puts "Welcome to todays top music stories \n
  from one of the worlds most trusted \n
  news sources."
  list_stories
  option
  end

  def list_stories
    @stories = MusicNews::Stories.story
    @stories.each.with_index(1){|story, i| puts "#{i}. #{story.headline}"}
  end

  def option
    puts "Which story would you like to read? please enter number 1-3, list to see stories or type quit to leave."
    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <= @stories.length
    puts  @stories[input.to_i - 1].headline
  #    puts "1. Vinnie Paul, Pantera Drummer and Heavy Metal Innovator, Is Dead at 54"
  #  elsif input.to_i == 2
  #    @deals[1]
  #    puts "2. XXXTentacion’s Killers Tracked Him as He Entered Motorcycle Dealership"
  #  elsif input.to_i == 3
  #    @deals[2]
  #     puts "3. Rebecca Parris, Jazz Singer, Is Dead at 66"
    elsif
      input == "quit"
      quit
    elsif
      input == "list"
      list_stories
    else
      puts "Sorry, I don't understand."
      option
    end
  end

  def quit
    puts "Thanks for stopping by. KEEP ON ROCKING!"
  end


end
