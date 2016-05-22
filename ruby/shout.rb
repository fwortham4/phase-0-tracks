# 6.5 Modules - Release1
# by Forrest Wortham

# Release: 1
############ Module ############
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!"+" :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!"+" :)"
#   end
# end

############ Driver Code ############
# p Shout.yell_angrily("I hate you")
# p Shout.yelling_happily("I love you")

# Release: 3
############ Module ############
module Shout

  def yell_angrily(words)
    words + "!!!"+" :("
  end

  def yelling_happily(words)
    words + "!!!"+" :)"
  end
end

############ Classes ############
class Democrats
  include Shout
end

class Republicans
  include Shout
end

############ Driver Code ############
hillary = Democrats.new
p hillary.yell_angrily("I'm right")

donald = Republicans.new
p donald.yell_angrily("No, I'm right")