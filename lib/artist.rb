class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@aLL = []
    #@@all << name 
  end 
  
  
  
  
  def self.all 
    @all 
  end
end 