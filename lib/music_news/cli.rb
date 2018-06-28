class MusicNews::CLI
  attr_accessor :stories

  def call
    MusicNews::Story.construct_stories
    puts "Welcome to todays top 10 music stories"
    puts "from one of the worlds most trusted"
    puts "news sources."
    puts "------------------"
    puts "Which story would you like to read? please enter number 1-10"
    puts "------------------"
    puts "Type list to see stories"
    puts "------------------"
    puts "Type quit to leave"
    puts "------------------"
    list_stories
    option
  end

  def list_stories
    @stories = MusicNews::Story.all
    @stories.each.with_index(1){|story, i| puts "#{i}. #{story.headline}"}
  end

  def option
    @input = gets.strip.downcase

    if @input == "quit"
       quit

    elsif @input == "list"
       list_stories
       option
       puts "\n"

   elsif @input.to_i.between?(1, @stories.length) #> 0 && input.to_i <= @stories.length
      puts  "#{@stories[@input.to_i - 1].headline}"
      puts "#{@stories[@input.to_i - 1].synopsis}"
      puts  "\n"
      puts "Would you like to read more?(y/n)"
       option_2
     else
       puts "Sorry, I don't understand. Please enter 1-10, list, or quit."
       option
     end
   end

  def option_2
    answer = gets.strip.downcase
    if answer == "y"
      puts "To read more go to: #{@stories[@input.to_i - 1].url}"
      puts "To leave type: quit"
      puts "To list stories type: list"
      option
    elsif answer == "n"
      list_stories
      option
      puts "\n"
    elsif answer == "quit"
      quit
    else
      puts "Sorry, I don't understand. Please enter y or n"
      option_2
    end
  end

  def quit
    puts "Thanks for stopping by. KEEP ON ROCKING!"
  end
end
