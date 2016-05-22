#6.4 Solo Challenge: Designing and Implementing a Class
# by Forrest Wortham

############# Pseudo Code ############

#class Scuba_Diver
# attribute1: name
# attribute2: o2_level
# attribute3: depth

#method1: descend
  # changes the depth
#method2: check_o2_level
  # updates o2_level

#######################################

class Scuba_Diver

attr_reader :name
attr_accessor :o2_level, :depth

  def initialize
    @name = name
    @o2_level = o2_level
    @depth = depth
  end

end