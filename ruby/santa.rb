class Santa

attr_reader :ethnicity
attr_accessor :gender, :age

def speak()
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie)
	puts "That was a good #{cookie}!" 
end

def initialize(gender, ethnicity)
 	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
end

def celebrate_birthday()
	@age += 1
end


def get_mad_at(reindeer)
	@reindeer_ranking.delete(reindeer)
	@reindeer_ranking << reindeer
end


end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each { |santa| santa.age = rand(141)  }
santas.each { |santa| puts "Santa is #{santa.age} years old. Santa is #{santa.ethnicity}. Santa is #{santa.gender}"	}