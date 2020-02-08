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
    Cat.all.select {|cat_1| cat_1.owner == self} #select method
  end   
  
  def dogs  
    @dogs = []
    Dog.all.select {|dog_1| dog_1.owner == self} #select method
  end   
  
  def buy_cat(name)
    
  end   
  
end