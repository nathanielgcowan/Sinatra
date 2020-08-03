class EdenEvents::Event
  attr_accessor :name, :month, :key_intro
  @@all = []
  
  def initialize(name, month)
    @name= name
    @month = month
    #notify the month about the event
    add_to_month
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_month
    @month.events << self unless @month.events.include?(self)
  end
  
  def save
    @@all << self
  end
end