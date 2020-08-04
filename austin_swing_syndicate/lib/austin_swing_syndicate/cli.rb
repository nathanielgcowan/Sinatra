class AustinSwingSyndicate::CLI 
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    puts "\n#{@@grn}Welcome to Austin Swing Syndicate!!#{@@white}\n"
    @input = ""
    until @input == "exit"
      get_events
      list_months
      get_user_month
      what_next
    end 
    goodbye
  end
  
  def get_events
    @months = AustinSwingSyndicate::Month.all
  end
  
  def list_months
    puts 'Choose a month to see events.'
    @months.each.with_index(1) do |month, index| 
      puts "#{index}. #{month.name}"
    end
  end
  
  def get_user_month
    chosen_month = gets.strip.to_i
    show_events_for(chosen_month) if valid_input(chosen_month, @months)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def show_events_for(chosen_month)
    month = @months[chosen_month - 1]
    month.get_events
    puts "Here are events for #{month.name}"
    month.events.each.with_index(1) do |event, idx|
      puts "#{idx}. #{event.name}"
    end
    get_user_event(month)
  end
  
  def get_user_event(month)
    puts "Choose an event to see more details."
    input = gets.strip
    event = month.events[input.to_i - 1]
    event.get_event_details
    show_event_details(event)
  end
  
  def show_event_details(event)
    puts event.name
    event.key_info.each {|i| puts "- #{i}"}
  end 
  
  def what_next
    puts "Are you done? Type 'exit' to exit or hit any key to see more events."
    @input = gets.strip
  end 
  
  def goodbye
    puts "Enjoy Eden!"
  end 
end