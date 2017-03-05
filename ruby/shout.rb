module Shout
  # we'll put some methods here soon, but this code is fine for now!
    def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end

end

class Man
	include Shout
end

class Woman
	include Shout
end


man = Man.new
woman = Woman.new

p man.yell_angrily("ahh")
p woman.yell_angrily("bahh")
p man.yelling_happily("woo")
p woman.yelling_happily("wee")