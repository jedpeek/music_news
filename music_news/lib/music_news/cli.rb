class MusicNews::CLI
  attr_accessor :stories

    def call
      puts "Welcome to todays top music stories"
      puts "from one of the worlds most trusted"
      puts "news sources."
      puts "Which story would you like to read? please enter number 1-3, list to see stories or type quit to leave."
      list_stories
      option
    end

  def list_stories
    @stories = MusicNews::Stories.scrape_top_3
    @stories.each.with_index(1){|story, i| puts "#{i}. #{story.headline}"}
  end

  def option
    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <= @stories.length
    puts  "#{@stories[input.to_i - 1].headline} by #{@stories[input.to_i - 1].author}"
    puts "#{@stories[input.to_i - 1].synopsis}"
    puts  "\n"
    puts "Would you like to read more?(y/n)"
     answer = gets.strip.downcase

     if answer == "y"
       puts "To read more go to: #{@stories[input.to_i - 1].url}"
       puts "To leave type: quit"
       puts "To list stories type: list"
        input = gets.chomp

        if input == "quit"
          quit
        elsif input == "list"
          list_stories
          option
          puts "\n"
        end

     elsif
       answer == "n"
       quit
     end

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
