class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times  do puts "Woof!"
    end
  end

  def roll_over()
    puts "*rolls over*"
  end

  def dog_years(int)
    dy = int*7  
    puts dy
    dy
  end

  def play_dead()
 	puts "..."
 end

def initialize()
 puts "Initializing new puppy instance ..."
end

end

shepherd = Puppy.new
shepherd.fetch("ball")	
shepherd.speak(4)
shepherd.roll_over
shepherd.dog_years(5)
shepherd.play_dead


