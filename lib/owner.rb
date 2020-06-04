class Owner
  
    attr_reader :name, :species
    

    @@all = []
    
   def initialize(name=nil)
     @name = name
     @species = "human"
     @@all << self
   
   end

  def say_species
    @species 
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

def cats 
  Cat.all.select { |cat| cat.owner  == self}
end

def dogs 
  Dog.all.select { |dog| dog.owner  == self}
end

def buy_cat(cat_name)
  Cat.new(cat_name, self)
end

def buy_dog(dog_name)

  Dog.new(dog_name, self)

end 

def walk_dogs
  self.dogs.map { |dog| dog.mood = "happy"}
end

def feed_cats
  self.cats.map { |cat| cat.mood = "happy"}
end

def sell_pets
  self.cats.map do |cat|
    cat.owner = nil
    cat.mood = "nervous"
  end

  self.dogs.map do |dog|
    dog.owner = nil
    dog.mood = "nervous"
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end




end

