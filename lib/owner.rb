require 'pry' 

class Owner
  attr_reader :name, :species
  
@@all = []
  
  def initialize (name)
    @name = name
    @species = "human"
   
    save 
  end   
  
  def say_species
    "I am a human."
  end   
  
  def self.all
    @@all
  end 
  
  def save
    @@all << self 
  end   
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all
    @@all.clear  
  end   
  
  def cats 
    @cats = []
    Cat.all.each {|cat_1| cat_1.owner == self}
  end   
  
end