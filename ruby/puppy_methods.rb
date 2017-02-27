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


class Kitten

  
  def lives_left(int)
    livesleft = 9-int  
    puts livesleft
    livesleft
  end

  def play(str)
 	puts "kitten stares at #{str}..."
 end

def initialize()
 puts "Initializing new kitten instance ..."
end

end

shepherd = Puppy.new
shepherd.fetch("ball")	
shepherd.speak(4)
shepherd.roll_over
shepherd.dog_years(5)
shepherd.play_dead

instances = []
i = 0
until i == 50 do
	puts i
	instances.push('cat' + i.to_s)
	puts instances[i]
	instances[i] = Kitten.new
	i += 1
end

instances.each do |kitty|
	kitty.play("yarn")
	kitty.lives_left(2)
end

#hobbes = Kitten.new
#hobbes.play("ball")
#hobbes.lives_left(4)
