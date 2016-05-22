# 6.5 Modules
# by Forrest Wortham

############ Module ############
module Shout

  def self.yell_angrily(words)
    words + "!!!"+" :("
  end

  def self.yelling_happily(words)
    words + "!!!"+" :)"
  end
end

############ Driver Code ############
p Shout.yell_angrily("I hate you")
p Shout.yelling_happily("I love you")